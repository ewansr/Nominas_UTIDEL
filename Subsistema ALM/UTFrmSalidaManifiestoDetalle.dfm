object FrmSalidaManifiestoDetalle: TFrmSalidaManifiestoDetalle
  Left = 0
  Top = 0
  Caption = 'Partidas del manifiesto'
  ClientHeight = 507
  ClientWidth = 760
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
  DesignSize = (
    760
    507)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 313
    Align = alTop
    TabOrder = 0
    DesignSize = (
      760
      313)
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 760
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 8
        Top = 12
        Width = 89
        Height = 23
        Caption = 'Salida #:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -19
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 521
        Top = 12
        Width = 126
        Height = 23
        Caption = 'Consecutivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -19
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblSerie: TJvLabel
        Left = 103
        Top = 12
        Width = 74
        Height = 23
        Caption = 'lblSerie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -19
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object edtConsecutivo: TEdit
        Tag = 99
        Left = 639
        Top = 9
        Width = 101
        Height = 31
        Margins.Right = 6
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        Text = 'edtConsecutivo'
        OnEnter = edtConsecutivoEnter
        OnExit = edtConsecutivoExit
        OnKeyDown = edtConsecutivoKeyDown
      end
    end
    object tab1: TAdvSmoothTabPager
      Tag = 99
      Left = 7
      Top = 66
      Width = 750
      Height = 241
      Anchors = [akLeft, akTop, akRight]
      ActivePage = AdvSmoothTabPager11
      TabPosition = tpTopLeft
      TabSettings.StartMargin = 4
      TabReorder = False
      TabOrder = 1
      object AdvSmoothTabPager11: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 748
        Height = 213
        Caption = 'Informaci'#243'n'
        PageAppearance.Color = 15066597
        PageAppearance.ColorTo = 15066597
        PageAppearance.ColorMirror = 15066597
        PageAppearance.ColorMirrorTo = 15066597
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = clGray
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
        TabAppearance.ColorDown = clSilver
        TabAppearance.ColorDisabled = 16765357
        object lblLbTipo: TJvLabel
          Left = 15
          Top = 19
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
        object lbl6: TLabel
          Left = 15
          Top = 76
          Width = 60
          Height = 13
          Caption = 'Comentarios'
          Transparent = True
        end
        object lbl8: TJvLabel
          Left = 15
          Top = 49
          Width = 46
          Height = 13
          Caption = 'Almacen:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object lbl9: TJvLabel
          Left = 375
          Top = 49
          Width = 58
          Height = 13
          Caption = 'Referencia:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object cmbTipo: TDBLookupComboBox
          Left = 47
          Top = 16
          Width = 241
          Height = 21
          DataField = 'idtipomovimiento'
          DataSource = dsDatos
          KeyField = 'idtipomovimiento'
          ListField = 'nombretipomovimiento'
          ListSource = dsDsTipo
          TabOrder = 0
          OnClick = cmbTipoClick
        end
        object memcomentarios: TDBMemo
          Left = 15
          Top = 92
          Width = 706
          Height = 46
          DataField = 'comentarios'
          DataSource = dsDatos
          TabOrder = 4
        end
        object cmbidalmacen: TDBLookupComboBox
          Left = 63
          Top = 46
          Width = 272
          Height = 21
          DataField = 'idalmacen'
          DataSource = dsDatos
          DropDownWidth = 300
          KeyField = 'idalmacen'
          ListField = 'codigoalmacen; tituloalmacen'
          ListFieldIndex = 1
          ListSource = dsAlmacen
          TabOrder = 2
        end
        object dbrgrpTipoEmbarque: TDBRadioGroup
          Tag = 99
          Left = 521
          Top = 6
          Width = 204
          Height = 36
          Margins.Top = 1
          Margins.Bottom = 1
          Color = clBtnFace
          Columns = 2
          DataField = 'TipoEmbarque'
          DataSource = dsDatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Embarque')
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'EMBARQUE'
            'DESEMBARQUE')
        end
        object edtReferencia: TDBEdit
          Left = 439
          Top = 46
          Width = 282
          Height = 21
          DataField = 'referencia'
          DataSource = dsDatos
          TabOrder = 3
        end
        object dtfecha: TAdvDBDateTimePicker
          Left = 329
          Top = 16
          Width = 186
          Height = 21
          Date = 41088.020277777780000000
          Time = 41088.020277777780000000
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = dkDateTime
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 5
          BorderStyle = bsSingle
          Ctl3D = True
          DateTime = 41088.020277777780000000
          Version = '1.1.0.1'
          LabelCaption = 'Fecha: '
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          DataField = 'fecha'
          DataSource = dsDatos
        end
      end
      object AdvSmoothTabPage1: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 748
        Height = 213
        Caption = 'Referencias'
        PageAppearance.Color = 15066597
        PageAppearance.ColorTo = 15066597
        PageAppearance.ColorMirror = 15066597
        PageAppearance.ColorMirrorTo = 15066597
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = 16765357
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabVisible = False
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
        TabAppearance.ColorDown = clSilver
        TabAppearance.ColorDisabled = 16765357
        object lbl5: TJvLabel
          Left = 17
          Top = 14
          Width = 20
          Height = 13
          Caption = 'V'#237'a:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object grp1: TGroupBox
          Left = 15
          Top = 38
          Width = 658
          Height = 54
          Caption = 'Origen'
          Color = cl3DLight
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object lbl3: TJvLabel
            Left = 9
            Top = 18
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
          object lblOrigen: TJvLabel
            Left = 210
            Top = 19
            Width = 7
            Height = 14
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -12
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object edtCodigoLugar: TEdit
            Left = 52
            Top = 15
            Width = 122
            Height = 21
            TabOrder = 0
          end
          object btnLugar: TButton
            Left = 180
            Top = 15
            Width = 24
            Height = 21
            Caption = '...'
            TabOrder = 1
          end
        end
        object grp2: TGroupBox
          Left = 15
          Top = 104
          Width = 658
          Height = 88
          Caption = 'Destino'
          Color = cl3DLight
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object lbl4: TJvLabel
            Left = 9
            Top = 18
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
          object lblDestino: TJvLabel
            Left = 210
            Top = 19
            Width = 7
            Height = 14
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -12
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object edtCodigoLugarDest: TEdit
            Left = 52
            Top = 15
            Width = 122
            Height = 21
            TabOrder = 0
          end
          object btnLugarDest: TButton
            Left = 180
            Top = 15
            Width = 24
            Height = 21
            Caption = '...'
            TabOrder = 1
          end
          object edtAreaDestinataria: TDBAdvEdit
            Left = 53
            Top = 48
            Width = 220
            Height = 21
            ReturnIsTab = True
            LabelCaption = #193'rea:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 2
            Text = 'EDTAREADESTINATARIA'
            Visible = True
            Version = '2.9.0.0'
            DataField = 'AreaDestinataria'
            DataSource = dsDatos
          end
          object edtclaveactivo: TDBAdvEdit
            Left = 349
            Top = 47
            Width = 220
            Height = 21
            LabelCaption = 'Activo:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Enabled = True
            TabOrder = 3
            Text = 'edt1'
            Visible = True
            Version = '2.9.0.0'
            DataField = 'claveactivo'
            DataSource = dsDatos
          end
        end
        object cmbViaEmbarque: TDBLookupComboBox
          Left = 43
          Top = 11
          Width = 146
          Height = 21
          DataField = 'idviaembarque'
          DataSource = dsDatos
          DropDownWidth = 300
          KeyField = 'idviaembarque'
          ListField = 'codigoviaembarque; tituloviaembarque'
          ListFieldIndex = 1
          ListSource = dsViaEmbarque
          TabOrder = 2
        end
      end
      object AdvSmoothTabPage2: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 748
        Height = 213
        Caption = 'Embarcador'
        PageAppearance.Color = 15066597
        PageAppearance.ColorTo = 15066597
        PageAppearance.ColorMirror = 15066597
        PageAppearance.ColorMirrorTo = 15066597
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = 16765357
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabVisible = False
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
        TabAppearance.ColorDown = clSilver
        TabAppearance.ColorDisabled = 16765357
        object edtnombreembarcador: TDBAdvEdit
          Left = 98
          Top = 11
          Width = 486
          Height = 21
          LabelCaption = 'Responsable:'
          LabelPosition = lpLeftCenter
          LabelMargin = 6
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 0
          Text = 'EDT1'
          Visible = True
          Version = '2.9.0.0'
          DataField = 'nombreembarcador'
        end
        object edtccostoembarcador: TDBAdvEdit
          Left = 98
          Top = 43
          Width = 151
          Height = 21
          LabelCaption = 'C. Costo:'
          LabelPosition = lpLeftCenter
          LabelMargin = 6
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 1
          Text = 'EDT1'
          Visible = True
          Version = '2.9.0.0'
          DataField = 'ccostoembarcador'
        end
        object edtcgestorembarcador: TDBAdvEdit
          Left = 364
          Top = 43
          Width = 213
          Height = 21
          LabelCaption = 'C. Gestor:'
          LabelPosition = lpLeftCenter
          LabelMargin = 6
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 2
          Text = 'EDT1'
          Visible = True
          Version = '2.9.0.0'
          DataField = 'cgestorembarcador'
        end
        object edtpfinancieraembarcador: TDBAdvEdit
          Left = 98
          Top = 73
          Width = 173
          Height = 21
          LabelCaption = 'Pos. Financiera:'
          LabelPosition = lpLeftCenter
          LabelMargin = 6
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 3
          Text = 'EDT1'
          Visible = True
          Version = '2.9.0.0'
          DataField = 'pfinancieraembarcador'
        end
        object edtfondoembarcador: TDBAdvEdit
          Left = 364
          Top = 73
          Width = 173
          Height = 21
          LabelCaption = 'Fondo:'
          LabelPosition = lpLeftCenter
          LabelMargin = 6
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 4
          Text = 'EDT1'
          Visible = True
          Version = '2.9.0.0'
          DataField = 'fondoembarcador'
        end
        object edtcuentamayorembarcador: TDBAdvEdit
          Left = 98
          Top = 102
          Width = 213
          Height = 21
          LabelCaption = 'Cta. Mayor:'
          LabelPosition = lpLeftCenter
          LabelMargin = 6
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 5
          Text = 'EDT1'
          Visible = True
          Version = '2.9.0.0'
          DataField = 'cuentamayorembarcador'
        end
        object edtembarcacion: TDBAdvEdit
          Left = 98
          Top = 129
          Width = 237
          Height = 21
          LabelCaption = 'Embarcaci'#243'n:'
          LabelPosition = lpLeftCenter
          LabelMargin = 6
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 6
          Text = 'EDT1'
          Visible = True
          Version = '2.9.0.0'
          DataField = 'embarcacion'
        end
        object edtpesototal: TDBAdvEdit
          Left = 98
          Top = 156
          Width = 121
          Height = 21
          LabelCaption = 'Peso total:'
          LabelPosition = lpLeftCenter
          LabelMargin = 6
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 7
          Text = 'EDT1'
          Visible = True
          Version = '2.9.0.0'
          DataField = 'pesototal'
        end
        object edtcostototal: TDBAdvEdit
          Left = 332
          Top = 156
          Width = 125
          Height = 21
          LabelCaption = 'Costo aprox.:'
          LabelPosition = lpLeftCenter
          LabelMargin = 6
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 8
          Text = 'EDT1'
          Visible = True
          Version = '2.9.0.0'
          DataField = 'costototal'
        end
      end
      object AdvSmoothTabPager12: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 748
        Height = 213
        Caption = 'Firmantes 1'
        PageAppearance.Color = 15066597
        PageAppearance.ColorTo = 15066597
        PageAppearance.ColorMirror = 15066597
        PageAppearance.ColorMirrorTo = 15066597
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = 16765357
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabVisible = False
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
        TabAppearance.ColorDown = clSilver
        TabAppearance.ColorDisabled = 16765357
        object cmbFirmante1: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cmbFirmante2: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object cmbFirmante3: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cmbFirmante4: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object cmbFirmante5: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object cmbFirmante6: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object cmbFirmante7: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object cmbFirmante8: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object cmbFirmante9: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object cmbFirmante10: TAdvComboBox
          Left = 496
          Top = 165
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object grp3: TGroupBox
          Left = 17
          Top = 10
          Width = 560
          Height = 99
          Caption = 'Autoriz'#243
          Color = cl3DLight
          ParentBackground = False
          ParentColor = False
          TabOrder = 10
          object edtNombre1: TAdvEdit
            Left = 95
            Top = 16
            Width = 450
            Height = 21
            LabelCaption = 'Nombre:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 0
            Visible = True
            Version = '2.9.0.0'
          end
          object edtPuesto1: TAdvEdit
            Left = 95
            Top = 43
            Width = 450
            Height = 21
            LabelCaption = 'Puesto:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 1
            Visible = True
            Version = '2.9.0.0'
          end
          object edtFicha1: TAdvEdit
            Left = 95
            Top = 70
            Width = 151
            Height = 21
            LabelCaption = 'Ficha:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 2
            Visible = True
            Version = '2.9.0.0'
          end
          object edtExt1: TAdvEdit
            Left = 315
            Top = 70
            Width = 183
            Height = 21
            LabelCaption = 'Ext.:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 3
            Visible = True
            Version = '2.9.0.0'
          end
        end
        object grp4: TGroupBox
          Left = 17
          Top = 111
          Width = 560
          Height = 99
          Caption = 'VoBo'
          Color = cl3DLight
          ParentBackground = False
          ParentColor = False
          TabOrder = 11
          object edtNombre2: TAdvEdit
            Left = 95
            Top = 16
            Width = 450
            Height = 21
            LabelCaption = 'Nombre:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 0
            Visible = True
            Version = '2.9.0.0'
          end
          object edtPuesto2: TAdvEdit
            Left = 95
            Top = 43
            Width = 450
            Height = 21
            LabelCaption = 'Puesto:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 1
            Visible = True
            Version = '2.9.0.0'
          end
          object edtFicha2: TAdvEdit
            Left = 95
            Top = 70
            Width = 151
            Height = 21
            LabelCaption = 'Ficha:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 2
            Visible = True
            Version = '2.9.0.0'
          end
          object edtExt2: TAdvEdit
            Left = 315
            Top = 70
            Width = 183
            Height = 21
            LabelCaption = 'Ext.:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 3
            Visible = True
            Version = '2.9.0.0'
          end
        end
      end
      object AdvSmoothTabPage3: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 748
        Height = 213
        Caption = 'Firmantes 2'
        PageAppearance.Color = 15066597
        PageAppearance.ColorTo = 15066597
        PageAppearance.ColorMirror = 15066597
        PageAppearance.ColorMirrorTo = 15066597
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = 16765357
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabVisible = False
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
        TabAppearance.ColorDown = clSilver
        TabAppearance.ColorDisabled = 16765357
        object grp5: TGroupBox
          Left = 17
          Top = 10
          Width = 560
          Height = 99
          Caption = 'Entrega'
          Color = cl3DLight
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object edtNombre3: TAdvEdit
            Left = 95
            Top = 16
            Width = 450
            Height = 21
            LabelCaption = 'Nombre:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 0
            Visible = True
            Version = '2.9.0.0'
          end
          object edtPuesto3: TAdvEdit
            Left = 95
            Top = 43
            Width = 450
            Height = 21
            LabelCaption = 'Puesto:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 1
            Visible = True
            Version = '2.9.0.0'
          end
          object edtFicha3: TAdvEdit
            Left = 95
            Top = 70
            Width = 151
            Height = 21
            LabelCaption = 'Ficha:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 2
            Visible = True
            Version = '2.9.0.0'
          end
          object edtExt3: TAdvEdit
            Left = 315
            Top = 70
            Width = 183
            Height = 21
            LabelCaption = 'Ext.:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 3
            Visible = True
            Version = '2.9.0.0'
          end
        end
        object grp6: TGroupBox
          Left = 17
          Top = 111
          Width = 560
          Height = 99
          Caption = 'Elabora embarque'
          Color = cl3DLight
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object edtNombre4: TAdvEdit
            Left = 95
            Top = 16
            Width = 450
            Height = 21
            LabelCaption = 'Nombre:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 0
            Visible = True
            Version = '2.9.0.0'
          end
          object edtPuesto4: TAdvEdit
            Left = 95
            Top = 43
            Width = 450
            Height = 21
            LabelCaption = 'Puesto:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 1
            Visible = True
            Version = '2.9.0.0'
          end
          object edtFicha4: TAdvEdit
            Left = 95
            Top = 70
            Width = 151
            Height = 21
            LabelCaption = 'Ficha:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 2
            Visible = True
            Version = '2.9.0.0'
          end
          object edtExt4: TAdvEdit
            Left = 315
            Top = 70
            Width = 183
            Height = 21
            LabelCaption = 'Ext.:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 3
            Visible = True
            Version = '2.9.0.0'
          end
        end
      end
      object AdvSmoothTabPage4: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 748
        Height = 213
        Caption = 'Firmantes 3'
        PageAppearance.Color = 15066597
        PageAppearance.ColorTo = 15066597
        PageAppearance.ColorMirror = 15066597
        PageAppearance.ColorMirrorTo = 15066597
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = 16765357
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabVisible = False
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
        TabAppearance.ColorDown = clSilver
        TabAppearance.ColorDisabled = 16765357
        object grp7: TGroupBox
          Left = 17
          Top = 10
          Width = 560
          Height = 99
          Caption = 'Almacen'
          Color = cl3DLight
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object edtNombre5: TAdvEdit
            Left = 95
            Top = 16
            Width = 450
            Height = 21
            LabelCaption = 'Nombre:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 0
            Visible = True
            Version = '2.9.0.0'
          end
          object edtPuesto5: TAdvEdit
            Left = 95
            Top = 43
            Width = 450
            Height = 21
            LabelCaption = 'Puesto:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 1
            Visible = True
            Version = '2.9.0.0'
          end
          object edtFicha5: TAdvEdit
            Left = 95
            Top = 70
            Width = 151
            Height = 21
            LabelCaption = 'Ficha:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 2
            Visible = True
            Version = '2.9.0.0'
          end
          object edtExt5: TAdvEdit
            Left = 315
            Top = 70
            Width = 183
            Height = 21
            LabelCaption = 'Ext.:'
            LabelPosition = lpLeftCenter
            LabelMargin = 6
            LabelTransparent = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 3
            Visible = True
            Version = '2.9.0.0'
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 267
    Width = 756
    Height = 240
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    DesignSize = (
      756
      240)
    object NextDBGrid1: TNextDBGrid
      Left = 8
      Top = 48
      Width = 738
      Height = 178
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
      TabStop = True
      OnCellDblClick = NextDBGrid1CellDblClick
      OnMouseDown = NextDBGrid1MouseDown
      OnSortColumn = NextDBGrid1SortColumn
      OnVerticalScroll = NextDBGrid1VerticalScroll
      DataSource = dsDetalle
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 90
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 90
        FieldName = 'codigoarticulo'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 130
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Disciplina'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 130
        FieldName = 'titulodisciplina'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 343
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Art'#237'culo'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 343
        FieldName = 'tituloarticulo'
      end
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cantidad'
        Header.Alignment = taCenter
        Header.HideArrow = False
        ParentFont = False
        Position = 3
        SortType = stNumeric
        FieldName = 'cantidad'
        FormatMask = '#,##0.00'
        Precision = 0
        Increment = 1.000000000000000000
        SpinButtons = False
      end
      object NxDBTextColumn3: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Unidad'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        FieldName = 'codigounidad'
      end
    end
    object btnAgregarDetalle: TBitBtn
      Left = 8
      Top = 17
      Width = 57
      Height = 25
      DoubleBuffered = True
      Glyph.Data = {
        B60C0000424DB60C000000000000360000002800000032000000100000000100
        200000000000800C000000000000000000000000000000000000F1ECE1FF9D86
        56FF8D7648FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF463B24FF2E2718FFF1EC
        E1FFB19A6CFFA48A56FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFF695836FF3E3420FFC1AB7EFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFCC965BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFCC965BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFF4D4027FFCEBC96FFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFC0965BFFFFFFFFFFB3A8ADFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFC0965BFFFFFFFFFFB3A8ADFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB396
        5BFFB3965BFFB3965BFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFB3965BFFB396
        5BFFFFFFFFFFFFFFFFFFB3965BFFE6B95BFFFFFFFFFFE6FFFFFFFFFFFFFFB3B9
        C8FFD9A85BFFFFFFFFFFB39676FFB3965BFFB3965BFFE6B95BFFFFFFFFFFFFFF
        FFFFFFFFFFFFB3965BFFB3965BFFE6B95BFFFFFFFFFFE6FFFFFFFFFFFFFFB3B9
        C8FFCC965BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B9C8FFD9A85BFFFFFF
        FFFFB39676FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F50
        31FFCEBC96FFB3965BFFB3965BFFB3965BFFFFFFFFFFFFFFFFFFB3965BFFB396
        5BFFB3965BFFC0965BFFFFFFFFFFFFFFFFFFCC965BFFFFFFFFFFB3A8ADFFCC96
        5BFFFFFFFFFFB3B9C8FFD9A85BFFFFFFFFFFB39676FFB3965BFFD9A85BFFFFFF
        FFFFB3A8ADFFC0965BFFFFFFFFFFB3B9C8FFCC965BFFFFFFFFFFB3A8ADFFCC96
        5BFFFFFFFFFFB3B9C8FFE6B95BFFFFFFFFFFB3965BFFE6B95BFFFFFFFFFFB3A8
        ADFFD9A85BFFFFFFFFFFB39676FFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB3965BFFCC965BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB39676FFFFFFFFFFFFFF
        FFFFB39676FFB3965BFFFFFFFFFFB3B9C8FFD9A85BFFFFFFFFFFB39676FFB396
        5BFFE6B95BFFFFFFFFFFB3965BFFB3965BFFB3965BFFB3965BFFD9A85BFFFFFF
        FFFFB39676FFB3965BFFFFFFFFFFB3B9C8FFE6B95BFFE6FFFFFFB39692FFCC96
        5BFFFFFFFFFFB3A8ADFFD9A85BFFFFFFFFFFB39676FFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB396
        5BFFB3965BFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFFFFFFFFFFFFFFFFFB396
        5BFFFFFFFFFFFFFFFFFFB39676FFB3965BFFFFFFFFFFB3B9C8FFD9A85BFFFFFF
        FFFFB39676FFB3965BFFE6B95BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD9A85BFFFFFFFFFFB39676FFB3965BFFFFFFFFFFB3B9C8FFB3965BFFD9A8
        5BFFFFFFFFFFFFFFFFFFFFFFFFFFB3A8ADFFD9A85BFFFFFFFFFFB39676FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB396
        5BFFB3965BFFB3965BFFB3965BFFCC965BFFFFFFFFFFB39692FFD9A85BFFFFFF
        FFFFB39676FFB3965BFFCC965BFFFFFFFFFFB3A8ADFFCC965BFFFFFFFFFFB3B9
        C8FFD9A85BFFFFFFFFFFB3A8ADFFB3965BFFD9A85BFFFFFFFFFFB39676FFB396
        5BFFFFFFFFFFFFFFFFFFCC965BFFFFFFFFFFB3A8ADFFCC965BFFFFFFFFFFB3B9
        C8FFD9A85BFFFFFFFFFFB39676FFCC965BFFFFFFFFFFB39692FFD9A85BFFFFFF
        FFFFB3A8ADFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F50
        31FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFFFFFFFFFB3B9
        C8FFF2CB76FFFFFFFFFFB3965BFFB3965BFFB3965BFFE6B95BFFFFFFFFFFFFFF
        FFFFF2CBADFFB3B9C8FFD9A85BFFFFFFFFFFFFFFFFFFFFFFFFFFB39692FFE6B9
        5BFFFFFFFFFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFE6B95BFFFFFFFFFFFFFF
        FFFFF2CBADFFB3B9C8FFB3965BFFF2CB76FFFFFFFFFFFFFFFFFFFFFFFFFFB396
        5BFFD9A85BFFFFFFFFFFFFFFFFFFFFFFFFFFB39692FFB3965BFFB3965BFFB396
        5BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F50
        31FFE1D5BDFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFF7E6A40FFE8DFCDFFD4C3A2FFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFA18752FF8D7648FFF1ECE1FFE8DFCDFFE1D5BDFFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFC3AD80FFA99263FFF1ECE1FF}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnAgregarDetalleClick
    end
    object btnEditarDetalle: TBitBtn
      Left = 64
      Top = 17
      Width = 57
      Height = 25
      DoubleBuffered = True
      Glyph.Data = {
        B60C0000424DB60C000000000000360000002800000032000000100000000100
        200000000000800C000000000000000000000000000000000000F1ECE1FF9D86
        56FF8D7648FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF463B24FF2E2718FFF1EC
        E1FFB19A6CFFA48A56FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFF695836FF3E3420FFC1AB7EFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFF4D4027FFCEBC96FFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F50
        31FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFCC96
        5BFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFFFFFB3A8ADFFC0965BFFFFEDADFFFFFF
        FFFFFFFFFFFFFFFFFFFFB3B9C8FFD9A85BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB3965BFFB3965BFFFFDC92FFFFFFFFFFFFFFFFFFB3B9C8FFCC96
        5BFFFFFFC8FFFFFFFFFFFFFFFFFFF2FFC8FFB3A8ADFFCC965BFFFFFFFFFFB3B9
        C8FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFCC965BFFFFFFFFFFB3B9C8FFB3965BFFB3965BFFB3965BFFE6B9
        5BFFFFFFFFFFB39692FFF2CB76FFFFFFFFFFB3B9C8FFB3965BFFB3965BFFF2CB
        76FFFFFFFFFFB39676FFB3965BFFB3965BFFD9A85BFFFFFFFFFFB3B9C8FFB396
        5BFFB3965BFFF2CB76FFFFFFFFFFB39692FFF2CB76FFFFFFFFFFB3A8ADFFCC96
        5BFFFFFFFFFFB3B9C8FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFCC965BFFFFFFFFFFB3B9C8FFB3965BFFB396
        5BFFB3965BFFF2CB76FFFFFFFFFFB39676FFCC965BFFFFFFFFFFB3B9C8FFB396
        5BFFB3965BFFF2CB76FFFFFFFFFFB39676FFB3965BFFB3965BFFD9A85BFFFFFF
        FFFFB3A8ADFFB3965BFFB3965BFFE6B95BFFFFFFFFFFB39692FFD9A85BFFFFFF
        FFFFB3A8ADFFCC965BFFFFFFFFFFB3B9C8FFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFCC965BFFFFFFFFFFFFFF
        FFFFFFFFFFFFF2FFFFFFB3A8ADFFF2CB76FFFFFFFFFFB39676FFCC965BFFFFFF
        FFFFB3B9C8FFB3965BFFB3965BFFF2CB76FFFFFFFFFFB39676FFB3965BFFB396
        5BFFD9A85BFFFFFFFFFFB3A8ADFFB3965BFFB3965BFFB3965BFFFFDC92FFFFFF
        FFFFFFFFFFFFFFFFFFFFB3A8ADFFCC965BFFFFFFFFFFB3B9C8FFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F50
        31FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFCC96
        5BFFFFFFFFFFB3B9C8FFB3965BFFB3965BFFB3965BFFE6B95BFFF2FFFFFFB3A8
        ADFFCC965BFFFFFFFFFFB3B9C8FFB3965BFFB3965BFFF2CB76FFFFFFFFFFB396
        76FFB3965BFFB3965BFFD9A85BFFFFFFFFFFB3A8ADFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFD9A85BFFFFFFFFFFB3A8ADFFCC965BFFFFFFFFFFFFFF
        FFFFC0965BFFFFEDADFFC0CBE4FFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFCC965BFFFFFFFFFFB3B9C8FFB3965BFFB3965BFFB3965BFFB396
        5BFFF2CB76FFFFFFFFFFFFFFFFFFFFFFFFFFB3B9C8FFCC965BFFFFFFC8FFFFFF
        FFFFFFFFFFFFB39676FFB3965BFFFFDC92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB3B9C8FFCC965BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3965BFFCC96
        5BFFFFFFFFFFE6CBADFFFFFFFFFFFFFFFFFFB3A8ADFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFCC965BFFFFFFFFFFFFFFFFFFFFFFFFFFF2FF
        FFFFB3A8ADFFB3965BFFB3965BFFB3965BFFCC965BFFFFFFFFFFB3B9C8FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFD9A85BFFFFFF
        FFFFB3A8ADFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFCC965BFFFFFF
        FFFFB3B9C8FFB3965BFFC0965BFFFFEDADFFFFFFFFFFB39676FFB3965BFFB396
        5BFFD9A85BFFFFFFFFFFB3A8ADFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F50
        31FFE1D5BDFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFF7E6A40FFE8DFCDFFD4C3A2FFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFA18752FF8D7648FFF1ECE1FFE8DFCDFFE1D5BDFFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFC3AD80FFA99263FFF1ECE1FF}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnEditarDetalleClick
    end
    object btnQuitarDetalle: TBitBtn
      Left = 120
      Top = 17
      Width = 57
      Height = 25
      DoubleBuffered = True
      Glyph.Data = {
        B60C0000424DB60C000000000000360000002800000032000000100000000100
        200000000000800C000000000000000000000000000000000000F1ECE1FF9D86
        56FF8D7648FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F
        30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF5E4F30FF463B24FF2E2718FFF1EC
        E1FFB19A6CFFA48A56FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFF695836FF3E3420FFC1AB7EFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFF4D4027FFCEBC96FFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFCC965BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB39692FFB396
        5BFFFFDC92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB39692FFD9A85BFFFFFF
        FFFFB3B9C8FFB3965BFFFFDC92FFFFFFFFFFFFFFFFFFD9A876FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC965BFFFFFFFFFFFFFFFFFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F50
        31FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFCC965BFFFFFFFFFFFFFFFFFFB39676FFFFFFFFFFFFFFFFFFFFFF
        FFFFB3A8ADFFD9A85BFFFFFFFFFFC0CBE4FFC0965BFFFFEDADFFFFFFFFFFB396
        92FFD9A85BFFFFFFFFFFB3B9C8FFC0965BFFFFEDADFFFFFFFFFFB3965BFFFFDC
        92FFFFFFFFFFB39692FFF2CB76FFFFFFFFFFFFFFFFFFCC965BFFFFFFFFFFFFFF
        FFFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFE6B95BFFFFFFFFFFB3A8ADFFD9A85BFFFFFF
        FFFFD9A876FFFFFFFFFFC0CBE4FFD9A85BFFFFFFFFFFB3B9C8FFB3965BFFFFDC
        92FFFFFFFFFFB39692FFD9A85BFFFFFFFFFFB3B9C8FFC0965BFFFFEDADFFFFFF
        FFFFB3965BFFF2CB76FFFFFFFFFFB3A8ADFFE6B95BFFFFFFFFFFFFFFFFFFCC96
        5BFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFF2CB76FFFFFFFFFFB396
        92FFB3965BFFB3965BFFCC965BFFFFFFFFFFC0CBE4FFD9A85BFFFFFFFFFFB3B9
        C8FFB3965BFFFFDC92FFFFFFFFFFB39692FFD9A85BFFFFFFFFFFB3B9C8FFC096
        5BFFFFEDADFFFFFFFFFFB3965BFFB3965BFFD9A85BFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCC965BFFFFFFFFFFFFFFFFFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFF2CB
        76FFFFFFFFFFB39692FFB3965BFFB3965BFFCC965BFFFFFFFFFFC0CBE4FFD9A8
        5BFFFFFFFFFFB3B9C8FFB3965BFFFFDC92FFFFFFFFFFB39692FFD9A85BFFFFFF
        FFFFB3B9C8FFC0965BFFFFEDADFFFFFFFFFFB3965BFFE6B95BFFFFFFFFFFB396
        76FFE6B95BFFFFFFFFFFFFFFFFFFCC965BFFFFFFFFFFFFFFFFFFB39676FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F50
        31FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFE6B95BFFFFFFFFFFB3A8ADFFB3965BFFB3965BFFD9A85BFFFFFF
        FFFFB3B9C8FFD9A85BFFFFFFFFFFB3B9C8FFB3965BFFFFDC92FFFFFFFFFFB396
        92FFD9A85BFFFFFFFFFFC0B9C8FFFFEDADFFFFFFFFFFFFFFFFFFD9EDFFFFB396
        76FFFFDC92FFFFFFFFFFFFFFFFFFFFFFFFFFB39676FFCC965BFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB39692FFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFCC965BFFFFFFFFFFFFFFFFFFB39676FFB396
        5BFFFFFFFFFFFFFFFFFFB39676FFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFC0965BFFFFEDADFFFFFF
        FFFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFCC965BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB39676FFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFD9A85BFFFFFFFFFFB3B9C8FFB396
        5BFFD9A85BFFFFFFFFFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F5031FFCEBC96FFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFF5F50
        31FFE1D5BDFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFF7E6A40FFE8DFCDFFD4C3A2FFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB3965BFFB396
        5BFFB3965BFFB3965BFFA18752FF8D7648FFF1ECE1FFE8DFCDFFE1D5BDFFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC96FFCEBC
        96FFCEBC96FFCEBC96FFCEBC96FFC3AD80FFA99263FFF1ECE1FF}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnQuitarDetalleClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 461
    Width = 756
    Height = 46
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 2
    object BtnRec: TAdvShapeButton
      Left = 0
      Top = 1
      Width = 55
      Height = 46
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
      TabOrder = 0
      Text = 'Guardar'
      Version = '5.0.1.4'
      OnClick = BtnRecClick
    end
    object BtnClose: TAdvShapeButton
      Left = 703
      Top = 0
      Width = 42
      Height = 46
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
        1DC2000000097048597300002E2200002E2201AAE2DD92000008D54944415458
        47BD970950D4D71DC7576C66DAA6A619533BED4CDA34635AA318AC49DA9AA8B1
        C9C4D458A24601358A4800AF85E514058D178B329AB6866214758B721F02B217
        08A280C8722DA7A0C80A2CEC2EC8B12B7BFCF762F7F5FB56D641C588339DEECC
        677EBFFFEFBDFFFB7DDFB1EFBDFF34D6849FDD6AFD98E5E2B281356DDAEC89F1
        FFA16F465B252C8321C365C68CFB8FB54B6CB63862B793FFC76FCC6AED50C9E5
        EF3D1260B7D98E3913DBC6C6EC639340E39381CAF617C491AA5FA9ECADABAC9C
        CDB2DBED1FD10054D92C16CB18C53A81C962B41C159F09CA6DCF02EFD9D09131
        E423B512491615904505984C26A3C56C7E0AB3D96CA2A0EC29107FEE0FEF999D
        5017BEA397B4131289C4C0C2F0974211311A8DA310F10833FC4798CDA3787914
        2FD398F631CC662DCA684CE7003EDAA731E7338D3DC464D253D08E1E1DD7574B
        24848E40A1C9C8D80C065D3F04F4A3423F2A3F859161860D3ADD301AA7650313
        B80FDF011A1EC0FB43BAD1D107686B10FE20E20E50366879181B823F84BCEAAA
        CA4A1B1520D2EB7406AD56DBC1180C1D48F424772C2663CFF0D0B0455A536B51
        CAE50A8CD65D33C3749A18838C6118279D685C86B6F42D4DCDF63B6DAD2368AF
        CB6462EEA14ED704BA51AF1B79FB6A6B6A8C740A041A8D66F0814653CDE8F512
        0870524D7D93D1281DD53CD07576CA4871710929148A8C7DBDF27688A84179AD
        91D1D70158A696D16A07140A25B971A392080AF863ED2D2DBD18B5062497A27C
        1C430346420A01B71AA552350B4BBF607868E81E440820808FCA140112502B54
        8F8C28BABBBB4979C50D527AED3A29E00B48219FAF1E502ACB8D4646C4300631
        AC80D1E9DA554AA5BDBAA6865C433D91B890A426271B3BEEDC911AF4FA12C6A0
        2F465D0718816208B8D1D6DAAA606145E60DF4F737A9D5EAFF20E179CC1D8587
        B93E6F6298A4D6C64655595905292EB9FA108C424E4E0E29E2F37B860607B351
        EF9C49ABBF767F60C05257574FAEA0BCE46A29494BCF20278E1FB75F2B2DBD3D
        3C38988F914C45A7D22818815408B82CBB7BB78365311A2F29FAFACA755AED71
        9BD51A6BB55A63C6E15A6DB698AEF6F694BC9C1CBD103D12171691C2C22B4428
        129394E4147B797161B55EA3CE1C191AD23434363ACA8B8A8A1DC9B95CAEFD02
        8F37525E5656AFECEBE361219E7060347E8BF64F40C059794F4F030B73938BB9
        38393C3CBC1CC1AFB14584C00683201088BF2BA7A6BC2C23333DDD5420101281
        4044F8B079F9978988CF677AEEDD1B6969692542A1C8212C352D9D1C387080FC
        FBE4C9912B62717D53434312167834DA0DA760C422B07386A1EDD8BEDEDE9B2C
        A35E9F27B979733FDD97B11FFD0C05F3C14AB009CF5B61BDC7CCE6ADA5FC82EC
        948B176D79F905242FEFB203A150FC705D1408483EE23479747434898BE58E5C
        CECDADC1DF2C7148AD66A30D1F2710B11502B6E039026BE69A43406D75F541E4
        77711E0E483C1D157E0916C0FF1476B57E74D4BB20335D7C21E902C9CCCA2159
        D997400EFC6C879F9C9C4A2223F7907D7BF76A3252536B4B4B4A4E2B148AAFF1
        EEDA49588DD8F67E95AA78A280E9931DBB540C78152FBCD1D779FBAFC967BE4F
        CFCCCC3267E7E492F48C2C071999D9841BC3251161A19A8B3C5EBD58283C27EB
        EEF6C55CBBE33D275FC077F2397C3F2CFE2BCF15F0A4A8C68A8AC51565E5EA53
        DF9F2127BF8B2709A74E9333896749545434090B0A92A7A5A424343535ADC55C
        7F80247F017F067F02EF023774E66DF05BF88B542A95E085046855AA59BD7279
        A5485C4462B847C131873D7C844BA2F67D43D67BAE37797B79C4662726FE1C49
        5CC647EFD1D44EEC0CCA7EA754A90AA62C80745FFF719F5C9E5F552521C7E28E
        3B92B203392424349C1C898925DCD863646FF47EB2DECBEBFEC6D5EEEB9E778B
        C208CCC6084C5D00CE80847A690339F1ED3F91F028D9F8D52632DFD5D5F4F795
        2B0DFBF61F7008A0ECDE1345BC3C3C64011B3D96FD90881712D0AFECDBD3D4D4
        42E2E34F397AEBE7BF8DBC3D678EED4B77F70676807FE6AE6DDBEE1F3A1C333E
        2D474968580459EFB1AE36921DF0CEB3444C59C0ED9616DFA6E666DBD9733C47
        F2C0A060E2EAEA4A562CFFB42322248417C6E12C67FB6CDCC0DEB54BE39C0AEE
        D138B27DFB4EB2F4834522FFCD9BDF9C4CC49405A4F1CEC5C4C7273886376277
        2459B8F05DB26CC91239567C4648509047F8E6F09769829D3E5FEDE00471ACB4
        DEA1C35CB2FCB3BF91856E6E233BFDFD77040707BFFAA488290B58F1D6CC5702
        B66E118685EF261F2E5E4C16BDFFDE0087CDCE0F65B37D43FDFC663A1BCEF6F4
        9CBE7DEB9623A161E164F59AB5C475EE5C83DF66EFF260363B2CC8D777D6B305
        304C5E7D6DED633BE19395F7FA7BFFE1938F96362E5CE0A6DDE5EF2F46EF8302
        02027EFD64BD7F847AFC64ED17EEBCF9F35CAD9B3C3DAB314571413B762CF484
        B8670AC009958F7339AEAAAA6A2686E59571668C9F0B2FC3FE14BCE4B576D5C7
        DB7C7C4E448686461D3C78701E8D4DE047F43F4F936C5AB1E2758F35ABF64770
        38312181814B1313135F1A3F67A63DF61184BF21B6E2027A1FE077C964E7F1A1
        F03EDDFBED66F302D877003D945CC15C3007FCBEB2B272A9582C5E8633FD2D3C
        BF493713BA458FEF6CBF81FF3AFC5F49A5D2B9A949498BDBDADADE406C1605F1
        5FC0BE0666D2CE813FF62B1445F44A5638343020D0A9D59B51B8012715C50BBE
        073ED5D6C17E49ACD635F057C1A7A7E4E7F0292BE07F0696A39C1E589FD04F3B
        BBC5B20C8D2FC1F362F021A05BF222E0DC926947DDC02A994C769D8564BB7129
        69C465240E412E04C58023F8543B84B203E01BB00F44A17C0F6C24A0677A3808
        0521800302011BEC44BDED20007E0046D40FD617F8388EE1B1316F94AD07FB2A
        CACA32E9ADF835040B612540442FA9800FFF326C3EC80597400EC80219201DA4
        8114900C2E8224C003E7C1599088364E83532001C423F61DECBF286DB76EE5F2
        783C77C7BAD0E9746EB8FF35E1AA6D44E120500205E81BA717560E7A00BD5277
        8D2383A57482BBA003DC01B7413B6803B7402B68A1E0EA77173DEF4A4848089F
        780761A97A7AE6B53437F31BEAEA0CCDB8DF35D4D74F0929EA49EBEA7E90FAF1
        F2AB252524F1CC99760E87E3E74CFE5FD8FFD027074F918F0000000049454E44
        AE426082}
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
        1DC2000000097048597300002E2200002E2201AAE2DD92000008E64944415458
        47BD97095454D719C7EFCC80264D4CACD19C364D5CAAC62D6E316D8C3635F668
        1B73125722268AA888581554D6E2120D8B626CB410DC411A0545505010480077
        6490555C1070947DD8079CE5BD796F66EEEDFF8D405130E2393D9D737EE77EEF
        BBDFBBDFFF7EEFCDBDF7C948A71F3599A613B97C1191C98676F6FF0F6D0163A5
        1183E1A4BC4F9FFA27C665164B10A394FD3F7E6693A9445D5131A94300B55876
        B627B698CDD4DC0D92BF3B104C5F106BAADA9A9ACA9C8C8CA18452FA67C90155
        165114CD12A64E74E793FA11F84CD06F7916B8CF828998918F652B95A72401A7
        240146A3911705A10B82201825D0D705F89FFBC37D423B9209DB3A4B69124AA5
        D24050FE0B50C4789E7F04111D08B03B108447A2203E320926C9A77D0241D062
        60C9A7934002AD593469D15AAFD1F75F8C463D7C7AF4E931717D9652C9A40AA4
        1879CE6230E86A21A01601B5B8A90BAD5C4B5383AEBE09E21123D421A69D7AD8
        5630701D67E41AD58FD4AD286803E21E23080DE86B108D465C1B1B613722AF26
        3323C3220948D2EB7406AD565BC2190C253CC73D055F6CE0F5E5C58DF7C4A89C
        48B1A8A1B89A17845281E3EE1B39838AE3382B46CE781F1350D5E9D4FAD385B1
        F4CAFDABCD3A51FF50E08C0FD0FFB01365105186BC55D9376EF0D223486C6969
        69686D69C9E2F47A2504B493C573BC92E7B9BCAAD64A5DB22A8905A6F9B390F4
        1FF8A2D6E222CCF00662B3794E9FF3B8E5B39BB48D755935596C4FC6F76C67D2
        4EF3E58A6B955AA32E9F3770798869C3908F4AE441C09D82BC3C0DC1AB7FAEA9
        B1F1014424424002944A24E29D406B38FFA059559D5E96CE02AF06B0AD17B7B0
        2D099B58C8C5508D4A5F7605E2923070B2C0F389CDBAC6A2BC9A5C1A7C23986D
        BD84B8E4CD6C47F44E3EBBBE204FCFE9D338833E15E35941055221E0DADDDBB7
        AB09DEC8B8BADADA9B1A8DE6281287A18C12E178D661088E3871334AED77653B
        F34EF3623E69DE56BC4E7BB21FAE1E28AF146A634CA2E98846ABB978BBEE96B8
        3F771FE23C994FBA37F38EF2629E7BBD69B83AE65EB9581D6FE4F9484C2A4A02
        15888480B3AAD2D21222F2FCE9EAAAAA2B3AADF63B8BC914683299FCDB08B098
        2CFE1754178FBBC7BBEBD727BBB2F53FB901B449AECC35CA95EECF3F9C5523D6
        45973416B71C2938C2DC52D0F7338842FF8E75F41F5901CDA1E613B977C4FBE1
        7811775BE1F97F62FCDD1070B8A2BC3C9FA08467F02CFED5D4D43413CE155822
        36A05D0F5CA999AE13A9D9EDDF85C74FAE8E7131BA24AC622E89CE5656C5AD64
        EE29EE5C7A557A73E4ED636C4DD26AB62A6925738974662BB7AD646B537C9AFD
        D8FEDC333435A2496CDA6416CD1E18DB0395F5C4CAE98EF103AB2A2BAF135EAF
        8F535EBFBE455A97B11EBD8A8EF7C0676031AE97A175D033615950E69E98A591
        0E16C7780726B1347E095B9DB48A6DBAE4C39C139C98C3D9C5CC31D2812DF15D
        CC569C5ADBEC61F9EEC6211A7BA8DC5CBD166338B60311CB206029AE3DD53535
        17AD02B2B3B2B621BFBC7D7340620502DE04E361CF403BA7916A1C7C53BF495E
        F4A33DFB32663E5B186B67C50EF697B10BD8C2630B989DD77C667F70598B0BBF
        2D3B881E3D709796AEC0BDF3BB610E7C2EB56A756A67018AEEB65D490CE88B1B
        06294D059F7C1DEF78E2AB587BC1FEB41D9B173DC7CAFC5373D95CFFD96CEE9E
        AF5A1CB55EB99B69C891EBB46039A5A6CF715F3B5FC06E67166C27BCFC3F3F57
        C0D3A242B888A97ED7FD34A30F8C60434206B231FB47B28987C6B30F7CDF6753
        8EFEADC2816E0A8DA5A9F3452A7E84241F823F823F80F7C1384C662418087BB2
        5AAD4E7C2101A5EAD201D7CA2E67B8243B33DB4039930512A690F0079BC152B9
        5111FD56E024E6F33A92C8DBAAD7F1683B4F067D836BD4EA733D16505656F652
        664546FCF6CC6DECF55DAF321B7F19B3592367366E32D62B40C17AED50305B5F
        C2E4CB64F524AADF82E79DA25081A1A840CF0528AB94A1C1F97BD99BDFF76772
        69D6F68491290AA3CCB9B7C17693DC2AC02AC24BC6E42B6D542475F0B45F12F1
        4202F26A727CC20A8FB0A1A183992C00C99D648C8C915948C2EFF249D5EFA315
        9E8A7ADBED10110811C066A38CC9D6F4CA269543C63E4B448F0544DD8A5A1E51
        78D432296CA235B9CD3A293966BF7F4009A163C2099D309384FD7A916283BCA5
        97FFE32A582BE1829805BD9348F9BB43BA13D16301332266F80F0F19CA143BF0
        CCBDF0E28DC3C05BFB56103AEA24A1A3ED081DF78A9440BEEBE5D5361BE5266B
        152044311D71B37B3793E661AB091BDFF769113D16405CC96BC48D9CB7F140F2
        0F31A8739F3A6219198FE4CB41BF8E81598C42F66D6F3F1B4F39537C81B869B6
        06523CE40A62DC51A501CF16C07171B9D9D94FAC845D4A96D6FF5D324B5640E6
        BDA425ADC393091DE14AE8C0DF7689A3935F264E8A70F291C24432DFC9226C4C
        10A1C326424E9745AEA302D8A1E2B12F07656666F683F3B536FAB4ED0BAFA0FD
        15B01D143C7EBA6DD1C8DDBDE804DF61F4D3D192AF1336D27F5E12D4EFCCD8B7
        E5716F6D21F43D7F1B3AEAE3496C956DDB3E237BE223087F432CC5E7A4F340C2
        43952A0C1F0A1F486B3F1584F168C70269531A0346811160F82E7AFCE36F69F0
        349EF2C3284F87488B89B444B7AD6CEFC07E1BF66FF6D1B8515F53CFA9E7E985
        41F00D9080BF3FDA37403F697260426D75F54FD2912CA5B1AE2E51A7D12C41E7
        22EC54120B61DBE1536D01DA79CC649A0B7B36ECCFA889CE7A8CE9535CFF15CC
        44BFB461FD45FAB4A3A2380D83FF898A742A7C5380B4244F06ED4BB234D17160
        B64AA5BA4490CC0B8792021C4682E00C80207FE0874FB5EDE8FB066C059B812F
        CE073E68BD81B4A77B808D60037003EBC05AF077C4B900672A9881E004DF72E0
        68DD86CD6607E4B1079BAF5EBE1C2D9D8ADF803305AD12244987549000FB2CDA
        7870069C06B1E01438094E8028701C1C033F8208100EC2C0617008631C00FB40
        2808812F18ED5E89BB77EE9C090F0FFFDCFA5EE874BA71468EBB89A3368FCE06
        5003AA41551B95682B4039908ED40FDB50A195B80F4A41092806F74011B80BEE
        80DBE096048E7EA598F9C3D0D0508FCE6710A22E2F1F7DABB030213F27C75058
        50C0F273737B441EE2F272727E91DCB6FEF4B43476E8E0C122373737A7F6E4FF
        019144655BE7CB7C380000000049454E44AE426082}
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
        1DC2000000097048597300002E2200002E2201AAE2DD92000008A44944415458
        47BD970B5054D719C7CF02BE9A9AA6A476DA9A34C9A86D1E6A9A9A9731A93113
        3B49AB555103422920C3E00351011F68D08415454D4641D440408982C85B41D0
        800F50646161212AA2E0CA9B5D609705F671EF3EEFE9FFAC403060C4994E77E6
        37DFB9DFF9EE77FEE7BB77CF39574486FC048B651E7170702322D194A1FEFF61
        DB845C85C46048719838B1F3A1BCD4668BA48240FF1F3FABC552A7686E9E3528
        40B0D9F60C0C6CB35A05EB0830FF4820587842EC4329DBDB5B2A4A4AA6104110
        FEC61C5065339BCD5686650823F9583F021F09FA6D8F02F7D930112BC6A35289
        2495094865028C46236F3699866132998C0CF40D03FEC7FE709F6900D644DB3E
        4B36098944622028FF2528A23CCFF741C42026B4073199FA90A5CF6CB1B07E2D
        FC3F62326991985DEBECA08D38E61BB866BE07188D7A0644E831717D99444259
        05CE1B79CE6630E89448AE448012C1C3E07B7BD586CE4E35C4B3BE8E2174A26D
        07893B4C9C41A553287B4D3CDF85D275C16F077D5D66A3B10BF95568AB30AEA6
        B4A4C4C604E4E9753A8356ABADE30C863A9EE31E86E7EF9AF58626F59DBBE6EA
        13C9664D6D6D9B85E7EB4D1C77CFC819E41CC73DC068BC87E472BDA2437F332D
        53682C2AEEB6E8B40D98D47DF4370CA111718D18B7555A5ECEB34790DBD3D3D3
        D5DBD353C6E9F5120818A00C8F4562E438595F4BAB4E9E7B9E1686EFA64507A3
        F9BEDADA5ACCB01CB1529ED357D82DCF4B3995BAA35D524E4BBE3A40F32322AD
        AD578A5A8C7D7D55E897FD88A10A959041404DB54CA62178F5CFAA55AAFB1091
        0B013950CAC8454258C3398DFC7E5B63C1257A357C0FBDBC6D27CD090DA3C551
        511A5E2E2FE6792E0FB1F91093CBA954B58A0A995076209A5E415C7EE80E9A1A
        B19B5749A532882844750B90CF0E2A500001D76EDFBAD546F046667528953F68
        349A6348168F923112F0ACE351E2E33549A714C53BC4B430782B2D0C09A50520
        3368332D8B3EDC646A694943DCB79C4673B9F3C62D73C5A1A3B430680BBD8898
        E490ADF460C82641919878C7DCD0908D09258164062A90040167E4F5F575C4CC
        F3196DADADC53AAD769FCD6289B0582CE27E76596C36715BE1A593B9EB43F479
        6B37D00B6B37DA61ED9435EB85DAC347CA6CEDEDA7D577EA7AAA6313E8F9351B
        E9F7E84B067B02D609E55BB6765B8E1CA934D6D424E045DC6F87E7BF42FEFD10
        10D7DCD45445F06C32F12C0EAAD5EAF970AEC412B101763D58070204B339F0EE
        B1C4940CBFD5C61CDFD534B79FAC95AB68416030A72CB8D87DEBBB649AE71740
        F3E04BF25D4577FAFA41484037158B2B6D5959C7CD6AF5362C5BC1C81D8C8A85
        60E50C42EE88D69696EB84D7EBB324D7AF7FCED665AC47BF44C774F00FE061A5
        D41BD693F27AEFEAC87D69A73CBC6C591E3E349BE1EE4DF37CD7D02B9BB7D31C
        6F7F7A6685174DF2F0A6A11E9E34DD6765B72D24A45C888B8BB53635AD450EAF
        0120C21B02FE83EB10457BFB65BB006959D94E8CEF30B039408823027E0B5E47
        FB63D84582AAD3F3EAD6D0FC93CBDD69EAE2CF68BA8B2B70A3698B96D3F4C5AE
        F404AE37B92CA771AE6E3DBCBFBF54D8B7EFA870FBF64ADCEB32028BE0F3572A
        14054305388EB4ED3231E019DCF002AD907C786185FBA98CA51EA60C9715F4F4
        82A57652172EA3E2854B68D412971EAD9757A51016F6AD2091F8E09E05435888
        F6009FA2ED8B97FFFBC70AF8A928213A7A8E64A7587374EA741A3D790A3D326D
        068D9DFE260D7DE36D9A38FBFD66C1D33346484F77C1B39E8D41DE016F83B7C0
        5FC14C4CE665F047B4DF552814B94F24405B5F35A9B9E85A493E5EB608321E38
        81B1540CB6032FE2684C73748CA0B366FD0A8338F4576FF0D10E9D0CFA5E6C57
        28CE8E5A006D6C1CDF7AAD34BB342C9CEE9DE08C41C7D1352010EC2213E86EB0
        15ED95C4A1338390A58F3B45A102535081D10B5048CA63645F47D3AF7FFD07CC
        7A0C75C58CDF2322A31F71346C4335988008B00922561147F95542E6FE9C8827
        12A0AC906DB919778C1E7A7E1A66EB447D31F87422B29D25A4AA9590D35B8853
        E717F647F240C4468858471CA4DD84CC789488510BB87322D9E7467CA22D7EC6
        5BF6C10330F86B44448F105227109200E62713E21644C6F488FB2BC1AAE18F38
        5722CA6B22E4A591448C5A40CA479F880FBDF8324A3CD65EDE99183C8C90660C
        9C029681A7D8008788C3AA2032D6C22A100E21F320761121DD2A425651429E19
        F66F1AED3B1045C8D321849C0B868077882366463A6C846463601FE03CB87811
        E2B88738866F42DC02C47D4888E12E21C5880902931E2D80E3B22AA5D28756C2
        9F069713F2A77F1251B50B21DA1E42F291701DF8FDB0A4844CF027A284D98458
        AE1352869947E243E00DD8618BDCE023C00E958D7D39B2B4B4D419CEA7FB99D8
        BF2F3C05FB0B30266AF2E479B5E3C6ED17C68F0F354E9DFA2AF30DC189FDE799
        A04C67E7E7B29C9C3E174422B1E0E4F401D68431FDFB8CE8A18F203C022CC567
        D97920A7412E8FC787C29B6CED174CA6D7616700B629BD065E017F06D384BD7B
        3F10BEFC72AED0DB3B15D72FB1C5C4BE443F58D99E07CFA1FD3BE1F0E157CCEE
        EE738473E75E806F1203FEDFC03E0B9CD9E4C05F946D6D17D891ECBCAAA32357
        A7D1FC1B9D6ED8A9189FA1BD0C9F6A4B6197508B6531ECBF00DB25D93AFE29FA
        3E81FD3B988F7EB6617DC43EED60E722F9FBB073C07B802DC9EF828125994D74
        26CB2797CBAF100CB60987926A1C4622E1DC054162108E4FB52FD0B7038481ED
        2014FD5B603703B6A707838D6003080401602D588D387FE087B61F2AEA0BEB03
        BCECDBB0D5EA893E57B0FD6A51D169762A7E16CEF3B01290C70EA92007ED33B0
        D92013648074900A52C029900C4E8213E03B701C24807810076291E328380C62
        40347C51B00718B76B6A3213121216D8DF0B9D4E3713A7DF1F70D4E6D1D905DA
        411B68EDA705B619340176A46EE8470ECBB807EA411DB80BEE805A701BD4805B
        E0260347BF7ACCBC2126262678E81984289A9A5EBD79E3464E554585E1467535
        ADAAAC1C1532C4C92A2A7E96CAFEFE8B858534F69B6F6A0303037D0706FF2FB9
        565E05473EF5FB0000000049454E44AE426082}
      ParentFont = False
      TabOrder = 1
      Text = 'Cerrar'
      Version = '5.0.1.4'
      OnClick = BtnCloseClick
    end
  end
  object dsDatos: TDataSource
    Left = 24
    Top = 8
  end
  object cdDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 414
    Top = 336
  end
  object dsDetalle: TDataSource
    DataSet = mdDetalle
    Left = 504
    Top = 336
  end
  object mdDetalle: TJvMemoryData
    FieldDefs = <>
    Left = 464
    Top = 336
  end
  object CdControllogisticaDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 14
    Top = 224
  end
  object CdControlLogistica: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 62
    Top = 224
  end
  object dsAlmacen: TDataSource
    DataSet = cdAlmacen
    Left = 344
    Top = 136
  end
  object cdAlmacen: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 384
    Top = 144
  end
  object dsViaEmbarque: TDataSource
    DataSet = cdViaEmbarque
    Left = 288
    Top = 65528
  end
  object cdViaEmbarque: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 248
    Top = 65528
  end
  object cdTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 174
    Top = 64
  end
  object dsDsTipo: TDataSource
    DataSet = cdTipo
    Left = 208
    Top = 64
  end
end
