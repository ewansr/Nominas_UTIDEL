object FrmPlazaGeneral: TFrmPlazaGeneral
  Left = 0
  Top = 0
  Caption = 'Nueva Solicitud de Plazas Vacantes'
  ClientHeight = 404
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 714
    Height = 373
    Align = alClient
    Caption = 'Datos Solicitud de Plaza'
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 145
      Top = 14
      Width = 2
      Height = 357
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Color = clBackground
      ParentColor = False
      ResizeStyle = rsUpdate
      ExplicitHeight = 314
    end
    object Panel1: TPanel
      Left = 2
      Top = 14
      Width = 143
      Height = 357
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Panel4: TPanel
        Left = 0
        Top = 327
        Width = 143
        Height = 30
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alBottom
        BevelOuter = bvNone
        Padding.Left = 15
        Padding.Top = 5
        Padding.Right = 15
        Padding.Bottom = 5
        TabOrder = 0
        object btnCargarImagen: TAdvGlowButton
          Left = 15
          Top = 5
          Width = 113
          Height = 20
          Align = alClient
          Caption = 'Cargar imagen'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 143
        Height = 25
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '     Solicitud:'
        TabOrder = 1
      end
      object Panel6: TPanel
        Left = 0
        Top = 25
        Width = 143
        Height = 302
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 15
        Padding.Right = 15
        Padding.Bottom = 5
        TabOrder = 2
        object img2: TJvImage
          Left = 15
          Top = 0
          Width = 113
          Height = 297
          Align = alClient
          AutoSize = True
          Center = True
          Proportional = True
          Stretch = True
          ExplicitHeight = 254
        end
      end
    end
    object Panel3: TPanel
      Left = 147
      Top = 14
      Width = 565
      Height = 357
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 565
        Height = 31
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel11: TPanel
          Left = 336
          Top = 0
          Width = 229
          Height = 31
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alRight
          BevelOuter = bvNone
          Padding.Top = 5
          Padding.Right = 20
          Padding.Bottom = 6
          TabOrder = 0
          object dtpFecha: TAdvDBDateTimePicker
            Left = 121
            Top = 5
            Width = 96
            Height = 21
            Date = 41157.685439814820000000
            Time = 41157.685439814820000000
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Kind = dkDate
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            BorderStyle = bsSingle
            Ctl3D = True
            DateTime = 41157.685439814820000000
            Version = '1.1.0.1'
            LabelCaption = 'Fecha Requerido:'
            LabelPosition = lpLeftCenter
            LabelMargin = 5
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -13
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            DataField = 'FechaDocumento'
            DataSource = dsUptPlazaGeneral
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 241
          Height = 31
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alLeft
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 1
          object edtCodigo: TDBAdvEdit
            Left = 84
            Top = 6
            Width = 149
            Height = 20
            LabelCaption = 'C'#243'digo de alta:'
            LabelPosition = lpLeftCenter
            LabelMargin = 5
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Enabled = True
            TabOrder = 0
            Visible = True
            Version = '2.9.0.0'
            DataField = 'codigoplaza'
          end
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 31
        Width = 565
        Height = 98
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Right = 3
        TabOrder = 1
        object grp1: TAdvGroupBox
          Left = 3
          Top = 0
          Width = 559
          Height = 89
          Align = alTop
          Caption = 'Solicitante'
          TabOrder = 0
          object lbl1: TJvLabel
            Left = 15
            Top = 47
            Width = 39
            Height = 13
            Caption = 'Puesto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object lbl2: TJvLabel
            Left = 15
            Top = 65
            Width = 75
            Height = 13
            Caption = 'Departamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object lblCargoHist: TJvLabel
            Left = 55
            Top = 47
            Width = 14
            Height = 13
            Caption = '---'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object lblDeptoHist: TJvLabel
            Left = 90
            Top = 65
            Width = 14
            Height = 13
            Caption = '---'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object img1: TImage
            Left = 140
            Top = 22
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
          object lblSolicitante: TJvLabel
            Left = 170
            Top = 24
            Width = 17
            Height = 13
            Caption = '---'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object edtCodigoSolic: TAdvEditBtn
            Left = 15
            Top = 23
            Width = 119
            Height = 18
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
            TabOrder = 0
            Visible = True
            OnKeyPress = edtCodigoSolicKeyPress
            Version = '1.3.2.8'
            ButtonStyle = bsButton
            ButtonWidth = 18
            Etched = False
            ButtonCaption = '...'
            OnClickBtn = edtCodigoSolicClickBtn
          end
        end
      end
      object pnlFirmantes: TPanel
        Left = 0
        Top = 275
        Width = 565
        Height = 82
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Splitter2: TSplitter
          Left = 264
          Top = 0
          Width = 2
          Height = 82
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          ExplicitHeight = 66
        end
        object pnlAutoriza: TPanel
          Left = 0
          Top = 0
          Width = 264
          Height = 82
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alLeft
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Right = 5
          TabOrder = 0
          object JvLabel6: TJvLabel
            Left = 5
            Top = 0
            Width = 254
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            Alignment = taCenter
            Caption = 'AUTORIZA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
            ExplicitWidth = 61
          end
          object JvLabel2: TJvLabel
            Left = 13
            Top = 37
            Width = 39
            Height = 13
            Caption = 'Puesto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel3: TJvLabel
            Left = 13
            Top = 56
            Width = 75
            Height = 13
            Caption = 'Departamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object lblCargoAutoriza: TJvLabel
            Left = 52
            Top = 37
            Width = 14
            Height = 13
            Caption = '---'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object lblDepartamentoAutoriza: TJvLabel
            Left = 88
            Top = 56
            Width = 14
            Height = 13
            Caption = '---'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object cbAutoriza: TComboBox
            Left = 5
            Top = 13
            Width = 254
            Height = 20
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            Style = csDropDownList
            TabOrder = 0
            OnChange = cbAutorizaChange
          end
        end
        object pnlVoBo: TPanel
          Left = 266
          Top = 0
          Width = 299
          Height = 82
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Right = 5
          TabOrder = 1
          object JvLabel7: TJvLabel
            Left = 5
            Top = 0
            Width = 289
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            Alignment = taCenter
            Caption = 'Vo. Bo.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
            ExplicitWidth = 39
          end
          object JvLabel4: TJvLabel
            Left = 13
            Top = 37
            Width = 39
            Height = 13
            Caption = 'Puesto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object lblCargoVoBo: TJvLabel
            Left = 52
            Top = 37
            Width = 14
            Height = 13
            Caption = '---'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel8: TJvLabel
            Left = 13
            Top = 56
            Width = 75
            Height = 13
            Caption = 'Departamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object lblDepartamentoVoBo: TJvLabel
            Left = 94
            Top = 56
            Width = 14
            Height = 13
            Caption = '---'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object cbVoBo: TComboBox
            Left = 5
            Top = 13
            Width = 289
            Height = 20
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            Style = csDropDownList
            TabOrder = 0
            OnChange = cbVoBoChange
          end
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 201
        Width = 565
        Height = 74
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        BevelOuter = bvNone
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 10
        TabOrder = 3
        object edtObservaciones: TDBRichEdit
          Left = 84
          Top = 5
          Width = 476
          Height = 59
          Align = alClient
          DataField = 'observaciones'
          DataSource = dsUptPlazaGeneral
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PlainText = True
          TabOrder = 0
        end
        object Panel9: TPanel
          Left = 0
          Top = 5
          Width = 84
          Height = 59
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Observaciones:'
          TabOrder = 1
        end
      end
      object AdvGroupBox1: TAdvGroupBox
        Left = 0
        Top = 129
        Width = 565
        Height = 72
        Align = alTop
        Caption = 'Informaci'#243'n para contrataci'#243'n'
        TabOrder = 4
        object Panel13: TPanel
          Left = 2
          Top = 15
          Width = 91
          Height = 55
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object JvLabel1: TJvLabel
            Left = 20
            Top = 8
            Width = 65
            Height = 12
            Caption = 'Organizacion:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -10
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel5: TJvLabel
            Left = 16
            Top = 31
            Width = 69
            Height = 12
            Caption = 'Departamento:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -10
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
        object Panel14: TPanel
          Left = 93
          Top = 15
          Width = 470
          Height = 55
          Align = alClient
          BevelOuter = bvNone
          Padding.Top = 6
          Padding.Right = 8
          Padding.Bottom = 6
          TabOrder = 1
          object Panel15: TPanel
            Left = 0
            Top = 29
            Width = 462
            Height = 20
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object cbDepartamento: TDBLookupComboBox
              Left = 0
              Top = 0
              Width = 462
              Height = 18
              Align = alClient
              DataField = 'IdDepartamento'
              DataSource = dsUptPlazaGeneral
              KeyField = 'IdDepartamento'
              ListField = 'TituloDepartamento'
              ListSource = dsDepartamento
              TabOrder = 0
            end
          end
          object Panel16: TPanel
            Left = 0
            Top = 6
            Width = 462
            Height = 20
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object cbOrganizacionRuta: TComboBox
              Left = 0
              Top = 0
              Width = 462
              Height = 20
              Align = alClient
              Style = csDropDownList
              TabOrder = 0
              OnChange = cbOrganizacionRutaChange
            end
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 373
    Width = 714
    Height = 31
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Padding.Top = 3
    Padding.Right = 8
    Padding.Bottom = 3
    TabOrder = 1
    object CxBtnCargar: TcxButton
      Left = 559
      Top = 3
      Width = 73
      Height = 25
      Align = alRight
      Caption = '&Aceptar'
      Default = True
      LookAndFeel.SkinName = 'LondonLiquidSky'
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
      TabOrder = 0
      OnClick = CxBtnCargarClick
    end
    object CxBtnCancel: TcxButton
      Left = 632
      Top = 3
      Width = 74
      Height = 25
      Align = alRight
      Caption = '&Cancelar'
      LookAndFeel.SkinName = 'LondonLiquidSky'
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
      TabOrder = 1
    end
  end
  object dsUptPlazaGeneral: TDataSource
    Left = 528
    Top = 80
  end
  object dsOrganizacionRuta: TDataSource
    DataSet = ClientModule1.cdOrganizacionRuta
    Left = 456
    Top = 136
  end
  object dsDepartamento: TDataSource
    DataSet = cdDepartamento
    Left = 352
    Top = 208
  end
  object cdDepartamento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 208
  end
end
