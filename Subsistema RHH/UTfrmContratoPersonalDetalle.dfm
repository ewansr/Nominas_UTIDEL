﻿object FrmContratoPersonalDetalle: TFrmContratoPersonalDetalle
  Left = 0
  Top = 0
  Caption = 'Contratar personal'
  ClientHeight = 597
  ClientWidth = 814
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
  object Splitter1: TSplitter
    Left = 0
    Top = 147
    Width = 814
    Height = 6
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 140
    ExplicitWidth = 742
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 147
    Align = alClient
    Enabled = False
    TabOrder = 0
    object DBAdvEdit2: TDBAdvEdit
      Left = 392
      Top = 39
      Width = 123
      Height = 21
      LabelCaption = 'CURP:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 1
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'curp'
      DataSource = DsPersonal
    end
    object DBAdvEdit3: TDBAdvEdit
      Left = 606
      Top = 38
      Width = 130
      Height = 21
      LabelCaption = 'No. IMSS:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 2
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'numerosegurosocial'
      DataSource = DsPersonal
    end
    object DBAdvEdit4: TDBAdvEdit
      Left = 180
      Top = 39
      Width = 159
      Height = 21
      LabelCaption = 'RFC:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 0
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'rfc'
      DataSource = DsPersonal
    end
    object DBAdvEdit5: TDBAdvEdit
      Left = 180
      Top = 62
      Width = 159
      Height = 21
      LabelCaption = 'SEXO:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 3
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'sexo'
      DataSource = DsPersonal
    end
    object PnlNombre: TPanel
      Left = 1
      Top = 1
      Width = 812
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object JvDBImage1: TJvDBImage
      Left = 8
      Top = 36
      Width = 113
      Height = 111
      DataField = 'imagen'
      DataSource = DsPersonal
      Stretch = True
      TabOrder = 13
    end
    object DBAdvEdit1: TDBAdvEdit
      Left = 606
      Top = 62
      Width = 130
      Height = 21
      LabelCaption = 'FECHA DE ALTA:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 5
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'fechaalta'
      DataSource = DsPersonal
    end
    object DBAdvEdit6: TDBAdvEdit
      Left = 394
      Top = 62
      Width = 121
      Height = 21
      LabelCaption = 'E. CIVIL:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 4
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'estadocivil'
      DataSource = DsPersonal
    end
    object DBAdvEdit7: TDBAdvEdit
      Left = 180
      Top = 85
      Width = 159
      Height = 21
      LabelCaption = 'TEL:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 6
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'fechaalta'
      DataSource = DsPersonal
    end
    object DBAdvEdit8: TDBAdvEdit
      Left = 180
      Top = 109
      Width = 121
      Height = 21
      LabelCaption = 'CIUDAD:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 9
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'ciudad'
      DataSource = DsPersonal
    end
    object DBAdvEdit9: TDBAdvEdit
      Left = 606
      Top = 109
      Width = 130
      Height = 21
      LabelCaption = 'ESTADO:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 11
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'estado'
      DataSource = DsPersonal
    end
    object DBAdvEdit10: TDBAdvEdit
      Left = 394
      Top = 85
      Width = 121
      Height = 21
      LabelCaption = 'CALLE:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 7
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'calle'
      DataSource = DsPersonal
    end
    object DBAdvEdit11: TDBAdvEdit
      Left = 385
      Top = 109
      Width = 130
      Height = 21
      LabelCaption = 'MUNICIPIO:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 10
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'municipio'
      DataSource = DsPersonal
    end
    object DBAdvEdit12: TDBAdvEdit
      Left = 606
      Top = 85
      Width = 130
      Height = 21
      LabelCaption = 'COLONIA:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clBtnFace
      Enabled = True
      ParentColor = True
      TabOrder = 8
      Text = 'DBAdvEdit1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'colonia'
      DataSource = DsPersonal
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 153
    Width = 814
    Height = 387
    Align = alBottom
    TabOrder = 1
    object AdvSmoothTabPager1: TAdvSmoothTabPager
      Left = 1
      Top = 1
      Width = 812
      Height = 385
      Align = alClient
      ActivePage = AdvSmoothTabPager11
      TabSettings.StartMargin = 4
      TabReorder = False
      TabOrder = 0
      object AdvSmoothTabPager11: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 810
        Height = 357
        Caption = 'Detalle de la plaza'
        PageAppearance.Color = 16773091
        PageAppearance.ColorTo = 16768452
        PageAppearance.ColorMirror = 16765357
        PageAppearance.ColorMirrorTo = 16767936
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = 16765357
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Appearance.Font.Color = clWindowText
        TabAppearance.Appearance.Font.Height = -11
        TabAppearance.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Appearance.Font.Style = []
        TabAppearance.Status.Caption = '0'
        TabAppearance.Status.Appearance.Fill.Color = clRed
        TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
        TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
        TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
        TabAppearance.Status.Appearance.Fill.BorderColor = clGray
        TabAppearance.Status.Appearance.Fill.Rounding = 0
        TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
        TabAppearance.Status.Appearance.Fill.Glow = gmNone
        TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Status.Appearance.Font.Color = clWhite
        TabAppearance.Status.Appearance.Font.Height = -11
        TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Status.Appearance.Font.Style = []
        TabAppearance.BevelColor = 16765357
        TabAppearance.BevelColorDown = 16640730
        TabAppearance.BevelColorSelected = 16640730
        TabAppearance.BevelColorHot = 16640730
        TabAppearance.BevelColorDisabled = 16640730
        TabAppearance.Color = 16773091
        TabAppearance.ColorDown = 11196927
        TabAppearance.ColorDisabled = 16765357
        object Panel8: TPanel
          Left = 2
          Top = 2
          Width = 806
          Height = 353
          Align = alClient
          TabOrder = 0
          OnClick = Panel8Click
          object PnlDatosContratacion: TPanel
            Left = 1
            Top = 1
            Width = 760
            Height = 351
            Align = alLeft
            TabOrder = 1
            object GrbAbordo: TGroupBox
              Left = 1
              Top = 119
              Width = 758
              Height = 48
              Align = alTop
              Caption = 'TRABAJO A BORDO:'
              TabOrder = 0
              object GroupBox2: TGroupBox
                Left = 536
                Top = 8
                Width = 194
                Height = 34
                Caption = 'DIAS:'
                TabOrder = 1
                object EdtDescanso: TAdvEdit
                  Tag = 99
                  Left = 157
                  Top = 11
                  Width = 34
                  Height = 21
                  LabelCaption = 'DESCANSO:'
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  Lookup.Separator = ';'
                  Color = clBtnFace
                  Enabled = True
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 1
                  Text = '14'
                  Visible = True
                  OnExit = EdtDescansoExit
                  Version = '2.9.0.0'
                end
                object EdtTrabajo: TAdvEdit
                  Tag = 99
                  Left = 57
                  Top = 11
                  Width = 33
                  Height = 21
                  LabelCaption = 'TRABAJO:'
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  Lookup.Separator = ';'
                  Color = clBtnFace
                  Enabled = True
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 0
                  Text = '14'
                  Visible = True
                  OnExit = EdtTrabajoExit
                  Version = '2.9.0.0'
                end
              end
              object CmbGuardias: TAdvComboBox
                Left = 99
                Top = 21
                Width = 262
                Height = 21
                Color = clWindow
                Version = '1.3.2.2'
                Visible = True
                Style = csDropDownList
                DropWidth = 0
                Enabled = True
                ItemIndex = -1
                LabelCaption = 'GUARDIAS:'
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                TabOrder = 0
                OnEnter = CmbGuardiasEnter
                OnSelect = CmbGuardiasSelect
              end
            end
            object GroupBox1: TGroupBox
              Left = 1
              Top = 1
              Width = 758
              Height = 81
              Align = alTop
              Caption = 'NIVEL ORGANIZACIONAL:'
              TabOrder = 1
              object Image1: TImage
                Left = 736
                Top = 44
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
              object CmbOrganizacion: TAdvComboBox
                Left = 99
                Top = 25
                Width = 628
                Height = 21
                Color = clWindow
                Version = '1.3.2.2'
                Visible = True
                Style = csDropDownList
                DropWidth = 0
                Enabled = True
                ItemIndex = -1
                LabelCaption = 'ORGANIZACI'#211'N:'
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnMouseEnter = CmbOrganizacionMouseEnter
                OnSelect = CmbOrganizacionSelect
              end
              object CmbORganizacion2: TAdvComboBox
                Left = 99
                Top = 52
                Width = 628
                Height = 21
                Color = clWindow
                Version = '1.3.2.2'
                Visible = True
                Style = csDropDownList
                DropWidth = 0
                Enabled = True
                ItemIndex = -1
                LabelCaption = 'ORGANIZACI'#211'N:'
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                TabOrder = 1
                OnSelect = CmbORganizacion2Select
              end
            end
            object GrpSalarios: TGroupBox
              Left = 1
              Top = 203
              Width = 758
              Height = 38
              Align = alTop
              TabOrder = 2
              object Image2: TImage
                Left = 736
                Top = 12
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
              object CmbRangosS: TAdvComboBox
                Left = 99
                Top = 9
                Width = 133
                Height = 21
                Color = clWindow
                Version = '1.3.2.2'
                Visible = True
                Style = csDropDownList
                DropWidth = 0
                Enabled = True
                ItemIndex = -1
                LabelCaption = 'RANGOS:'
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                TabOrder = 0
                OnSelect = CmbRangosSSelect
              end
              object CmbSalarios: TAdvComboBox
                Left = 456
                Top = 9
                Width = 274
                Height = 21
                Color = clWindow
                Version = '1.3.2.2'
                Visible = True
                Style = csDropDownList
                DropWidth = 0
                Enabled = True
                ItemIndex = -1
                LabelCaption = 'SALARIOS:'
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                TabOrder = 1
                OnSelect = CmbSalariosSelect
              end
            end
            object GrpTipoNomFecha: TGroupBox
              Left = 1
              Top = 82
              Width = 758
              Height = 37
              Align = alTop
              TabOrder = 3
              object Image3: TImage
                Left = 368
                Top = 15
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
              object Image5: TImage
                Left = 736
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
              object Label5: TLabel
                Left = 550
                Top = 10
                Width = 85
                Height = 13
                Caption = 'CONTRATACI'#211'N:'
              end
              object Label7: TLabel
                Left = 5
                Top = 10
                Width = 88
                Height = 13
                Caption = 'TIPO DE NOMINA:'
              end
              object LCbbTipoNomina: TDBLookupComboBox
                Left = 99
                Top = 10
                Width = 263
                Height = 21
                DataField = 'IdTipoNomina'
                DataSource = DsImss
                KeyField = 'IdTipoNomina'
                ListField = 'titulo'
                TabOrder = 0
                OnClick = LCbbTipoNominaClick
              end
              object DtFechaContratación: TJvDBDatePickerEdit
                Left = 641
                Top = 10
                Width = 89
                Height = 21
                AllowNoDate = False
                DataField = 'FechaMovimiento'
                DataSource = DsImss
                TabOrder = 1
              end
            end
            object GrpCargoDepto: TGroupBox
              Left = 1
              Top = 167
              Width = 758
              Height = 36
              Align = alTop
              TabOrder = 4
              object Image4: TImage
                Left = 736
                Top = 14
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
                Left = 368
                Top = 10
                Width = 85
                Height = 13
                Caption = 'DEPARTAMENTO:'
              end
              object Label2: TLabel
                Left = 53
                Top = 10
                Width = 40
                Height = 13
                Caption = 'CARGO:'
              end
              object LCbbDepartamento: TDBLookupComboBox
                Left = 456
                Top = 9
                Width = 274
                Height = 21
                DataField = 'IdDepartamento'
                DataSource = DsImss
                KeyField = 'iddepartamento'
                ListField = 'titulodepartamento'
                ReadOnly = True
                TabOrder = 1
              end
              object LCbbCargo: TDBLookupComboBox
                Left = 99
                Top = 10
                Width = 262
                Height = 21
                DataField = 'IdCargo'
                DataSource = DsImss
                KeyField = 'idcargo'
                ListField = 'titulocargo'
                TabOrder = 0
                OnClick = LCbbCargoClick
              end
            end
            object GrpSDiarioIntegrado: TGroupBox
              Left = 1
              Top = 241
              Width = 758
              Height = 103
              Align = alTop
              TabOrder = 5
              object Label10: TLabel
                Left = 19
                Top = 60
                Width = 76
                Height = 13
                Caption = 'OBSERVACI'#211'N:'
              end
              object MObservacion: TDBMemo
                Left = 101
                Top = 60
                Width = 629
                Height = 39
                DataField = 'observaciones'
                TabOrder = 3
              end
              object EdtSalarioIntegrado: TDBAdvEdit
                Tag = 99
                Left = 456
                Top = 9
                Width = 274
                Height = 21
                EditAlign = eaRight
                EditType = etFloat
                DisabledColor = clBackground
                Precision = 2
                LabelCaption = 'SALARIO INTEGRADO:'
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                Lookup.Separator = ';'
                Color = clBtnFace
                Enabled = True
                ParentColor = True
                ReadOnly = True
                TabOrder = 1
                Text = '0.00'
                Visible = True
                OnExit = EdtSalarioIntegradoExit
                Version = '2.9.0.0'
                DataField = 'salariointegrado'
                DataSource = DsImss
              end
              object EdtSalarioDiario: TDBAdvEdit
                Tag = 99
                Left = 99
                Top = 6
                Width = 133
                Height = 21
                EditAlign = eaRight
                EditType = etFloat
                Precision = 2
                LabelCaption = 'SALARIO DIARIO:'
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                Lookup.Separator = ';'
                Color = clWindow
                Enabled = True
                TabOrder = 0
                Text = '0.00'
                Visible = True
                OnChange = EdtSalarioDiarioChange
                OnEnter = EdtSalarioDiarioEnter
                OnExit = EdtSalarioDiarioExit
                Version = '2.9.0.0'
                DataField = 'salariodiario'
                DataSource = DsImss
              end
              object AdvDBComboBox1: TAdvDBComboBox
                Left = 99
                Top = 33
                Width = 62
                Height = 21
                Color = clWindow
                Version = '1.0.1.1'
                Visible = True
                Style = csDropDownList
                DataField = 'jornada'
                DataSource = DsImss
                DropWidth = 0
                Enabled = True
                ItemIndex = 7
                Items.Strings = (
                  '1 Hrs'
                  '2 Hrs'
                  '3 Hrs'
                  '4 Hrs'
                  '5 Hrs'
                  '6 Hrs'
                  '7 Hrs'
                  '8 Hrs'
                  '9 Hrs'
                  '10 Hrs'
                  '11 Hrs'
                  '12 Hrs'
                  '13 Hrs'
                  '14 Hrs'
                  '15 Hrs'
                  '16 Hrs'
                  '17 Hrs'
                  '18 Hrs'
                  '19 Hrs'
                  '20 Hrs'
                  '21 Hrs'
                  '22 Hrs'
                  '23 Hrs'
                  '24 Hrs')
                Items.StoredStrings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10'
                  '11'
                  '12'
                  '13'
                  '14'
                  '15'
                  '16'
                  '17'
                  '18'
                  '19'
                  '20'
                  '21'
                  '22'
                  '23'
                  '24')
                LabelCaption = 'JORNADA:'
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                TabOrder = 2
              end
              object CbCobraFestivos: TCheckBox
                Left = 456
                Top = 36
                Width = 189
                Height = 17
                Caption = 'COBRA FESTIVOS.'
                TabOrder = 4
              end
            end
          end
          object pnlSalarioIntegrado: TPanel
            Left = 780
            Top = 1
            Width = 25
            Height = 351
            Align = alRight
            TabOrder = 0
            object Panel6: TPanel
              Left = 1
              Top = 1
              Width = 26
              Height = 349
              Align = alLeft
              TabOrder = 0
              object LblVerSalario: TJvLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 17
                Height = 170
                Cursor = crHandPoint
                Align = alLeft
                Alignment = taCenter
                Caption = '-----VER SALARIO INTEGRADO-----'
                Layout = tlCenter
                Transparent = True
                OnClick = LblVerSalarioClick
                Angle = 90
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
            end
            object GridSalarioIntegrado: TNextGrid
              Left = 27
              Top = 1
              Width = 0
              Height = 349
              Align = alClient
              TabOrder = 1
              TabStop = True
              OnCellColoring = GridSalarioIntegradoCellColoring
              object NxTextColumn1: TNxTextColumn
                DefaultWidth = 130
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'CONCEPTO'
                ParentFont = False
                Position = 0
                SortType = stAlphabetic
                Width = 130
              end
              object NxTextColumn2: TNxTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'VALOR'
                ParentFont = False
                Position = 1
                SortType = stAlphabetic
              end
              object NxTextColumn4: TNxTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'DIARIO'
                ParentFont = False
                Position = 2
                SortType = stAlphabetic
              end
              object NxTextColumn6: TNxTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'SUB TOTAL'
                ParentFont = False
                Position = 3
                SortType = stAlphabetic
              end
              object NxTextColumn7: TNxTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'TOTAL'
                ParentFont = False
                Position = 4
                SortType = stAlphabetic
              end
            end
          end
        end
      end
      object AdvSmoothTabPage1: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 810
        Height = 357
        Caption = 'Documento de contrato'
        PageAppearance.Color = 16773091
        PageAppearance.ColorTo = 16768452
        PageAppearance.ColorMirror = 16765357
        PageAppearance.ColorMirrorTo = 16767936
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = 16765357
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Appearance.Font.Color = clWindowText
        TabAppearance.Appearance.Font.Height = -11
        TabAppearance.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Appearance.Font.Style = []
        TabAppearance.Status.Caption = '0'
        TabAppearance.Status.Appearance.Fill.Color = clRed
        TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
        TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
        TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
        TabAppearance.Status.Appearance.Fill.BorderColor = clGray
        TabAppearance.Status.Appearance.Fill.Rounding = 0
        TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
        TabAppearance.Status.Appearance.Fill.Glow = gmNone
        TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Status.Appearance.Font.Color = clWhite
        TabAppearance.Status.Appearance.Font.Height = -11
        TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Status.Appearance.Font.Style = []
        TabAppearance.BevelColor = 16765357
        TabAppearance.BevelColorDown = 16640730
        TabAppearance.BevelColorSelected = 16640730
        TabAppearance.BevelColorHot = 16640730
        TabAppearance.BevelColorDisabled = 16640730
        TabAppearance.Color = 16773091
        TabAppearance.ColorDown = 11196927
        TabAppearance.ColorDisabled = 16765357
        object PnlBtnPdf: TPanel
          Left = 2
          Top = 2
          Width = 806
          Height = 22
          Align = alTop
          TabOrder = 0
          object Button1: TButton
            Left = 1
            Top = 1
            Width = 102
            Height = 20
            Align = alLeft
            Caption = 'Subir documento'
            TabOrder = 0
            OnClick = Button1Click
          end
        end
        object PnlPdf: TPanel
          Left = 2
          Top = 24
          Width = 806
          Height = 331
          Align = alClient
          TabOrder = 1
        end
      end
      object AdvSmoothTabPage2: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 810
        Height = 357
        Caption = 'Documento de autorizaci'#243'n'
        PageAppearance.Color = 16773091
        PageAppearance.ColorTo = 16768452
        PageAppearance.ColorMirror = 16765357
        PageAppearance.ColorMirrorTo = 16767936
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = 16765357
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Appearance.Font.Color = clWindowText
        TabAppearance.Appearance.Font.Height = -11
        TabAppearance.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Appearance.Font.Style = []
        TabAppearance.Status.Caption = '0'
        TabAppearance.Status.Appearance.Fill.Color = clRed
        TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
        TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
        TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
        TabAppearance.Status.Appearance.Fill.BorderColor = clGray
        TabAppearance.Status.Appearance.Fill.Rounding = 0
        TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
        TabAppearance.Status.Appearance.Fill.Glow = gmNone
        TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Status.Appearance.Font.Color = clWhite
        TabAppearance.Status.Appearance.Font.Height = -11
        TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Status.Appearance.Font.Style = []
        TabAppearance.BevelColor = 16765357
        TabAppearance.BevelColorDown = 16640730
        TabAppearance.BevelColorSelected = 16640730
        TabAppearance.BevelColorHot = 16640730
        TabAppearance.BevelColorDisabled = 16640730
        TabAppearance.Color = 16773091
        TabAppearance.ColorDown = 11196927
        TabAppearance.ColorDisabled = 16765357
        object PnlPdf2: TPanel
          Left = 2
          Top = 24
          Width = 806
          Height = 331
          Align = alClient
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 2
          Top = 2
          Width = 806
          Height = 22
          Align = alTop
          TabOrder = 1
          object Button2: TButton
            Left = 1
            Top = 1
            Width = 94
            Height = 20
            Align = alLeft
            Caption = 'Subir documento'
            TabOrder = 0
            OnClick = Button2Click
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 540
    Width = 814
    Height = 57
    Align = alBottom
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 55
      Height = 55
      Align = alLeft
      TabOrder = 0
      object BtnRec: TAdvShapeButton
        Left = -3
        Top = 5
        Width = 55
        Height = 46
        Hint = 'Haga click aqu'#237' para Guardar la captura realizada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Layout = plPictureOnTop
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          396943435050686F746F73686F70204943432070726F66696C65000048C79D96
          775454D71687CFBD777AA1CD30D2197A932E3080F42E201D045118660618CA00
          C30C4D6C88A840441111014590A08001A3A148AC88622128A8600F4810506230
          8AA8A86446D64A7C7979EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E
          2F059602209927E0077A38D3578547D0B1FD0006788001A6003059E9A9BE41EE
          C140242F37177ABAC809FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000
          C85FC4E66C4E3A4BC4F9224ECA14A48AED3322A6C6248A194689992F4A50C472
          628E5BE4A59F7D16D951CCEC641E5BC4E29C53D9C96C31F788787B86902362C4
          47C405195C4EA6886F8B58334998CC15F15B716C3287990E008A24B60B38AC78
          119B8898C40F0E7411F1720070A4B82F38E60B1670B204E243B9A4A466F3B971
          F102BA2E4B8F6E6A6DCDA07B723293380281A13F9395C8E4B3E92E29C9A94C5E
          36008B67FE2C19716DE9A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22
          BD0AF8DC3388D6F787EDAFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF
          0F9BE6210024457D6BBFF1C57968E279891708526D8C8D3333338DB81C9691B8
          A0BFEB7F3AFC0D7DF13D23F176BF9787EECA89650A93047471DD58294929423E
          3D3D95C9E2D00DFF3CC4FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851
          BB796CAE809BC2A37379FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002
          E4E73E80A21001127950DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE70
          89F891CE8DFB1CE712184C6709F9198B6BE26B09D08000240115C80315A00174
          8121300356C016380237B002F88160100ED602168807C9800F32412ED80C0A40
          11D805F6824A5003EA41236801274007380D2E80CBE03AB809EE800760048C83
          E76006BC01F310046121324481E42155480B3280CC2006640FB9413E5020140E
          454371100F1242B9D016A8082A852AA15AA811FA163A055D80AE4203D03D6814
          9A827E85DEC3084C82A9B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F0
          4EB802AE838FC1EDF005F83A7C071E819FC3B3084088080D51430C1106E282F8
          2111482CC24736208548395287B4205D482F720B1941A69177280C8A82A2A30C
          51B6284F54088A854A436D4015A32A514751EDA81ED42DD4286A06F5094D462B
          A10DD036682FF42A741C3A135D802E4737A0DBD097D077D0E3E837180C8686D1
          C158613C31E19804CC3A4C31E600A615731E338019C3CC62B15879AC01D60EEB
          87656205D802EC7EEC31EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872B
          C735E1CEE2067113B879BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F
          274813740876846042026133A182D042B844784878452412D589D6C4002297B8
          8958413C4EBC421C25BE23C990F4492EA4489290B4937484749E748FF48A4C26
          6B931DC91164017927B9917C91FC98FC5682226124E125C196D8285125D12E31
          28F142122FA925E924B9563247B25CF2A4E40DC96929BC94B6948B14536A8354
          95D429A961A959698AB4A9B49F74B274B17493F455E94919AC8CB68C9B0C5B26
          5FE6B0CC4599310A42D1A0B85058942D947ACA25CA381543D5A17A5113A845D4
          6FA8FDD4195919D965B2A1B259B255B267644768084D9BE6454BA295D04ED086
          68EF97282F715AC259B26349CB92C12573728A728E721CB942B956B93B72EFE5
          E9F26EF289F2BBE53BE41F29A014F415021432150E2A5C529856A42ADA2AB214
          0B154F28DE578295F4950295D6291D56EA539A555651F6504E55DEAF7C51795A
          85A6E2A892A052A67256654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE8
          3DF4193525354F35A15AAD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A3
          4CA35B63465355D3573357B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B
          9B7687F6A48E9C8E974E8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF
          80DE4D7D58DF423F5EBF4AFF86016C6069C035386030B014BDD47A296F69DDD2
          614392A193618661B3E1A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F26
          16264926F5260F4C654C5798E6997699FE6AA66FC632AB32BB6D4E367737DF68
          DE69FE7299C132CEB283CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E5969
          5A455B555B0D33A80C7F4631E38A35DADAD97AA3F569EB77369636029B1336BF
          D81ADA26DA36D94E2ED759CE595EBF7CCC4EDD8E69576B37624FB78FB63F643F
          E2A0E6C074A87378E2A8E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63C
          E762E3B2DEE5BC2BE2EAE15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3
          C2639DC7794FB4A7B7E76ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC
          2BBD9FF8E8FBF07DBA7C61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2
          D7F14FF3FF3E0013E01F5015F034D0343037B03788121415D414F426D839B824
          F841886E8830A43B54323432B431742ECC35AC346C6495F1AAF5ABAE872B8473
          C33B23B011A1110D11B3ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D6
          26AD3D132519C58C3A198D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC
          7DACE76C4776197B8A63C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9F
          E6BA702BB92F133C136A12E612FD128F242E248525B526E392A3934FF1647889
          BC9E149594AC94815483D482D491349BB4BD69337C6F7E433A94BE26BD534015
          FD4CF50975855B85A319F61955196F3343334F664967F1B2FAB2F5B377644FE4
          B8E77CBD0EB58EB5AE3B572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38
          BEC963D3D1CD84CD899B7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B
          0B240AF805C3DB6CB7D56C476DE76EEFDF61BE63FF8E4F85ECC26B452645E545
          1F8A59C5D7BE32FDAAE2AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A9
          74694EE9D81EDF3DED65F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7
          A273BFE6FE5DFB3F54C657DEA972AE6AAD56AADE513D77807D60F0A0E3C1961A
          E59AA29AF787B887EED67AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D
          0D0A0D450D1F8FF08E8C1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBB
          F98DEB379D2D862DB5ADB4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB
          775ADF55B751DA0ADBA1F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6F
          F4FD91D36AA7ABCEC89E29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8E
          EA7E7071D5C5DB3D013DFD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97A
          EA1AE35AC775CBEBED7D167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB
          07CE0E3A0C5EB8E57AEBF26DAFDBD7EFACBC333014327477387278E42EFBEEE4
          BDA47B2FEF67DC9F7FB0E921FA61E123A947E58F951ED7FDA8F763EB88E5C899
          51D7D1BE27414F1E8CB1C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7
          DCA76E3E5BFD6CFC79EAF3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE
          92FF72E1D7E257F2AF8EBC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778
          D7FB3EECFDC47CE607EC878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FBE2E6
          1DC2000000097048597300002E2200002E2201AAE2DD920000071F4944415458
          47BDD70B505C5719C0F185AAAD8DC98CADDA8C5A754C3BBE52E8184D8275746A
          4BA7AD696DB5A65163A366804008090163B0A6B40602041243436C9A81544308
          8FF008600A2C8DA686B08447521EA9E511CA739700C36BB9F7EE65D93DFECFB2
          8BBB2D7D6486BA33BFF9CE9E73CF3DDF3D7BF7DC73FD0C5E1FA7DD7EBFC1DF7F
          83C1CF6F8577FD229675CE556D50945CFFA54BAFFB9C57381CC9C2E914FF8FCF
          ACDDDE6EEEED5D359F80D3E148F20CEC989D75CE2E40D62F84839D37C8359465
          70B0AFA1A66685C1E974FE405690956366666656B27B59A84EB673E07BA2DDF1
          5EE8E7E04266194FD49B4CF932817C9980CD66D36674FD5D745DB749B4BD0BF5
          1FF8A19FEE218B945D57292FC264322906A6FF1C19094DD32649629E4E799EAE
          CBFA290FEAA7E6E9FA142796DFAD0BD2752BED736CB6698924A6B9F0E93A9349
          C819A8B069AA4351AC1606B0708085837DD96C43D40F51BF90EBD4CFE3E4D739
          76789EAE0FD33E4CFDF0CC5CFD08E511C61DABADA971C804CE4E5BADCAD4D454
          BBAA28ED9AAAFA5055B5833A175DD33A6CAADAA9BBD954A58BF677BA469D0BC7
          BA50EEF6F23649BCCDB8FDF5972E69F227281F1F1F1F9E181FAF53A7A74D0CE4
          5147D985CE9724CA1EF594DDA61BB469A86A03833570118D9A2AA9DE9AF8EEA6
          5C66269A48A0ED4A53D398815BBF747464E41A49949340190349E52E8AF20F17
          55F528E33E3DC34C94EA9A5A36477353CB6993CE9248A544DF2A5585A2185565
          DA48D985193092C085ABADAD0306EEC8E2218BE58DB1B1B1E30C94C97D2065B9
          A8EA71179BCD851B35D76AB5164F4E4E16CBE83139692D993379666262A2809B
          FC6F1C7F42D36CD9C46C9BA69D94E89F2331032749E04C574747BB6146D30A07
          FAFB5FB74E4DED77D8ED8976BB7DAF5B0231C1AEEBB22E911B69DFF0C8486767
          6797D6D2D2AAB5B47A6BD35ADBAE6A172ED46879A7F2DA4747478F288A92469F
          FD2E9A964A9CA369699C2F95048EF5F6F45C36F0DB14F15B1CA2533095BF6389
          D841DC8E6D945D284712B7BFD5DEDE575B6B12159555A2B2CAE8C358FD9AC8CC
          3C2E0EA4A5592E37349C9C9A9888A34F34B31143DC091963F81ECBCAB9937326
          F6F7F55D347003159B2E5EFC935C97598F3E45C34A3C8A5F61139EC1463A3FD3
          DCDC7CCD68AC168585C5A2A8A8C4474949A9484F7F512424248CBE7EFEFC09FE
          55A1EEBEF21CF338CF6F48409E33D63C38F84F5702F57575F18CEFEF793890C8
          4D1CF03904527E104FE0E70DF58DCD5555D522BFE0340A7D9C26A9B4B40362CF
          9E3DD7CF9D3B77947BE197F47F123F5DC04FA80BB398CD46EF046E5AE8B12B93
          C1A7E970675D5D7D4E45A551649FCC11A772F3C5A9BC7C91EB26934A4E4E11BB
          77FF61C8585999C1BFEA29FAFC18EBDC1E237A3C427933377FD50726E09DD4AB
          AF56A6E7E4E48A7D49292235EDA038947E58641CF9AB78E9E8319199F58AD81D
          F747111612622E2C2848B6582CF733C86AB7EF12BF8D002EE6EBF812E5B566B3
          B9FC8612A8A8A83A7C223B473C17FF8278FE85BD3E121293C4FAF54F8BFB82BE
          D71DB76B57787A7AFA32F7ECCDFFB4DE1743DB5706CDE6D21B4AA0BABAFA705E
          FE6991B82F592425EF17FBA4A43929A907C4860DBF106BD7ACE98ED9B1233474
          D5AA5BDF6F27C50CAC60066E2C818282C263070F1E12615BC24578C4561F9191
          512238F821B166F5EADED8E8E8B0988D1B972C7A02212161BB8282827A030302
          AC50BCDD1B18A8DCB372A512FCC0031D3BB76F0FFF4812B8CB60B879F3A64D0F
          6F0D0BDB1B111A9A12111696EC6DEB962D2951919109D111118FC6C7C7DFB2E8
          33204F989A9ABA24312EEE0E0658BE90D8D8D8E5DBB66D5BC6A17E1F49028BB5
          45FFDF4DA8AAC58DF5F53E2BE1620DF2A16680275409CFE5E4DADADADBC86A99
          DB52F7736109DF9750BE95F849E22D12E59B899F70FB38F163EEFFBC5C35FD3D
          FF7F77D98FE8E2F312C4DF90A5B854EE07CABABBBA327951F88E5CFB9DBA1E48
          BC07F2A1F42D7C43AE5EC4AFE16EDC25A78FBAAFCAC584F297DD2BDB9D94BF88
          2FE0F3D42D27DE01F94CF92CDF3F43BC1DB7C98BC3BD9681814AB925AB18191A
          2AB78E8D6DA471034F2A693DE5A77855FB19F14961B73F41F971CAEB88727D7F
          84F830F12104D3FE20F147F2D58EF843E7CC8C7CD7F83EE5FB1084B590CBB25C
          92E58506E0F1AEAEAE7F1918ECF76C4AAEB01949A6328184F6E2CFBCAA3D4FDB
          73D8836711276667771377413ED363108D1D884224B6221C5B38369418C28C6E
          26FE169B5C8FE1D9D95F33CED378F6DFE7CFE7C95DF1ED5456104D382B37A928
          A37C8658822214E234F2918B53C841364EE0EF780559C8C431BCCC395EC21164
          E045EAD2897F91AEB6B515656565AD73DD17ECED02D8FBBDC1765BA371188318
          40BF5B1FB1173D905BEA6EB72EA2D4890EB4E32DFC076FE22ADAD08A1689AD5F
          0757DE9D919111E3BD0731987B7ABED9D2DC5CC6764A69BE72455C6E6CFC509A
          38AEA9A1E17D35BADB5FABAE162F1F3DFA665454D466CFE0FF05735A968AD2B4
          FB0E0000000049454E44AE426082}
        PictureHot.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          396943435050686F746F73686F70204943432070726F66696C65000048C79D96
          775454D71687CFBD777AA1CD30D2197A932E3080F42E201D045118660618CA00
          C30C4D6C88A840441111014590A08001A3A148AC88622128A8600F4810506230
          8AA8A86446D64A7C7979EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E
          2F059602209927E0077A38D3578547D0B1FD0006788001A6003059E9A9BE41EE
          C140242F37177ABAC809FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000
          C85FC4E66C4E3A4BC4F9224ECA14A48AED3322A6C6248A194689992F4A50C472
          628E5BE4A59F7D16D951CCEC641E5BC4E29C53D9C96C31F788787B86902362C4
          47C405195C4EA6886F8B58334998CC15F15B716C3287990E008A24B60B38AC78
          119B8898C40F0E7411F1720070A4B82F38E60B1670B204E243B9A4A466F3B971
          F102BA2E4B8F6E6A6DCDA07B723293380281A13F9395C8E4B3E92E29C9A94C5E
          36008B67FE2C19716DE9A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22
          BD0AF8DC3388D6F787EDAFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF
          0F9BE6210024457D6BBFF1C57968E279891708526D8C8D3333338DB81C9691B8
          A0BFEB7F3AFC0D7DF13D23F176BF9787EECA89650A93047471DD58294929423E
          3D3D95C9E2D00DFF3CC4FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851
          BB796CAE809BC2A37379FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002
          E4E73E80A21001127950DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE70
          89F891CE8DFB1CE712184C6709F9198B6BE26B09D08000240115C80315A00174
          8121300356C016380237B002F88160100ED602168807C9800F32412ED80C0A40
          11D805F6824A5003EA41236801274007380D2E80CBE03AB809EE800760048C83
          E76006BC01F310046121324481E42155480B3280CC2006640FB9413E5020140E
          454371100F1242B9D016A8082A852AA15AA811FA163A055D80AE4203D03D6814
          9A827E85DEC3084C82A9B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F0
          4EB802AE838FC1EDF005F83A7C071E819FC3B3084088080D51430C1106E282F8
          2111482CC24736208548395287B4205D482F720B1941A69177280C8A82A2A30C
          51B6284F54088A854A436D4015A32A514751EDA81ED42DD4286A06F5094D462B
          A10DD036682FF42A741C3A135D802E4737A0DBD097D077D0E3E837180C8686D1
          C158613C31E19804CC3A4C31E600A615731E338019C3CC62B15879AC01D60EEB
          87656205D802EC7EEC31EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872B
          C735E1CEE2067113B879BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F
          274813740876846042026133A182D042B844784878452412D589D6C4002297B8
          8958413C4EBC421C25BE23C990F4492EA4489290B4937484749E748FF48A4C26
          6B931DC91164017927B9917C91FC98FC5682226124E125C196D8285125D12E31
          28F142122FA925E924B9563247B25CF2A4E40DC96929BC94B6948B14536A8354
          95D429A961A959698AB4A9B49F74B274B17493F455E94919AC8CB68C9B0C5B26
          5FE6B0CC4599310A42D1A0B85058942D947ACA25CA381543D5A17A5113A845D4
          6FA8FDD4195919D965B2A1B259B255B267644768084D9BE6454BA295D04ED086
          68EF97282F715AC259B26349CB92C12573728A728E721CB942B956B93B72EFE5
          E9F26EF289F2BBE53BE41F29A014F415021432150E2A5C529856A42ADA2AB214
          0B154F28DE578295F4950295D6291D56EA539A555651F6504E55DEAF7C51795A
          85A6E2A892A052A67256654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE8
          3DF4193525354F35A15AAD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A3
          4CA35B63465355D3573357B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B
          9B7687F6A48E9C8E974E8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF
          80DE4D7D58DF423F5EBF4AFF86016C6069C035386030B014BDD47A296F69DDD2
          614392A193618661B3E1A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F26
          16264926F5260F4C654C5798E6997699FE6AA66FC632AB32BB6D4E367737DF68
          DE69FE7299C132CEB283CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E5969
          5A455B555B0D33A80C7F4631E38A35DADAD97AA3F569EB77369636029B1336BF
          D81ADA26DA36D94E2ED759CE595EBF7CCC4EDD8E69576B37624FB78FB63F643F
          E2A0E6C074A87378E2A8E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63C
          E762E3B2DEE5BC2BE2EAE15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3
          C2639DC7794FB4A7B7E76ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC
          2BBD9FF8E8FBF07DBA7C61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2
          D7F14FF3FF3E0013E01F5015F034D0343037B03788121415D414F426D839B824
          F841886E8830A43B54323432B431742ECC35AC346C6495F1AAF5ABAE872B8473
          C33B23B011A1110D11B3ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D6
          26AD3D132519C58C3A198D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC
          7DACE76C4776197B8A63C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9F
          E6BA702BB92F133C136A12E612FD128F242E248525B526E392A3934FF1647889
          BC9E149594AC94815483D482D491349BB4BD69337C6F7E433A94BE26BD534015
          FD4CF50975855B85A319F61955196F3343334F664967F1B2FAB2F5B377644FE4
          B8E77CBD0EB58EB5AE3B572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38
          BEC963D3D1CD84CD899B7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B
          0B240AF805C3DB6CB7D56C476DE76EEFDF61BE63FF8E4F85ECC26B452645E545
          1F8A59C5D7BE32FDAAE2AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A9
          74694EE9D81EDF3DED65F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7
          A273BFE6FE5DFB3F54C657DEA972AE6AAD56AADE513D77807D60F0A0E3C1961A
          E59AA29AF787B887EED67AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D
          0D0A0D450D1F8FF08E8C1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBB
          F98DEB379D2D862DB5ADB4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB
          775ADF55B751DA0ADBA1F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6F
          F4FD91D36AA7ABCEC89E29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8E
          EA7E7071D5C5DB3D013DFD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97A
          EA1AE35AC775CBEBED7D167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB
          07CE0E3A0C5EB8E57AEBF26DAFDBD7EFACBC333014327477387278E42EFBEEE4
          BDA47B2FEF67DC9F7FB0E921FA61E123A947E58F951ED7FDA8F763EB88E5C899
          51D7D1BE27414F1E8CB1C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7
          DCA76E3E5BFD6CFC79EAF3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE
          92FF72E1D7E257F2AF8EBC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778
          D7FB3EECFDC47CE607EC878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FBE2E6
          1DC2000000097048597300002E2200002E2201AAE2DD920000070E4944415458
          47BDD7097013551807F0D7442D5A601454BC6500E50645391C181105A5C84D39
          440EB5C351A42D500E19BC2950AEE12A52B0AD4ACB514A4B69C15E1E28474A0F
          A050C096507A2669535B68B257B2D9E7FF2D494CA480CC5433F39BEFDB6F8FF7
          ED66F376E3433C3E8ADD3E84683453888F4F47CF7A33E6128E954D386E9FA655
          AB1AAFE3528723822A0AFD3F3EB2DD5E6C282F7FC5DD80E270AC710DEC906545
          6E02AB37051B2BF7481DCA585D5D9177E24447A228CAEBAC80AE1C369B4D66EC
          1E9AAAB1F5D8F0B6B0DE713BD8CF811391311ECDD5E912580309AC015114059B
          24DD42922491C1BA5BA07ED70FF6935C588A5C3D4B76123A9D8E23B8FC3FA323
          2A08C20D34E12621779324566F7441BDD14D921A7160B66C69922459B0FE2651
          B43268C28A13B7E6E874945D817451E01D1C6731620023363062636FA26842DD
          847A536A5077C3C16BB06DAD9B24D5627D2DEAB5B69B75337233C6AD3F75E284
          833570D46AB1708D8D8DC53CC7150B3CEF85E7F912D454922094883C7F457212
          794E8FF5FF74153515B655212FF5700D4D5CC3B895B9A74F0BEC2B486B6868A8
          BDDED090C35BAD3A0CE492835C859D4F33C85D72913B59F3042BF07C1E06CBC3
          49E40B3CC37B2AC0B213770657A2000D149D2D28A827B8F50FD799CD57D1441A
          1A48C5404C9A8AE38EA8785E25F042AA2CD95264413A6C13A45446166C2AE469
          B22483ED281AC960B06F26CF03C765F19C350BB90A57200B0D1CBF78E14215C1
          1D996C321ACFD5D7D7C7629068DC074C8C8AE76355A2A8E2046E9FD9624EAEBD
          519BCCA20B960FD5DDA83B64B8614C315D371DB08BF6EF45D1B65B10C438EC17
          270A423C831B7D0F832B108F0652F42525C5C4260807AB2A2B7FB33436AE73D8
          EDABEC76FB4AA770C470BB24B1DA2ADC48AB2F992F5F49D7FF28EC3FBF4F48B8
          B0DF4B62D10161CBF1CD4244D2DAE232A97ABB55E236609F752A41588F789320
          6CC0F1D6A3815DE565656708BE9B247C179BEBEAEA86A1F811A6880588A1108C
          5C857C3E62E891E2B48A35BA55343423982ECC0CF5961D4AE77E3B8786C42F31
          EE558EC6D7C8F5CB159BBC103FF930ECBB08580CC3F262CC9C8B70CC55951515
          27096EA064DDC9939FB27919F3514BACE80123E07D980933601A769E11571877
          352C7B219D9A34854E4B9EEA2D05CB9BA7D2C0F879759B94B8DD66FAE76C4556
          F765C770C3713E4003ACBED8505DFD8BDA406E4ECE17185FE37A38A0112D3678
          1C7A231F0A63652A4FDC991F55B8202B844E4A9C40272706207A480AA013D74F
          A0EFC57E54B346898E3229E6A9D87F1C8C6FC218D4E6180D862CCF06B44D3D76
          5933F0087678766BEED63D1F670651FFF877E8B8FD63E8B8843174BC6A2C1D9F
          38968E593D8A4ED835DDF495B223D2A0D404609F7761A4D32844177FE481B8F9
          33EFDA8067532119C15BDEDA3B84B68EF0A34F6E7C9C76D8DA9E76FFA60B7D79
          676FDA2FF655DA7F595F3A70E330C31CFA55C415E5DA100CD2CFA92F621FE885
          93E902CF211F603018D2EEA98145990BB60D8E1F44C997846ABEFE9B16B976B5
          0FD506A016FC70A9AFD22768B812DCDA79F5DC5FADE7C9605DFB6A83E1F03D35
          B0ECE725DBDE3AF006D5AE21F481B55A6F1BB45433895032AF6529A1DD66237B
          E84E6F52B8021D7105EEAD81C9070376F5DCD88D6A0209BD6F968FB7B93E54F3
          3A869DD5B29C283DE610A5975FB337D022A8C552E2AF2D27C37D2DC4DF97BBC5
          50D4D6B52D214AF7A0FFA401B285F812EB8BC389A3CB4A62EFBC1622BC385053
          BA8513A5EB084207B768F62BA01E5019E64794FEEDF03D3F715B4AA7D6F8327C
          FE9B069AE91DFDEF9B90E793F37373BD66C2661AE38E8771378027D4213C9723
          4E9D3AD506C5D64EAD9CCF053F2CFB217F08F141C4160C725FC4079CEE47BCCF
          F99B67B3A6C6F5FB77E63E882AAF3F41F819622A3ECCDE07524BF5FA68FC5178
          95CDFD8A24F546EC09ECA1D41DBAB2D90BB133BC009D58F7A875609309F2E79D
          33DBB3C89F81A7E129D49E406C07EC99F218961F456C0B6DD8C9C14BC6AAAA0C
          F64A966E3699D22CF5F5D3B0720A9E54CC24E401F8AB3601711CB5DBC7221F8D
          7C24229BDFFD118723BE0DC3B07E28E29BECAF1DE260C56663FF3506211F08AF
          C10060D3329B92D989F682D17ABDFE5782C196E0A5E42C5E4622500C47432BE1
          6BFC55FB12EB3E87CF60052CA7B2FC09E25260CFF43058080B2004E6C3C71004
          73B12D1EC7F22C5CD140C40F61A6FA1896E5E9186732ACF8FDD8B1FDECADB82D
          8AE9883A38CA5E522115790AE221488283900809B00FF6C21E8883DDF0037C07
          31100DBB60278EB103B643246C456D0BE226E6625151524C4CCC48F5BEB0582C
          BDF0EE770EAFDB0256D642355441A55305623994017BA52E75D2233257A0048A
          E10FB80C97E02214C10538CFE0D5AF04675E1A191919E6F90E420C6565DDCE17
          16A69EC9CBE30ACF9EA567F2F3FF95026C5790977747F9CEF53F6567D39D5151
          97424242025D83FF05D5955864355BAB5E0000000049454E44AE426082}
        PictureDown.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          396943435050686F746F73686F70204943432070726F66696C65000048C79D96
          775454D71687CFBD777AA1CD30D2197A932E3080F42E201D045118660618CA00
          C30C4D6C88A840441111014590A08001A3A148AC88622128A8600F4810506230
          8AA8A86446D64A7C7979EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E
          2F059602209927E0077A38D3578547D0B1FD0006788001A6003059E9A9BE41EE
          C140242F37177ABAC809FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000
          C85FC4E66C4E3A4BC4F9224ECA14A48AED3322A6C6248A194689992F4A50C472
          628E5BE4A59F7D16D951CCEC641E5BC4E29C53D9C96C31F788787B86902362C4
          47C405195C4EA6886F8B58334998CC15F15B716C3287990E008A24B60B38AC78
          119B8898C40F0E7411F1720070A4B82F38E60B1670B204E243B9A4A466F3B971
          F102BA2E4B8F6E6A6DCDA07B723293380281A13F9395C8E4B3E92E29C9A94C5E
          36008B67FE2C19716DE9A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22
          BD0AF8DC3388D6F787EDAFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF
          0F9BE6210024457D6BBFF1C57968E279891708526D8C8D3333338DB81C9691B8
          A0BFEB7F3AFC0D7DF13D23F176BF9787EECA89650A93047471DD58294929423E
          3D3D95C9E2D00DFF3CC4FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851
          BB796CAE809BC2A37379FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002
          E4E73E80A21001127950DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE70
          89F891CE8DFB1CE712184C6709F9198B6BE26B09D08000240115C80315A00174
          8121300356C016380237B002F88160100ED602168807C9800F32412ED80C0A40
          11D805F6824A5003EA41236801274007380D2E80CBE03AB809EE800760048C83
          E76006BC01F310046121324481E42155480B3280CC2006640FB9413E5020140E
          454371100F1242B9D016A8082A852AA15AA811FA163A055D80AE4203D03D6814
          9A827E85DEC3084C82A9B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F0
          4EB802AE838FC1EDF005F83A7C071E819FC3B3084088080D51430C1106E282F8
          2111482CC24736208548395287B4205D482F720B1941A69177280C8A82A2A30C
          51B6284F54088A854A436D4015A32A514751EDA81ED42DD4286A06F5094D462B
          A10DD036682FF42A741C3A135D802E4737A0DBD097D077D0E3E837180C8686D1
          C158613C31E19804CC3A4C31E600A615731E338019C3CC62B15879AC01D60EEB
          87656205D802EC7EEC31EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872B
          C735E1CEE2067113B879BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F
          274813740876846042026133A182D042B844784878452412D589D6C4002297B8
          8958413C4EBC421C25BE23C990F4492EA4489290B4937484749E748FF48A4C26
          6B931DC91164017927B9917C91FC98FC5682226124E125C196D8285125D12E31
          28F142122FA925E924B9563247B25CF2A4E40DC96929BC94B6948B14536A8354
          95D429A961A959698AB4A9B49F74B274B17493F455E94919AC8CB68C9B0C5B26
          5FE6B0CC4599310A42D1A0B85058942D947ACA25CA381543D5A17A5113A845D4
          6FA8FDD4195919D965B2A1B259B255B267644768084D9BE6454BA295D04ED086
          68EF97282F715AC259B26349CB92C12573728A728E721CB942B956B93B72EFE5
          E9F26EF289F2BBE53BE41F29A014F415021432150E2A5C529856A42ADA2AB214
          0B154F28DE578295F4950295D6291D56EA539A555651F6504E55DEAF7C51795A
          85A6E2A892A052A67256654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE8
          3DF4193525354F35A15AAD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A3
          4CA35B63465355D3573357B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B
          9B7687F6A48E9C8E974E8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF
          80DE4D7D58DF423F5EBF4AFF86016C6069C035386030B014BDD47A296F69DDD2
          614392A193618661B3E1A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F26
          16264926F5260F4C654C5798E6997699FE6AA66FC632AB32BB6D4E367737DF68
          DE69FE7299C132CEB283CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E5969
          5A455B555B0D33A80C7F4631E38A35DADAD97AA3F569EB77369636029B1336BF
          D81ADA26DA36D94E2ED759CE595EBF7CCC4EDD8E69576B37624FB78FB63F643F
          E2A0E6C074A87378E2A8E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63C
          E762E3B2DEE5BC2BE2EAE15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3
          C2639DC7794FB4A7B7E76ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC
          2BBD9FF8E8FBF07DBA7C61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2
          D7F14FF3FF3E0013E01F5015F034D0343037B03788121415D414F426D839B824
          F841886E8830A43B54323432B431742ECC35AC346C6495F1AAF5ABAE872B8473
          C33B23B011A1110D11B3ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D6
          26AD3D132519C58C3A198D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC
          7DACE76C4776197B8A63C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9F
          E6BA702BB92F133C136A12E612FD128F242E248525B526E392A3934FF1647889
          BC9E149594AC94815483D482D491349BB4BD69337C6F7E433A94BE26BD534015
          FD4CF50975855B85A319F61955196F3343334F664967F1B2FAB2F5B377644FE4
          B8E77CBD0EB58EB5AE3B572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38
          BEC963D3D1CD84CD899B7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B
          0B240AF805C3DB6CB7D56C476DE76EEFDF61BE63FF8E4F85ECC26B452645E545
          1F8A59C5D7BE32FDAAE2AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A9
          74694EE9D81EDF3DED65F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7
          A273BFE6FE5DFB3F54C657DEA972AE6AAD56AADE513D77807D60F0A0E3C1961A
          E59AA29AF787B887EED67AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D
          0D0A0D450D1F8FF08E8C1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBB
          F98DEB379D2D862DB5ADB4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB
          775ADF55B751DA0ADBA1F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6F
          F4FD91D36AA7ABCEC89E29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8E
          EA7E7071D5C5DB3D013DFD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97A
          EA1AE35AC775CBEBED7D167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB
          07CE0E3A0C5EB8E57AEBF26DAFDBD7EFACBC333014327477387278E42EFBEEE4
          BDA47B2FEF67DC9F7FB0E921FA61E123A947E58F951ED7FDA8F763EB88E5C899
          51D7D1BE27414F1E8CB1C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7
          DCA76E3E5BFD6CFC79EAF3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE
          92FF72E1D7E257F2AF8EBC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778
          D7FB3EECFDC47CE607EC878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FBE2E6
          1DC2000000097048597300002E2200002E2201AAE2DD92000006FC4944415458
          47BD970B7054D519C74F4281FAA01DA15A2BD2764C99BE149D625BA59DB63A52
          A5461E91923815A86584321A0A0975A080CA236D08B50F068B71082D228410F3
          5C1820A91523B0212F8404DA8418421E9B641313D9DD7BEFDE7D9DFECE727767
          1703964EDA3BF39BEF3BDF79FDCFB9E79E736E828879427EFF432231314D2424
          24C5C647D03769AB52685A7EE2B8717D71EDCA60305B8642F2FFF104FCFE66C7
          C58B53A30242C1E0EF221D070381506018547C38281CBA4EC25DF5747777D41E
          3B962442A1D00F540055419FCF1750F863182EA6F2297855C80F5E0DEA051948
          80FE648DDD5EA0041428015EAFD7F099E6C7304DD3AB20EF6310FFC4877A6604
          E5E28747A90661B7DB35C1F4BF8D226918C625444431F1A398A68ABB22107745
          314D170DABB47B584CD34DFE65BC5E8F02111E06EEA9B6DBA59A81435E430F6A
          9ABB870E7A28D043E178BCDE5EE2BDC487A38F78141AEFA3AC338A693AC97712
          77FA2EC7FBF1FBE977F0C4B1634125E0A0C7EDD65C2E57B3AE69CD86AEC7A1EB
          7A0BB130A661B47875FDBC69E1D5B556F2AFE4036261281B06BF2D860B88B840
          BF9D35274F1AEA15D88686869C1F0D0D55EB1E8F9D8E2254E387A1F249057E84
          1A7C0B4FADE1015DAFA5B35A065167E80A3D967AD2165A0333518F80A653F5F5
          8382A55F36D0DFFF01226C0828A723852D8CA61D08A3EB116CACA8522883F2CB
          F82C4C9B19F0D9F8360E20E4B082BA47741D34AD42D73C15F86198810A04BC77
          B6B1B14BB0228B7B7B7ADE1F1C1CDC49473B58078ABC30BABE338CD7BB5307EC
          6EF7871F165F723A8BDDCEFE28A44BDC03032597FAFA4A3FEAEA2A32BCDE5D94
          7DC330BCBB551DAF61BCA960A1EF5130036F22A0B4B5A5A559F80CE3ADAECECE
          77DD2E574ED0EFCFF2FBFD1B2D366137F94D53C5B2FCC1E086A1B60B551D47AB
          8C337B0A8CC6BDFBE368CA2F34EA72F38CFC752F399DF5F57FF3BB5CAFB0F872
          C218C616EC650CE3F7B4B70501AF5F6C6F6F10BC9B22DEC59F060606A613FC05
          5BC472ECAF201D3F0C3B5D3AE9A5EDEF5455356CDD2E0F3FB7421E49CF8C2143
          56922E589A2EFFB078896E6EDF5E1E3C7F7E3D7557F0C967623340D94CD22B69
          2F83F6B23A3B3A8E0B1650B1FDF8F1B56A5F663FBA998CBBE127F03358080BE0
          69486D2EB31D796FDD4659346FBE2C4E5B104729E91D4F2D905BE62F3002EBD7
          1F0C3536AA81CCB7DA50ED8441C4CF11A0DA5CE9E8EEFE4758404D75F54BF49F
          18391C10328A02B7C1BDF88F60E760679FDD57B8FFDD552FCAC294A7202D8E22
          D2B929A9326B6EAAEEFBCDAA22042C52F520651866115BD2E37054C40A1835DC
          B1ABC4C02D5498742EBF20E3E80B6BE5DE4767CA7D8F3F290B92157365C11373
          6521BC9A9C225F9E395BF76566EC0F3534A8513E0EC9164F6023CCC05FC4E23F
          F28902624555A6AF9C55F6D3A765CECDB7CA57C64F945BEF9C2CFF32F91E997B
          F7FD72E77D0FCAECA9D3E4F2EF4EF3F8525377852A2B55C7DFB1F836F65B3085
          C17C0DBE88FF80C3E1B05D97808ACCD5292573D2E42631566E10A3631823B3C4
          18B91466248C7269A3476F0E25254DB2662FFA6A630743DE97BB1D8EB2EB12F0
          F6EAB529075880390937CACDE2863872483F8FA84785701942FC3624C417AE75
          936206929881EB135096F6CCBCBC690FCBC58CF4D92B58427A16027E24123404
          6423E08E1117B062EC671F9A2D46B53C22C4A519426857329DD862219C08D88C
          8089232E800613FA8598EA13620DB7CBCD901D8B9F741002422C44C084FF8500
          41C363E13629C4EDD7E016F286FDAC23A2FEAB353082D773750FB116A1AE17D7
          D5D4C4ED8423D9D1D5DA8A0AE0842AE15CCE3E71E2C478829FB118679D0B3791
          BE09FF46EC0DD84F2BF0C762C7588CC67ECAFAE6D5AE9918F9FE2D3F011B26EE
          278819602B2E53F781F2B6D6D61DFC28DCAFF6FE9069DE8BBD07D4A1F44DF8BA
          DABDB05F85C9F015A59ED85D6A33C1FF92B5B34DC2BF1326C21DC46EC77E1ED4
          99722BE9CF6127C0783538B8AFA7ABEBB0BA921DEAEFEDB5B90707D58997C649
          A598873F975FB527B173A4DF3F1B7F267E3256EDEF33B08F617F0CD3C95707D6
          C3EAD70EFBC390CFA7FE35BE8FFF3D78101E00B52DAB2D590D740ACC6C6D6D7D
          47D0D9AFB9949CE232924D70138236C2067ED55E26EF4558076B60B50C045661
          5F0075A667C20A580ECBE079780E96C22F29BB18FB2C33BA08FB0C2C0C1FC381
          803AA253614DD5D1A3FBD46A9C40F010D60E07D52515CAF14BB12550046F4121
          14403EEC853DB01BDE805DF057C8831DF03AE4D2C6767815B6C156627FC6FE51
          71B6A9A9282F2F2F39BC2EDC6EF714EE7EEF73DD36C87442377441A74507F622
          B483BA52B759B46215E7A1059AE15FF04F380767A1091AE18C82AB5F0B236FDB
          B66D5B66EC1D4438DADBBF71E6F4E9F286DA5AEDF4A953B2A1AEEE3FA29E72F5
          B5B5D7A4CECAFF7B65A5CC7DEDB573CB962D5B14E9FCDF3C9D51C97649352F00
          00000049454E44AE426082}
        ParentFont = False
        TabStop = True
        TabOrder = 0
        Text = 'Guardar'
        Version = '5.0.1.4'
        OnClick = BtnRecClick
      end
    end
    object Panel5: TPanel
      Left = 56
      Top = 1
      Width = 48
      Height = 55
      Align = alLeft
      TabOrder = 1
      object BtnCancel: TAdvShapeButton
        Left = -4
        Top = 5
        Width = 55
        Height = 46
        Hint = 
          'Haga click aqu'#237' para cancelar la captura realizada y cerrar la v' +
          'entana'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Layout = plPictureOnTop
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          396943435050686F746F73686F70204943432070726F66696C65000048C79D96
          775454D71687CFBD777AA1CD30D2197A932E3080F42E201D045118660618CA00
          C30C4D6C88A840441111014590A08001A3A148AC88622128A8600F4810506230
          8AA8A86446D64A7C7979EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E
          2F059602209927E0077A38D3578547D0B1FD0006788001A6003059E9A9BE41EE
          C140242F37177ABAC809FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000
          C85FC4E66C4E3A4BC4F9224ECA14A48AED3322A6C6248A194689992F4A50C472
          628E5BE4A59F7D16D951CCEC641E5BC4E29C53D9C96C31F788787B86902362C4
          47C405195C4EA6886F8B58334998CC15F15B716C3287990E008A24B60B38AC78
          119B8898C40F0E7411F1720070A4B82F38E60B1670B204E243B9A4A466F3B971
          F102BA2E4B8F6E6A6DCDA07B723293380281A13F9395C8E4B3E92E29C9A94C5E
          36008B67FE2C19716DE9A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22
          BD0AF8DC3388D6F787EDAFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF
          0F9BE6210024457D6BBFF1C57968E279891708526D8C8D3333338DB81C9691B8
          A0BFEB7F3AFC0D7DF13D23F176BF9787EECA89650A93047471DD58294929423E
          3D3D95C9E2D00DFF3CC4FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851
          BB796CAE809BC2A37379FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002
          E4E73E80A21001127950DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE70
          89F891CE8DFB1CE712184C6709F9198B6BE26B09D08000240115C80315A00174
          8121300356C016380237B002F88160100ED602168807C9800F32412ED80C0A40
          11D805F6824A5003EA41236801274007380D2E80CBE03AB809EE800760048C83
          E76006BC01F310046121324481E42155480B3280CC2006640FB9413E5020140E
          454371100F1242B9D016A8082A852AA15AA811FA163A055D80AE4203D03D6814
          9A827E85DEC3084C82A9B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F0
          4EB802AE838FC1EDF005F83A7C071E819FC3B3084088080D51430C1106E282F8
          2111482CC24736208548395287B4205D482F720B1941A69177280C8A82A2A30C
          51B6284F54088A854A436D4015A32A514751EDA81ED42DD4286A06F5094D462B
          A10DD036682FF42A741C3A135D802E4737A0DBD097D077D0E3E837180C8686D1
          C158613C31E19804CC3A4C31E600A615731E338019C3CC62B15879AC01D60EEB
          87656205D802EC7EEC31EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872B
          C735E1CEE2067113B879BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F
          274813740876846042026133A182D042B844784878452412D589D6C4002297B8
          8958413C4EBC421C25BE23C990F4492EA4489290B4937484749E748FF48A4C26
          6B931DC91164017927B9917C91FC98FC5682226124E125C196D8285125D12E31
          28F142122FA925E924B9563247B25CF2A4E40DC96929BC94B6948B14536A8354
          95D429A961A959698AB4A9B49F74B274B17493F455E94919AC8CB68C9B0C5B26
          5FE6B0CC4599310A42D1A0B85058942D947ACA25CA381543D5A17A5113A845D4
          6FA8FDD4195919D965B2A1B259B255B267644768084D9BE6454BA295D04ED086
          68EF97282F715AC259B26349CB92C12573728A728E721CB942B956B93B72EFE5
          E9F26EF289F2BBE53BE41F29A014F415021432150E2A5C529856A42ADA2AB214
          0B154F28DE578295F4950295D6291D56EA539A555651F6504E55DEAF7C51795A
          85A6E2A892A052A67256654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE8
          3DF4193525354F35A15AAD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A3
          4CA35B63465355D3573357B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B
          9B7687F6A48E9C8E974E8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF
          80DE4D7D58DF423F5EBF4AFF86016C6069C035386030B014BDD47A296F69DDD2
          614392A193618661B3E1A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F26
          16264926F5260F4C654C5798E6997699FE6AA66FC632AB32BB6D4E367737DF68
          DE69FE7299C132CEB283CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E5969
          5A455B555B0D33A80C7F4631E38A35DADAD97AA3F569EB77369636029B1336BF
          D81ADA26DA36D94E2ED759CE595EBF7CCC4EDD8E69576B37624FB78FB63F643F
          E2A0E6C074A87378E2A8E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63C
          E762E3B2DEE5BC2BE2EAE15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3
          C2639DC7794FB4A7B7E76ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC
          2BBD9FF8E8FBF07DBA7C61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2
          D7F14FF3FF3E0013E01F5015F034D0343037B03788121415D414F426D839B824
          F841886E8830A43B54323432B431742ECC35AC346C6495F1AAF5ABAE872B8473
          C33B23B011A1110D11B3ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D6
          26AD3D132519C58C3A198D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC
          7DACE76C4776197B8A63C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9F
          E6BA702BB92F133C136A12E612FD128F242E248525B526E392A3934FF1647889
          BC9E149594AC94815483D482D491349BB4BD69337C6F7E433A94BE26BD534015
          FD4CF50975855B85A319F61955196F3343334F664967F1B2FAB2F5B377644FE4
          B8E77CBD0EB58EB5AE3B572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38
          BEC963D3D1CD84CD899B7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B
          0B240AF805C3DB6CB7D56C476DE76EEFDF61BE63FF8E4F85ECC26B452645E545
          1F8A59C5D7BE32FDAAE2AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A9
          74694EE9D81EDF3DED65F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7
          A273BFE6FE5DFB3F54C657DEA972AE6AAD56AADE513D77807D60F0A0E3C1961A
          E59AA29AF787B887EED67AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D
          0D0A0D450D1F8FF08E8C1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBB
          F98DEB379D2D862DB5ADB4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB
          775ADF55B751DA0ADBA1F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6F
          F4FD91D36AA7ABCEC89E29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8E
          EA7E7071D5C5DB3D013DFD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97A
          EA1AE35AC775CBEBED7D167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB
          07CE0E3A0C5EB8E57AEBF26DAFDBD7EFACBC333014327477387278E42EFBEEE4
          BDA47B2FEF67DC9F7FB0E921FA61E123A947E58F951ED7FDA8F763EB88E5C899
          51D7D1BE27414F1E8CB1C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7
          DCA76E3E5BFD6CFC79EAF3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE
          92FF72E1D7E257F2AF8EBC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778
          D7FB3EECFDC47CE607EC878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FBE2E6
          1DC2000000097048597300002E2200002E2201AAE2DD920000090E4944415458
          47BD97795454D71DC747D33F7A4E6A7AA24DDADA365D3CF4A8510485A89843AA
          B13649D33469B5D5882C7204C6911950408D4664954D9601144706EA0288C2B0
          A9288B908833ECA8800A0CFB2A20C82C6FE6CD76FBBD2310ACB8F4A4A773CEE7
          FCEEFCEE7DF7F7BDF7DDE5F7E67066FC4C7AFD7ACEDCB95B3973E62C9AE9FF1F
          9659F455CC51AB33E6CE9BF7F0A97E89D118464C26F2FFF819F4FA9681EEEE55
          D3024C46E3B1A9C04683C1649805EA9F0D3436FD9798430DF6F7F7D454542CE2
          984C267BEA802AA34EA73350F43398CD47EBD1F0B9A0DEF83CF09C110331201E
          A996C932A9804C2A40ABD56A742CFB0C2CCB6A29A87B06F85FFAC373EC14B488
          B27994741032994CCDC1F4974211D168341310310D8BF2342C4BFD8A29E0574C
          C3B20A744CFF2B67856595A87F8256ABA240840A035755CA6484CE40A156C318
          D56AE520020CA2C1201A3F8D563B04FF10FCB3F110FE6930B84140DB0F9B6159
          33083AAC7BE21B41790471C7A41515462AE08A4AA9542B148A1646AD6ED130CC
          53300CD30ADF4C5A741ACD0333ACE60166AE15015A28B41DA352F68D8F8D0D60
          AEDB1050AE659876F4D131834E88E844DCDEEAAA2A0D7D0505E3E3E3C38FC7C7
          2B19954A864EA6A844D90C1EAE02320493C2362040FBE3478F3AC64647FBFB7B
          7B871F0E0D753D1A1D6D51AB54ADC3C323BADAEA5A636D4DCD10FABDADD130B5
          E8A3EE3BD4F5105607014D0D7575631C2CFDBCD1919176342E80807C04A01498
          51AB2FC35E66359A5CD862C5C444C7D0E010D3D6DA469A9A9A49636313A9ABAB
          37D350DF606C6FEFD037C29F9B9747E2E3E34DF5B5B5F7F04C29FA2962D4AA22
          86810598812208B8D9DCD8D8C7C18A940C0D0EDE1E1B1B4B419064AC038AD80C
          C3A4C09E86E274CCD040676727A9ACAA2637CACA49496919292EBD418A8A4B40
          2929BD5146CACBBF2157AF1692B8B838536A4A8A427AF3E6FDC181813CAD4673
          9E82194CA3A0BFF310902B6F6D6DE1E05D66F5F5F67EA35428228C7A7D885EAF
          0F9A2458CFB2412072ECD123795B9B9C149794922B084091E4E412892487E417
          5C9EF65D2DBC86D1E79398E818438E44D27EA7A1E1CAC4F8B81033188935F204
          8D260AFD474280A8BBABAB9E8377938D77113B3A3AFA473877E288F08215004F
          C09D189FB8D0D1DE418A8A4A485E7E01C9C9CDC30885242020C0181111A19364
          651BA8202AC44CFE659294748A24C4C777638442EC887D14F46B06651F9C9C7B
          D177486F4FCF2D8E46A592C86EDD3A4CCF659C473F42C532F009D80E5C7ABABB
          6F57565691ECEC1C9293934784F109E4E0FEFD5A51D2C97B57F2F21AEB6B6A74
          8585D74936664322C935B711A7A692A3FEFE8FCBCBCA92B1BBDC10D8097D9941
          D919021C51F619E8EFBF6116505D59E98FF873A72E0708790D0DDED2A9D5AB9B
          EEDE6DA4537F292B9B64645C20070E1C3045858575955CBF5E881D206FB87D87
          A4A5A593F3E0E2A52C904DFE75E62CF1F3F3D365A4A7E7E0CC77455F5F80BFCD
          E0AF28BB637D14CD14F0DA7F5EBB6969696F961417DF17A7A462E48924EA7834
          717172D28A4E9C90B6B7B5DD6FC56E481289C8A1AFBE329D3B7BCE70294B4232
          2E5C24A9A967889740604C16898AE42D2DEE08F667F097197C8CB22B16FFF517
          0AB89E9DFDF6A5ACACCE985821391A1044BCBC7DC87AFBF5CAA47861F983072D
          CAE0E010B269D3261DDFC3BDF7425A1A939E9149CC628509C4C9D1511F1D1959
          5825957E89195D85802B8125CA8BC13B28AF1918182878A180B39191AFA78A53
          4B13124F9280C06072C43F80F8ED3FA0CFCFCB539E3A759A2C5DBA946CB0B7BF
          EFC5E58AD3CE9DEF4C3C914482438E11EFBDFBC84AEB959A5D3B77A61CF6F35B
          3E5B420311BFE9C7167DA100FAA0F8E4C9E3A2D3C9243028C44C784414F10F08
          242B57AE32ADB6B5ED727371397FC4D777C7AD8A5BCD49492212141C4A9C9D77
          92E5CB962977393B9FE0BBBB5BCC260033B00833F0720131E1A19FC5C6C61943
          42C3CC02E808B76DDB4ED6BC673BE0BDDB233F2420C0EF5E636394542A6323A3
          A2CD6D367CB891D8AD5DDBEDB57B77E87E3EFF9DEF252094B7634144E8B1F268
          AC033A3A1AC06FFF4112121CA2BE9899F910A75FD7B7376F9A4E27A79090D070
          E2E6E641162F5E6CDCBA797385CF1EC12E3737B71F7F2F01F4E1E2C2C2AF33B1
          C5E82C50C2C223491C165A922899884E8B49744CAC59989B3B972CB7B4247FB0
          B7EFE2F378E2BD5CAEDD962D5B9ED95DB4CF577E056DCDCDEF62C537471D3F4E
          FEF4D127642BA6DF93EF453C055E84E72920DCDD7BC897DB77900D1B3792254B
          96983E787F5D8F27979BE52D10387A7B7BCF7F5E46FDCA02723232DC22A38E13
          1B1B5B62B7664DFB3A3BBB766B6B6B85959595D6CACA5A6BB962056BB9DC5261
          B77A75CF962F3EAFF4E2F152BDF87C271E8FB7F045E9FC77021846525B5DFDD4
          4938F341DE8ECF17AC5EB54A6C6B63D325D8B33BCD93C7F374DCB64DE0ECE010
          E5E4E090E8E2E890E8E1EA2AF4E1F3FD7D05829D7B3D3DEDB85CEE9B2FFB9698
          16801B2A07F77298542A9D0FE71B93CC9BBC175E87FDE1615F5F8B7D7CBE879F
          8FCFAEE8E8E8DF49AF5D9B2F120A7F1B1B1B6B111B1E6E111E18681174E8D0AF
          700DBF515656F683C97B652E9EA5CC99E2A98F206C437A55D37C20BF432E4FC6
          87820D82AF30B1EC0AD8E59397D2BBB04BC0EFFB3A3BADEBEAEA6C901F58D043
          04BE5F835F4EF20BD885E0E7937621DAFC0CE59F82B7C15BF8FF13D805603E1D
          1CB01AECEBBB4653B2C291A1A102E5D898032AB7E2A6A2FC03E5CDF854FB3B2C
          BD48E8E5F129F8043E7AAE7F0CFB11D804E835FE21D8403FED603F30E974F45B
          E37D94D781B5600D780FD8023A504BF0995C2E2FE320982F9292062423617006
          43501008C4A7DA51D41D015F8343E02031180EC0FA017AA7EF03DEC00BF0C11E
          C0035CE081B66EB0BB30A3AEB02EC0C97C0D1B0C3B10E79FE0D0B7E5E517E87E
          5C006721AC0C5CA1492AC8473917360764832C700964820C900ED2C03970169C
          01A9400C9281089C421F274122480042F8E2606328CD4D4DD962B1F853F3BA50
          2A9596C8FF6EB30CA341E530E8077DA077921ED86ED005684ADD31891C96D206
          5A410B7800EE837BA019348146709782D4AF1523EF484848D8373307E10C7475
          2DBD7BE74E3E321C357239828CF695A843BBBA9A9A178214DD5C8FDC829C4A4A
          BAC7E7F35DA782FF1B375EFDC8E09B920F0000000049454E44AE426082}
        PictureHot.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          396943435050686F746F73686F70204943432070726F66696C65000048C79D96
          775454D71687CFBD777AA1CD30D2197A932E3080F42E201D045118660618CA00
          C30C4D6C88A840441111014590A08001A3A148AC88622128A8600F4810506230
          8AA8A86446D64A7C7979EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E
          2F059602209927E0077A38D3578547D0B1FD0006788001A6003059E9A9BE41EE
          C140242F37177ABAC809FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000
          C85FC4E66C4E3A4BC4F9224ECA14A48AED3322A6C6248A194689992F4A50C472
          628E5BE4A59F7D16D951CCEC641E5BC4E29C53D9C96C31F788787B86902362C4
          47C405195C4EA6886F8B58334998CC15F15B716C3287990E008A24B60B38AC78
          119B8898C40F0E7411F1720070A4B82F38E60B1670B204E243B9A4A466F3B971
          F102BA2E4B8F6E6A6DCDA07B723293380281A13F9395C8E4B3E92E29C9A94C5E
          36008B67FE2C19716DE9A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22
          BD0AF8DC3388D6F787EDAFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF
          0F9BE6210024457D6BBFF1C57968E279891708526D8C8D3333338DB81C9691B8
          A0BFEB7F3AFC0D7DF13D23F176BF9787EECA89650A93047471DD58294929423E
          3D3D95C9E2D00DFF3CC4FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851
          BB796CAE809BC2A37379FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002
          E4E73E80A21001127950DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE70
          89F891CE8DFB1CE712184C6709F9198B6BE26B09D08000240115C80315A00174
          8121300356C016380237B002F88160100ED602168807C9800F32412ED80C0A40
          11D805F6824A5003EA41236801274007380D2E80CBE03AB809EE800760048C83
          E76006BC01F310046121324481E42155480B3280CC2006640FB9413E5020140E
          454371100F1242B9D016A8082A852AA15AA811FA163A055D80AE4203D03D6814
          9A827E85DEC3084C82A9B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F0
          4EB802AE838FC1EDF005F83A7C071E819FC3B3084088080D51430C1106E282F8
          2111482CC24736208548395287B4205D482F720B1941A69177280C8A82A2A30C
          51B6284F54088A854A436D4015A32A514751EDA81ED42DD4286A06F5094D462B
          A10DD036682FF42A741C3A135D802E4737A0DBD097D077D0E3E837180C8686D1
          C158613C31E19804CC3A4C31E600A615731E338019C3CC62B15879AC01D60EEB
          87656205D802EC7EEC31EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872B
          C735E1CEE2067113B879BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F
          274813740876846042026133A182D042B844784878452412D589D6C4002297B8
          8958413C4EBC421C25BE23C990F4492EA4489290B4937484749E748FF48A4C26
          6B931DC91164017927B9917C91FC98FC5682226124E125C196D8285125D12E31
          28F142122FA925E924B9563247B25CF2A4E40DC96929BC94B6948B14536A8354
          95D429A961A959698AB4A9B49F74B274B17493F455E94919AC8CB68C9B0C5B26
          5FE6B0CC4599310A42D1A0B85058942D947ACA25CA381543D5A17A5113A845D4
          6FA8FDD4195919D965B2A1B259B255B267644768084D9BE6454BA295D04ED086
          68EF97282F715AC259B26349CB92C12573728A728E721CB942B956B93B72EFE5
          E9F26EF289F2BBE53BE41F29A014F415021432150E2A5C529856A42ADA2AB214
          0B154F28DE578295F4950295D6291D56EA539A555651F6504E55DEAF7C51795A
          85A6E2A892A052A67256654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE8
          3DF4193525354F35A15AAD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A3
          4CA35B63465355D3573357B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B
          9B7687F6A48E9C8E974E8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF
          80DE4D7D58DF423F5EBF4AFF86016C6069C035386030B014BDD47A296F69DDD2
          614392A193618661B3E1A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F26
          16264926F5260F4C654C5798E6997699FE6AA66FC632AB32BB6D4E367737DF68
          DE69FE7299C132CEB283CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E5969
          5A455B555B0D33A80C7F4631E38A35DADAD97AA3F569EB77369636029B1336BF
          D81ADA26DA36D94E2ED759CE595EBF7CCC4EDD8E69576B37624FB78FB63F643F
          E2A0E6C074A87378E2A8E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63C
          E762E3B2DEE5BC2BE2EAE15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3
          C2639DC7794FB4A7B7E76ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC
          2BBD9FF8E8FBF07DBA7C61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2
          D7F14FF3FF3E0013E01F5015F034D0343037B03788121415D414F426D839B824
          F841886E8830A43B54323432B431742ECC35AC346C6495F1AAF5ABAE872B8473
          C33B23B011A1110D11B3ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D6
          26AD3D132519C58C3A198D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC
          7DACE76C4776197B8A63C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9F
          E6BA702BB92F133C136A12E612FD128F242E248525B526E392A3934FF1647889
          BC9E149594AC94815483D482D491349BB4BD69337C6F7E433A94BE26BD534015
          FD4CF50975855B85A319F61955196F3343334F664967F1B2FAB2F5B377644FE4
          B8E77CBD0EB58EB5AE3B572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38
          BEC963D3D1CD84CD899B7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B
          0B240AF805C3DB6CB7D56C476DE76EEFDF61BE63FF8E4F85ECC26B452645E545
          1F8A59C5D7BE32FDAAE2AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A9
          74694EE9D81EDF3DED65F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7
          A273BFE6FE5DFB3F54C657DEA972AE6AAD56AADE513D77807D60F0A0E3C1961A
          E59AA29AF787B887EED67AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D
          0D0A0D450D1F8FF08E8C1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBB
          F98DEB379D2D862DB5ADB4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB
          775ADF55B751DA0ADBA1F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6F
          F4FD91D36AA7ABCEC89E29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8E
          EA7E7071D5C5DB3D013DFD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97A
          EA1AE35AC775CBEBED7D167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB
          07CE0E3A0C5EB8E57AEBF26DAFDBD7EFACBC333014327477387278E42EFBEEE4
          BDA47B2FEF67DC9F7FB0E921FA61E123A947E58F951ED7FDA8F763EB88E5C899
          51D7D1BE27414F1E8CB1C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7
          DCA76E3E5BFD6CFC79EAF3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE
          92FF72E1D7E257F2AF8EBC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778
          D7FB3EECFDC47CE607EC878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FBE2E6
          1DC2000000097048597300002E2200002E2201AAE2DD92000009274944415458
          47BD97095454471686ABDB2692183562A2897112457189239A5123989C98D121
          4E14711C0D105034B2A841300AE2828AA3B81C7709A222486646418F209B4082
          B80EB20AEE22C8D26C0D028274D3FDFAF5F2EEFCAF0306475CE664CEF439DFB9
          F56E55DDFB5775BDAA7A12D6E927E8F57F6452A93393488674F6FF0FCB3C629D
          636A758CB467CF874FC525A371070902FD3F7E06BDBE58515939EE8900C168DC
          DE91D8683008862E10FD5D81C6C27F8929555D6D6D557E66E6102608C2E7A203
          AA8C3A9DCE20A2EF44573EB11E0D9F0BEA8DCF03FD8C188801F9282F3BFB9428
          E0942840ABD5723A9E7F069EE7B522A87B06F85FFA433FBE03B188B26994E220
          B2B3B3D50CD37F1E8A88E3B8568878028FF213785EF42B3B805FF9049E5722B0
          F8ACEA129E57A1FE17B4DA36118868C3C0DB72B2B3499C81342DA731AAD5AA3A
          24A843833A347E1AADB61EFE7AF8BBE221FC4FD0EBF475069D01EDF906F46940
          9D09246DD089CF5A6D23CA8DC8DB9C9599691405A4B4A9546AA55259AC51AB8B
          398DE629341A4D097C2678135CB19EE3EF1B389D091DC797E8797DB108EA4A5A
          54CD35D52DD50ACCF5039D962FD56A34658851DE890A88A840DEEABCDC5C4EFC
          0B925B5A5A1A1EB7B4E468DADAB291A8831C944DA0732EA7E1B2B59C364BA551
          5D57342BCAAA1F5595973795D5E657E73714D5DF93973755143F563F2E296A2C
          D21DBD166E4C2A4CAE7FA46CB9817ED710A3E057D48598890208B873BDA0A099
          61E927363536964144320424219948B209B5FAAC46A33ECB737C429BA6ED9CA2
          55517EB3FEA626B524854EDE89A1983BD1145E7084C20B8F50D4F528E3F9F20C
          7D347C41091B28F060A0F073EDC57B8FF8E6F38893AE51B7A5239609CC403A04
          FCEBEEEDDB350C2BF24C7D5DDD8DE6E6E663481A817520126942A33906B54739
          2D175DD552A9C8A8C8A090DCFDB4E1E27A5A736135059C5F45AB3302684DC66A
          5A7F2190822E6FA4D5A901E41FBA4A08BAB84319C9C51595F015895A8E3B2E82
          857E4204318F43404269494931D3715C6C4D75F5659552B9D3A8D76FD5EBF55B
          DA09C6FFBA050B6857C5A38AD2940729B4168996A52E259FD465E47B06C42D23
          9F646FF24D4319F88836C1877CC2961B8215A16567848C9406BE3184E7B85D62
          1C131CB71BF177414078A55C5EC8F0DFC4E1BFD8DFD4D46407E7226C11DFC32E
          073E602916D4C9F4F2745A75CE9F3C92DC6971822779EEF7208F1D9E46F7504F
          DD7789DF197C52BD6971B227F032E175D893FCE3032B2F09792178E9FDF0DAFB
          21AE0994FDB173AE44ECADD555555719D7D67626FBEAD5F5E2BE8CFDE84D54FC
          1E4C07AEE0DBAB959937F6E6EEA1F9F1AEB420611EB985CCA3F9C10BB55E0FD6
          DCFB9B62DFED885B113A9F346F7213EBE3DDD0C68DDC22E7D3C27D1E8FC334D1
          118DF4C80B8917209609941742801BCAFE8ADADA0B260179393941C82FED381C
          20A41B1ABCD3AA6E9D187D2BFAB67F861F39C73992CB4967725CEB28B85EF096
          6F12C2D27295F9A51137C2C9F984237D1D3D879C4E7F4D8EB1E0C7B93437C851
          B7BA7A7BFC0DA1C41DB16683BF766216CA8BEB148AF4CE02BAFDE7B1EB72C2A5
          4F60C6BAA289C726D0D0504B9AB87B027DEE3B45EBDAB0322BA3F54A51FCFD38
          723DE44CF6EBED05E7934E866F621D69F62907FA4B9403CD0C70307A55AC4BCF
          10721623D90C30B3135FA1EC8EC5FFF30B052C895BD2CF35CEA562C08177896D
          66245901E6C854332BDD2FC594C6A86C374F24CB594374638F7D513DF7AC93C6
          3E7A3AD946D9D0672193C866C9A77AFB728FB4C342AC0B66741C12FE0158A33C
          027C80B28D42A1487EA100BB5DD63DBEF871F2F9A1619624DB2221B32009BDBE
          BEBB7ED1050FD5F4C3D3888D60C4F6F52E628265A443EA9C8A91615664B64D4A
          E62BCC4836D59C93C9471CEB21D88CEEEA420311836A158AC4170A103BDA46DA
          EC1913319A5E0B969159B0947AEE7C83FA6F7C9BD83826B0953DE58C1B74BCAF
          603B7F6FDEDEBBA38F8C24E95646D20510662753B1FAC1614C1869D59500CCC0
          10CCC0CB050CFA6190C3E0031F1ADFD86E6E12208E90392381BBB942D6322269
          98302D20E961EAEEBD59BBF97E7B2C48162C21E964D4FBF5AA64C691DB188DFB
          E03709603FB0BE167B2D2EBDB7BF3FBDB6B51B66A21B99AD96D280D0816AC70C
          E787C159C1F26D578285F1911F93D97609C93C25C4AC254676796026133EF264
          64D9FBB70940EF7557D76D98193B83BA6F8300CC40F79D32EAB7DF82861F1A42
          C38F0EA53EFB7A9134989119924B4663F49BFAC8997E442413464DC2D3336F97
          28E895FF82C40789A34E3F387577D26E5B924C63D4CD0989BC25D4CD1B6FC452
          845F0CE013A75D32562AB00D6F5531DDB058268C70C30C583CEF46FDCA029C62
          9DBC26EE9A40121B4CEDBAB7CAB0F0CAD83433A564AA4C2BB19369D91419CFEC
          CD95CCBF7715FB69600E124721F102260C1FF0A2EBFCAF02349A33D7F2F29EDA
          099FEA8835C0EC5824F3785D8EE02710DC87950E5ACEE496BB59A5E54113AD43
          43E00FC28A5F84C498F60FFABCEC5BE289009C50F138977764656559C0D9AB9D
          9EEDE7420F58F389D5DF58F57A3C6EC99BC204CFF1E462E92EECB1B016E60EB6
          14665889BC2FFCC96A80F0E5EF3E115C7B05D14559FBB922455F1149074F7D04
          E135C4569C28DE0792CA4B4B23F0A1301EC9C7083C3F067674FBA1340A762418
          8693EDE3D342FA78ADA0B512371141237C08FFC076DE871D00DE6BB703D0E65D
          94FB837EE01D3CBF0DDB175888830363EB6A6A7E12AF64698DF5F5C9AAE6E679
          A874C64925E288F25C7CAACD819D2DE88559C01E4C874FDCD7BF82FD339EBF04
          76602A98227EDA093A61B2A0D389DF1A9FA1DDA7C056DC76C127600210076A0D
          1C4A4B4B2F32245B854BC9755C4676C0190C415BC0667CAA6D42DD46B0010482
          B56430AC810D00E299EE075680EF812F5806BCC152B0046DBD603D31A3EEB0DF
          8205A663D860988F3C4E20F0CAA54B27C5F7B12F9C69B0D92045BCA482249413
          60E3411C8805A7C1291003A2C109F04FF00FF077100522410408074710E31038
          084241087C0760F789DCBD73272E3232D2DEB42E542A9535EE7F3770EDE650D9
          006A410DA86EA70AB612C88178A52E6FA71456E4012801C5E03E2802F7C05D70
          07DC06B74470F52BC1C8CB434343FD3ADF4198422EFFE8D6CD9B4985F9F9EA9B
          D7AF53E1B56BAF4401DA15E4E7BF906BEDF519E7CED191C387EFF9FAFABA7724
          FF37D52E84BF985DBE670000000049454E44AE426082}
        PictureDown.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          396943435050686F746F73686F70204943432070726F66696C65000048C79D96
          775454D71687CFBD777AA1CD30D2197A932E3080F42E201D045118660618CA00
          C30C4D6C88A840441111014590A08001A3A148AC88622128A8600F4810506230
          8AA8A86446D64A7C7979EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E
          2F059602209927E0077A38D3578547D0B1FD0006788001A6003059E9A9BE41EE
          C140242F37177ABAC809FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000
          C85FC4E66C4E3A4BC4F9224ECA14A48AED3322A6C6248A194689992F4A50C472
          628E5BE4A59F7D16D951CCEC641E5BC4E29C53D9C96C31F788787B86902362C4
          47C405195C4EA6886F8B58334998CC15F15B716C3287990E008A24B60B38AC78
          119B8898C40F0E7411F1720070A4B82F38E60B1670B204E243B9A4A466F3B971
          F102BA2E4B8F6E6A6DCDA07B723293380281A13F9395C8E4B3E92E29C9A94C5E
          36008B67FE2C19716DE9A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22
          BD0AF8DC3388D6F787EDAFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF
          0F9BE6210024457D6BBFF1C57968E279891708526D8C8D3333338DB81C9691B8
          A0BFEB7F3AFC0D7DF13D23F176BF9787EECA89650A93047471DD58294929423E
          3D3D95C9E2D00DFF3CC4FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851
          BB796CAE809BC2A37379FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002
          E4E73E80A21001127950DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE70
          89F891CE8DFB1CE712184C6709F9198B6BE26B09D08000240115C80315A00174
          8121300356C016380237B002F88160100ED602168807C9800F32412ED80C0A40
          11D805F6824A5003EA41236801274007380D2E80CBE03AB809EE800760048C83
          E76006BC01F310046121324481E42155480B3280CC2006640FB9413E5020140E
          454371100F1242B9D016A8082A852AA15AA811FA163A055D80AE4203D03D6814
          9A827E85DEC3084C82A9B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F0
          4EB802AE838FC1EDF005F83A7C071E819FC3B3084088080D51430C1106E282F8
          2111482CC24736208548395287B4205D482F720B1941A69177280C8A82A2A30C
          51B6284F54088A854A436D4015A32A514751EDA81ED42DD4286A06F5094D462B
          A10DD036682FF42A741C3A135D802E4737A0DBD097D077D0E3E837180C8686D1
          C158613C31E19804CC3A4C31E600A615731E338019C3CC62B15879AC01D60EEB
          87656205D802EC7EEC31EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872B
          C735E1CEE2067113B879BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F
          274813740876846042026133A182D042B844784878452412D589D6C4002297B8
          8958413C4EBC421C25BE23C990F4492EA4489290B4937484749E748FF48A4C26
          6B931DC91164017927B9917C91FC98FC5682226124E125C196D8285125D12E31
          28F142122FA925E924B9563247B25CF2A4E40DC96929BC94B6948B14536A8354
          95D429A961A959698AB4A9B49F74B274B17493F455E94919AC8CB68C9B0C5B26
          5FE6B0CC4599310A42D1A0B85058942D947ACA25CA381543D5A17A5113A845D4
          6FA8FDD4195919D965B2A1B259B255B267644768084D9BE6454BA295D04ED086
          68EF97282F715AC259B26349CB92C12573728A728E721CB942B956B93B72EFE5
          E9F26EF289F2BBE53BE41F29A014F415021432150E2A5C529856A42ADA2AB214
          0B154F28DE578295F4950295D6291D56EA539A555651F6504E55DEAF7C51795A
          85A6E2A892A052A67256654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE8
          3DF4193525354F35A15AAD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A3
          4CA35B63465355D3573357B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B
          9B7687F6A48E9C8E974E8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF
          80DE4D7D58DF423F5EBF4AFF86016C6069C035386030B014BDD47A296F69DDD2
          614392A193618661B3E1A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F26
          16264926F5260F4C654C5798E6997699FE6AA66FC632AB32BB6D4E367737DF68
          DE69FE7299C132CEB283CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E5969
          5A455B555B0D33A80C7F4631E38A35DADAD97AA3F569EB77369636029B1336BF
          D81ADA26DA36D94E2ED759CE595EBF7CCC4EDD8E69576B37624FB78FB63F643F
          E2A0E6C074A87378E2A8E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63C
          E762E3B2DEE5BC2BE2EAE15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3
          C2639DC7794FB4A7B7E76ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC
          2BBD9FF8E8FBF07DBA7C61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2
          D7F14FF3FF3E0013E01F5015F034D0343037B03788121415D414F426D839B824
          F841886E8830A43B54323432B431742ECC35AC346C6495F1AAF5ABAE872B8473
          C33B23B011A1110D11B3ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D6
          26AD3D132519C58C3A198D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC
          7DACE76C4776197B8A63C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9F
          E6BA702BB92F133C136A12E612FD128F242E248525B526E392A3934FF1647889
          BC9E149594AC94815483D482D491349BB4BD69337C6F7E433A94BE26BD534015
          FD4CF50975855B85A319F61955196F3343334F664967F1B2FAB2F5B377644FE4
          B8E77CBD0EB58EB5AE3B572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38
          BEC963D3D1CD84CD899B7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B
          0B240AF805C3DB6CB7D56C476DE76EEFDF61BE63FF8E4F85ECC26B452645E545
          1F8A59C5D7BE32FDAAE2AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A9
          74694EE9D81EDF3DED65F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7
          A273BFE6FE5DFB3F54C657DEA972AE6AAD56AADE513D77807D60F0A0E3C1961A
          E59AA29AF787B887EED67AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D
          0D0A0D450D1F8FF08E8C1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBB
          F98DEB379D2D862DB5ADB4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB
          775ADF55B751DA0ADBA1F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6F
          F4FD91D36AA7ABCEC89E29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8E
          EA7E7071D5C5DB3D013DFD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97A
          EA1AE35AC775CBEBED7D167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB
          07CE0E3A0C5EB8E57AEBF26DAFDBD7EFACBC333014327477387278E42EFBEEE4
          BDA47B2FEF67DC9F7FB0E921FA61E123A947E58F951ED7FDA8F763EB88E5C899
          51D7D1BE27414F1E8CB1C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7
          DCA76E3E5BFD6CFC79EAF3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE
          92FF72E1D7E257F2AF8EBC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778
          D7FB3EECFDC47CE607EC878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FBE2E6
          1DC2000000097048597300002E2200002E2201AAE2DD92000008E64944415458
          47BD97095414471AC70BC44483C7C6239BA06B8C3E4DD6448C2B11AFD5ACAE71
          8DA8F188B88841C222A8F144259E78E0F194446451510163222A4F9001549443
          89AB5C82A05C82C3700CCC7039E80CD33D3D47D7FE6B1C105744F765DFF67BBF
          F77DFD55757DFF3ABAABDA8AB4B94483E12FC4DA7A21B1B21ADC36FE3FF405B4
          9544B4DA73D6DDBBD73DD72E3599F65351A4FF8FCB683094282A2B47B50A104D
          A67D2D894D46A3686C07166F0F5416FF4BCCA994353555776EDD1A4C44519CC8
          025065D2EBF54686A10DEDC558392ABE14949B5E069E33A12346E4A359E9E991
          4C402413A0D3E978BD20BC8020083A06CA5E00F1575E784E6881B9F0CDBD649D
          484F4FD7120C7F0A14519EE79F40442B02FC560481C5D52D20AE6E4510D46898
          DD6BDA451034287F8A4ED7CC80886674BC39233D9DB21148D0F19C49ABD52891
          40890A4A547E1E9DAE16F15AC4DBA30EF156F406831293C3EAD5E3997AB30548
          5AAF67F73A5D03FC06E455A5DDBA6562022E376B345AB55A5DC269B5253CC73D
          07C771A5883D83E74BD0E0038CA2195E104A05AC6A0646B19453A9AA9BAAE40A
          2479887A521DC795A10D591BCA21A21C79E55999993C9B82F8A6A6A6FAC74D4D
          195C73733A92B59001DF0C1ECEE478C475BA345EA3C97D52A3285355C965AA32
          598D322BBBBEBEA8B8E291ACBC44FBF871694351B13EE778A82957125FAB6E68
          CCC3F3D920E719DABB18891C0828C8CDC951112CFDD8C6868632888887803824
          63C49BD16A2F31B03625284B522B14B2BABCFBDCC34B09B4F06C242D8888A477
          8F9DA4B92127695ED84F2659528AA120E23C956CDB418F6CDE22D65CBD562434
          36A6A08D444EDB9CC871B00023900801FF2ACCCFAF265891176B95CA3C954A15
          8EA4A158078C30331C170E7B52CFEBCE3EAEAC525424A6D0CC1FFF496F6CF6A3
          D7376CA6293EDFD3E4F59B6832FCEB9BB6D35FB7EEA457701FECB341BCE1E7A7
          E6C3C38B85D2D2581DCF9F61608A2218188133102091969696103DCF4755CBE5
          BF6AD4EA032683618FC160D86DC1DF6C05E1A04A562E7D187FC59CE88AD74A7A
          65F96A7A1144AF584DE36113DA2059BE861EFB6EB551E1EF5F6692482E0BF5F5
          4102CF1FC47A780ACF07A0DD831070A2B2A2E22EC1DC44632E021B1B1BA722F8
          2D3E116B605783956099BA4A7E5E762D8926ADF3A5714BBCA8C463193DECB194
          EEF7F0341D71F7D0C72F5D61BCB20C42106F21C403F5D6AFAF1453538344BDDE
          078BD507ED9A81BF1E5FCE75687B8FBCAAEA36E19B9B2FA6DFBEBD957D97F13D
          EA86824FC09760916814DDAB6FDECECB0C08A4310BDDA8C4C59D062D72A37B5C
          17EB4ABDBC8A6A77EECA2F0C09D527A0D7312E4B68CC22772A01618B96D0C025
          EE8FB9909050DAD0B01489DDD09E19F84B20E01BF8EB153535D7CD02B23232FC
          90DFBA657380904EA8D057FFA4D1B1E04C647EF2DA8D347ADEDFE9B905AE74F3
          D7CEE27557D70A71E7CE044D46A634F778188D98EF42CFCE71A61750276AEE42
          FA13D839EF6B7DA5AF6F8C989FE781B6E680B96D980DDF4BA95024B615D0E93F
          B7DD4B2E2E6FA7F86E2D0E1F3996060FFC90068C1A4B57FD7992AECED535AD39
          39A5F84194841E735E4CB77F394B447263148444CE98474F39CDA5BE336699CA
          BDBD13C5E4642F249B0166B6613A7C0F2CFE6B1D0AB8EDEAFD4EF482C5E587FB
          0EA0BB88355D433AD1F956561AF9CC99A9D28848CDAECFC6D3AF060ED29F1E31
          529EF0D502EEECB4D9F494C3041AE438917A3B8E33C89C9C12C49010178CE828
          24FC13B087FF1118007F8C42A188EF50C035FBA9B6BF8C9F9C72F4FD0FE96EF2
          26F5035B3BDB1A52DDFEA109F9C2897E8465738890629190B0AB33E6941F1DF4
          09DD6BD585AEE9644BA774EACCCB6C6CC2455BDBE1ED1D682062608D4211DBA1
          00F6E0CF0E637F38396C24F5B77A8BFA932EF4C01BBFA3DB7BF5A3384D886B09
          A9D0127246ECDD7B71D6811F0B8F0F1D41F790CED48DD8D0A9846894841C85B8
          21ED09C0080CC608BC5A40A8DDC05941FD079BF6D974370BD80B7066A39E8428
          9A6C6CE2C4A14337D65D8C0B483B1828FCD0F35DD479937E8EA95A4748A58990
          BD949001BF49C069427A0776EF9B1AD8A73F7AD71509BA525F2409EED34F9B32
          D7B92E6DC79E8A9BBBF78961F68E741FE29EE40D3A8258996E10720BBDF78480
          9EBF49007B387DE3E66D51D367637EBB6204BAD203E42D1AD8F33D7AEC8361F4
          043864DB07C23A9B930FC7E8E09DAED0635D40C0380878E1ED626DBEF6143C8C
          8DFDB8E47C546180E3043A0D8D3B23D10A245A81795E8E7B2F73CC9A4EC2B07F
          4AACC46D8454E1E81B85E4DF805E2F3B51BFB680D8B92E4B0F8E1A47C720C926
          42CAB0F0CAA611A29E4288EEAF6032218213EE7D90F82A211998F75348EC86C5
          69D7D171FE99008EBB989D95F5DC97B0ED836C0D4CC7707A6058D17004582925
          64B58C90007084F1889020C4FDC0B796617FFB55FF12AD02B043C5605FDE9F96
          96D60BC11E16BA5BF6055BD82EF2898E431EF5E8E12D76EBE6491D1C06891E1E
          BD447BFB0FC441838698E9D76F886867F70771F4E81ED4CFCFC6B2AF58E35986
          550BCFFD04E135C4A738969D07E2645269287E141C907C8428082360875B36A5
          8F61FF08868A494923C50B171CC4274F86B08F0862EF83FE16FAC1DA81F72CD6
          0E75DE85FF7BF00EE88BFB3EB0BD412FD639F0A9B2BAFA2A3B922534D4D6C66B
          542A57142EC44EC558007F3E7ED5E6C1B28D846D1E4E80ED92ECBB3E1D657F83
          FD02B06D7C0A98CC7EED6027610B66FF1A13E08F0763C118301A7C065847EDC1
          2CA9547A8320D9061C4A727118D98FA03F04ED06BBF0ABB60365DBC136B0056C
          A246E3F7B01B01DBD37DC05AB006AC02DF81156019F046DDA5B09E18510F5877
          E066DE868DC6C5C8E30CB6DC4C4D3DCFDEC7DE0826C0A683CBEC900AE2E04B60
          63403488021740243807CE8208F00BF8199C06A74018080527C071B4710C1C01
          C12008B1C3B08718850505D161616178817069341A7B9CFFF2048EE351580F6A
          4035905BA882AD0415801DA96516A4B08C87A014948007A0181481425000F2C1
          7D068E7EA5E8B92C3838186FEEB333085154540CBB7FEF5EDCDD3B77B4F77273
          E9DDECECD72207F572EEDCE9906C4B797252123D1E1252B46AD52ABCD54F93FF
          1B7A507C18EBCC28B00000000049454E44AE426082}
        ParentFont = False
        TabStop = True
        TabOrder = 0
        Text = 'Cancelar'
        Version = '5.0.1.4'
        OnClick = BtnCancelClick
      end
    end
  end
  object DsPersonal: TDataSource
    Left = 280
    Top = 24
  end
  object DsImss: TDataSource
    Left = 752
    Top = 400
  end
end
