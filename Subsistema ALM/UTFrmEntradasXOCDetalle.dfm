inherited FrmEntradasXOCDetalle: TFrmEntradasXOCDetalle
  Left = 1052
  Top = 398
  Caption = 'Detalle de Entradas'
  ClientHeight = 518
  Position = poMainFormCenter
  ExplicitHeight = 556
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 280
    Height = 189
    ExplicitTop = 280
    ExplicitHeight = 189
    inherited NextDBGrid1: TNextDBGrid
      Tag = 99
      Height = 127
      ExplicitHeight = 127
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 90
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 90
        FieldName = 'codigoarticulo'
      end
      object NxDBTextColumn5: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = #193'rea'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        FieldName = 'titulodisciplina'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Art'#237'culo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 350
        FieldName = 'tituloarticulo'
      end
      object NxDBTextColumn3: TNxDBNumberColumn
        DefaultValue = '0'
        DefaultWidth = 70
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cantidad'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stNumeric
        Width = 70
        FieldName = 'cantidad'
        FormatMask = '#,##0.000'
        Precision = 0
        Increment = 1.000000000000000000
        SpinButtons = False
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 65
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Unidad'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        Width = 65
        FieldName = 'codigounidad'
      end
      object NxDBTextColumn6: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Precio'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stNumeric
        FieldName = 'precio'
        FormatMask = '$#,##0.0000'
        Precision = 0
        Increment = 1.000000000000000000
        SpinButtons = False
      end
    end
  end
  inherited Panel3: TPanel
    Top = 471
    ExplicitTop = 471
    inherited BtnRec: TAdvShapeButton
      Top = 4
      TabOrder = 1
      ExplicitTop = 4
    end
    inherited BtnClose: TAdvShapeButton
      TabOrder = 0
    end
  end
  inherited Panel1: TPanel
    Height = 274
    ExplicitHeight = 274
    inherited Panel4: TPanel
      object JvLabel1: TJvLabel
        Left = 16
        Top = 17
        Width = 105
        Height = 23
        Caption = 'Entrada #:'
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
        Left = 524
        Top = 15
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
        Visible = False
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -19
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object edtSerie: TEdit
        Tag = 99
        Left = 132
        Top = 19
        Width = 386
        Height = 22
        TabStop = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'edtSerie'
      end
      object edtConsecutivo: TEdit
        Left = 642
        Top = 12
        Width = 101
        Height = 31
        Margins.Right = 6
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'edtConsecutivo'
        Visible = False
        OnEnter = edtConsecutivoEnter
        OnExit = edtConsecutivoExit
        OnKeyDown = edtConsecutivoKeyDown
      end
    end
    object tab1: TAdvSmoothTabPager
      Tag = 99
      Left = 6
      Top = 58
      Width = 730
      Height = 208
      Anchors = [akLeft, akTop, akRight]
      ActivePage = AdvSmoothTabPager11
      TabPosition = tpTopLeft
      TabSettings.StartMargin = 4
      TabReorder = False
      TabOrder = 1
      object AdvSmoothTabPager11: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 728
        Height = 180
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
        object JvLabel6: TJvLabel
          Left = 15
          Top = 43
          Width = 82
          Height = 13
          Caption = 'Lugar requerido:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel3: TJvLabel
          Left = 15
          Top = 72
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
        object Label4: TLabel
          Left = 15
          Top = 93
          Width = 60
          Height = 13
          Caption = 'Comentarios'
          Transparent = True
        end
        object JvLabel4: TJvLabel
          Left = 16
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
        object DBMemoComentarios: TDBMemo
          Left = 15
          Top = 112
          Width = 423
          Height = 59
          DataField = 'comentarios'
          DataSource = dsDatos
          TabOrder = 5
        end
        object edtReferencia: TDBEdit
          Left = 79
          Top = 69
          Width = 203
          Height = 21
          DataField = 'referencia'
          DataSource = dsDatos
          TabOrder = 4
        end
        object edtCodigoLugar: TEdit
          Left = 103
          Top = 40
          Width = 179
          Height = 21
          TabOrder = 1
          OnKeyPress = edtCodigoLugarKeyPress
        end
        object btnLugar: TButton
          Left = 288
          Top = 40
          Width = 24
          Height = 21
          Caption = '...'
          TabOrder = 2
          OnClick = btnLugarClick
        end
        object dtpFecha: TJvDBDatePickerEdit
          Left = 57
          Top = 13
          Width = 97
          Height = 21
          AllowNoDate = True
          DataField = 'fecha'
          DataSource = dsDatos
          TabOrder = 0
        end
        object edtTituloLugar: TAdvEdit
          Tag = 99
          Left = 318
          Top = 43
          Width = 419
          Height = 21
          TabStop = False
          DisabledColor = clInactiveCaption
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          BorderStyle = bsNone
          Color = clWindow
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = 'edtTituloLugar'
          Transparent = True
          Visible = True
          Version = '2.9.0.0'
        end
      end
      object AdvSmoothTabPager12: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 728
        Height = 180
        Caption = 'Firmantes'
        PageAppearance.Color = 15066597
        PageAppearance.ColorTo = 15066597
        PageAppearance.ColorMirror = 15066597
        PageAppearance.ColorMirrorTo = 15066597
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
        TabAppearance.ColorDown = clSilver
        TabAppearance.ColorDisabled = 16765357
        object cmbFirmante1: TAdvComboBox
          Left = 32
          Top = 29
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
          Left = 277
          Top = 29
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
          Left = 519
          Top = 29
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
          Left = 32
          Top = 72
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
          Left = 277
          Top = 72
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
          Left = 519
          Top = 72
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
          Left = 32
          Top = 112
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
          Left = 277
          Top = 112
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
          Left = 519
          Top = 112
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
          Left = 32
          Top = 151
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
      end
    end
  end
  object mdOCDetalle: TJvMemoryData
    FieldDefs = <>
    Left = 624
    Top = 136
  end
end
