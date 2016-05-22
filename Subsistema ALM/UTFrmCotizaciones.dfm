inherited FrmCotizaciones: TFrmCotizaciones
  Caption = 'Cotizaciones de material y equipo'
  ClientWidth = 884
  ExplicitLeft = 8
  ExplicitTop = 8
  ExplicitWidth = 900
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 884
    ExplicitWidth = 884
    inherited LbFiltros: TJvLabel
      Width = 876
      ExplicitWidth = 876
    end
    inherited GroupBoxFiltro: TGroupBox
      Left = 4
      Width = 865
      ExplicitLeft = 4
      ExplicitWidth = 865
      inherited BtnSearch: TAdvShapeButton
        Left = 813
        TabOrder = 5
        OnClick = BtnSearchClick
        ExplicitLeft = 813
      end
      inherited chkUsuario: TAdvOfficeCheckBox
        Left = 730
        Top = 10
        TabOrder = 4
        OnClick = cmbFiltroEstadoChange
        ExplicitLeft = 730
        ExplicitTop = 10
      end
      inherited cmbConvenio: TDBLookupComboBox
        TabOrder = 6
      end
      inherited AdvShapeButton1: TAdvShapeButton
        TabOrder = 7
      end
      object edtFiltroFolio: TAdvEdit
        Left = 138
        Top = 17
        Width = 103
        Height = 21
        EmptyText = 'Folio'
        EmptyTextFocused = True
        ReturnIsTab = True
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
        OnKeyPress = edtFiltroFolioKeyPress
        Version = '2.9.0.0'
      end
      object grpFiltroFecha: TGroupBox
        Left = 356
        Top = 6
        Width = 269
        Height = 40
        Caption = 'Fecha'
        TabOrder = 2
        object chkFecha: TAdvOfficeCheckBox
          Left = 9
          Top = 13
          Width = 15
          Height = 20
          TabOrder = 0
          TabStop = True
          Alignment = taRightJustify
          ReturnIsTab = True
          Version = '1.3.2.0'
        end
        object dtpFiltroFechaIni: TAdvSmoothDatePicker
          Left = 59
          Top = 11
          Width = 89
          Height = 21
          Flat = False
          LabelCaption = 'De:'
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
          ReadOnly = False
          TabOrder = 1
          Text = '15/03/2012'
          Visible = True
          Version = '2.0.1.7'
          ButtonStyle = bsDropDown
          ButtonWidth = 16
          Etched = False
          Glyph.Data = {
            DA020000424DDA0200000000000036000000280000000D0000000D0000000100
            200000000000A402000000000000000000000000000000000000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
            0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
          HideCalendarAfterSelection = True
          Calendar.Fill.Color = 15984090
          Calendar.Fill.ColorTo = 15785680
          Calendar.Fill.ColorMirror = clNone
          Calendar.Fill.ColorMirrorTo = clNone
          Calendar.Fill.BorderColor = clNone
          Calendar.Fill.Rounding = 0
          Calendar.Fill.ShadowOffset = 0
          Calendar.Fill.Glow = gmNone
          Calendar.Animation = True
          Calendar.ShowCurrentDate = True
          Calendar.DateAppearance.DateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DateFont.Color = clWindowText
          Calendar.DateAppearance.DateFont.Height = -11
          Calendar.DateAppearance.DateFont.Name = 'Tahoma'
          Calendar.DateAppearance.DateFont.Style = []
          Calendar.DateAppearance.DateFill.Color = 16773091
          Calendar.DateAppearance.DateFill.ColorTo = 16768452
          Calendar.DateAppearance.DateFill.ColorMirror = 16765357
          Calendar.DateAppearance.DateFill.ColorMirrorTo = 16767936
          Calendar.DateAppearance.DateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.DateFill.BorderColor = clNone
          Calendar.DateAppearance.DateFill.Rounding = 0
          Calendar.DateAppearance.DateFill.ShadowOffset = 0
          Calendar.DateAppearance.DateFill.Glow = gmNone
          Calendar.DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DayOfWeekFont.Color = clWindowText
          Calendar.DateAppearance.DayOfWeekFont.Height = -11
          Calendar.DateAppearance.DayOfWeekFont.Name = 'Tahoma'
          Calendar.DateAppearance.DayOfWeekFont.Style = []
          Calendar.DateAppearance.DayOfWeekFill.Color = 15984090
          Calendar.DateAppearance.DayOfWeekFill.ColorTo = 15785680
          Calendar.DateAppearance.DayOfWeekFill.ColorMirror = clNone
          Calendar.DateAppearance.DayOfWeekFill.ColorMirrorTo = clNone
          Calendar.DateAppearance.DayOfWeekFill.BorderColor = clNone
          Calendar.DateAppearance.DayOfWeekFill.Rounding = 0
          Calendar.DateAppearance.DayOfWeekFill.ShadowOffset = 0
          Calendar.DateAppearance.DayOfWeekFill.Glow = gmNone
          Calendar.DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.SelectedDateFont.Color = clWindowText
          Calendar.DateAppearance.SelectedDateFont.Height = -11
          Calendar.DateAppearance.SelectedDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.SelectedDateFont.Style = []
          Calendar.DateAppearance.SelectedDateFill.Color = 11196927
          Calendar.DateAppearance.SelectedDateFill.ColorTo = 7257087
          Calendar.DateAppearance.SelectedDateFill.ColorMirror = 4370174
          Calendar.DateAppearance.SelectedDateFill.ColorMirrorTo = 8053246
          Calendar.DateAppearance.SelectedDateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.SelectedDateFill.BorderColor = 4370174
          Calendar.DateAppearance.SelectedDateFill.Rounding = 0
          Calendar.DateAppearance.SelectedDateFill.ShadowOffset = 0
          Calendar.DateAppearance.SelectedDateFill.Glow = gmNone
          Calendar.DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.CurrentDateFont.Color = clWindowText
          Calendar.DateAppearance.CurrentDateFont.Height = -11
          Calendar.DateAppearance.CurrentDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.CurrentDateFont.Style = []
          Calendar.DateAppearance.CurrentDateFill.Color = 7778289
          Calendar.DateAppearance.CurrentDateFill.ColorTo = 4296947
          Calendar.DateAppearance.CurrentDateFill.ColorMirror = 946929
          Calendar.DateAppearance.CurrentDateFill.ColorMirrorTo = 5021693
          Calendar.DateAppearance.CurrentDateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.CurrentDateFill.BorderColor = 4548219
          Calendar.DateAppearance.CurrentDateFill.Rounding = 0
          Calendar.DateAppearance.CurrentDateFill.ShadowOffset = 0
          Calendar.DateAppearance.CurrentDateFill.Glow = gmNone
          Calendar.DateAppearance.WeekendFill.Color = 16773091
          Calendar.DateAppearance.WeekendFill.ColorTo = 16768452
          Calendar.DateAppearance.WeekendFill.ColorMirror = 16765357
          Calendar.DateAppearance.WeekendFill.ColorMirrorTo = 16767936
          Calendar.DateAppearance.WeekendFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.WeekendFill.BorderColor = clNone
          Calendar.DateAppearance.WeekendFill.Rounding = 0
          Calendar.DateAppearance.WeekendFill.ShadowOffset = 0
          Calendar.DateAppearance.WeekendFill.Glow = gmNone
          Calendar.DateAppearance.WeekendFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.WeekendFont.Color = clWindowText
          Calendar.DateAppearance.WeekendFont.Height = -11
          Calendar.DateAppearance.WeekendFont.Name = 'Tahoma'
          Calendar.DateAppearance.WeekendFont.Style = []
          Calendar.DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.HoverDateFont.Color = clWindowText
          Calendar.DateAppearance.HoverDateFont.Height = -11
          Calendar.DateAppearance.HoverDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.HoverDateFont.Style = []
          Calendar.DateAppearance.HoverDateFill.Color = 15465983
          Calendar.DateAppearance.HoverDateFill.ColorTo = 11332863
          Calendar.DateAppearance.HoverDateFill.ColorMirror = 5888767
          Calendar.DateAppearance.HoverDateFill.ColorMirrorTo = 10807807
          Calendar.DateAppearance.HoverDateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.HoverDateFill.BorderColor = 10079963
          Calendar.DateAppearance.HoverDateFill.Rounding = 0
          Calendar.DateAppearance.HoverDateFill.ShadowOffset = 0
          Calendar.DateAppearance.HoverDateFill.Glow = gmNone
          Calendar.DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.MonthDateFont.Color = clWindowText
          Calendar.DateAppearance.MonthDateFont.Height = -11
          Calendar.DateAppearance.MonthDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.MonthDateFont.Style = []
          Calendar.DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.YearDateFont.Color = clWindowText
          Calendar.DateAppearance.YearDateFont.Height = -11
          Calendar.DateAppearance.YearDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.YearDateFont.Style = []
          Calendar.DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.WeekNumbers.Font.Color = clWindowText
          Calendar.DateAppearance.WeekNumbers.Font.Height = -11
          Calendar.DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
          Calendar.DateAppearance.WeekNumbers.Font.Style = []
          Calendar.DateAppearance.WeekNumbers.Fill.Color = 15984090
          Calendar.DateAppearance.WeekNumbers.Fill.ColorTo = 15785680
          Calendar.DateAppearance.WeekNumbers.Fill.ColorMirror = clNone
          Calendar.DateAppearance.WeekNumbers.Fill.ColorMirrorTo = clNone
          Calendar.DateAppearance.WeekNumbers.Fill.BorderColor = clNone
          Calendar.DateAppearance.WeekNumbers.Fill.Rounding = 0
          Calendar.DateAppearance.WeekNumbers.Fill.ShadowOffset = 0
          Calendar.DateAppearance.WeekNumbers.Fill.Glow = gmNone
          Calendar.DateAppearance.DisabledDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DisabledDateFont.Color = clGray
          Calendar.DateAppearance.DisabledDateFont.Height = -11
          Calendar.DateAppearance.DisabledDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.DisabledDateFont.Style = []
          Calendar.DateAppearance.DisabledDateFill.Color = 15921906
          Calendar.DateAppearance.DisabledDateFill.ColorTo = 11974326
          Calendar.DateAppearance.DisabledDateFill.ColorMirror = 11974326
          Calendar.DateAppearance.DisabledDateFill.ColorMirrorTo = 15921906
          Calendar.DateAppearance.DisabledDateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.DisabledDateFill.BorderColor = clNone
          Calendar.DateAppearance.DisabledDateFill.Rounding = 0
          Calendar.DateAppearance.DisabledDateFill.ShadowOffset = 0
          Calendar.DateAppearance.DisabledDateFill.Glow = gmNone
          Calendar.DateAppearance.DateBeforeFill.Color = clNone
          Calendar.DateAppearance.DateBeforeFill.ColorMirror = clNone
          Calendar.DateAppearance.DateBeforeFill.ColorMirrorTo = clNone
          Calendar.DateAppearance.DateBeforeFill.BorderColor = clNone
          Calendar.DateAppearance.DateBeforeFill.Rounding = 0
          Calendar.DateAppearance.DateBeforeFill.ShadowOffset = 0
          Calendar.DateAppearance.DateBeforeFill.Glow = gmNone
          Calendar.DateAppearance.DateAfterFill.Color = clNone
          Calendar.DateAppearance.DateAfterFill.ColorMirror = clNone
          Calendar.DateAppearance.DateAfterFill.ColorMirrorTo = clNone
          Calendar.DateAppearance.DateAfterFill.BorderColor = clNone
          Calendar.DateAppearance.DateAfterFill.Rounding = 0
          Calendar.DateAppearance.DateAfterFill.ShadowOffset = 0
          Calendar.DateAppearance.DateAfterFill.Glow = gmNone
          Calendar.DateAppearance.DateBeforeFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DateBeforeFont.Color = clSilver
          Calendar.DateAppearance.DateBeforeFont.Height = -11
          Calendar.DateAppearance.DateBeforeFont.Name = 'Tahoma'
          Calendar.DateAppearance.DateBeforeFont.Style = []
          Calendar.DateAppearance.DateAfterFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DateAfterFont.Color = clSilver
          Calendar.DateAppearance.DateAfterFont.Height = -11
          Calendar.DateAppearance.DateAfterFont.Name = 'Tahoma'
          Calendar.DateAppearance.DateAfterFont.Style = []
          Calendar.StatusAppearance.Fill.Color = clRed
          Calendar.StatusAppearance.Fill.ColorMirror = clNone
          Calendar.StatusAppearance.Fill.ColorMirrorTo = clNone
          Calendar.StatusAppearance.Fill.GradientType = gtSolid
          Calendar.StatusAppearance.Fill.BorderColor = clGray
          Calendar.StatusAppearance.Fill.Rounding = 0
          Calendar.StatusAppearance.Fill.ShadowOffset = 0
          Calendar.StatusAppearance.Fill.Glow = gmNone
          Calendar.StatusAppearance.Font.Charset = DEFAULT_CHARSET
          Calendar.StatusAppearance.Font.Color = clWhite
          Calendar.StatusAppearance.Font.Height = -11
          Calendar.StatusAppearance.Font.Name = 'Tahoma'
          Calendar.StatusAppearance.Font.Style = []
          Calendar.Footer.Fill.Color = 16773091
          Calendar.Footer.Fill.ColorTo = 16765615
          Calendar.Footer.Fill.ColorMirror = clNone
          Calendar.Footer.Fill.ColorMirrorTo = clNone
          Calendar.Footer.Fill.BorderColor = 16765615
          Calendar.Footer.Fill.Rounding = 0
          Calendar.Footer.Fill.ShadowOffset = 0
          Calendar.Footer.Fill.Glow = gmNone
          Calendar.Footer.Font.Charset = DEFAULT_CHARSET
          Calendar.Footer.Font.Color = 7485192
          Calendar.Footer.Font.Height = -11
          Calendar.Footer.Font.Name = 'Tahoma'
          Calendar.Footer.Font.Style = []
          Calendar.Header.Fill.Color = 16773091
          Calendar.Header.Fill.ColorTo = 16765615
          Calendar.Header.Fill.ColorMirror = clNone
          Calendar.Header.Fill.ColorMirrorTo = clNone
          Calendar.Header.Fill.BorderColor = 16765615
          Calendar.Header.Fill.Rounding = 0
          Calendar.Header.Fill.ShadowOffset = 0
          Calendar.Header.Fill.Glow = gmNone
          Calendar.Header.ArrowColor = 7485192
          Calendar.Header.Font.Charset = DEFAULT_CHARSET
          Calendar.Header.Font.Color = 7485192
          Calendar.Header.Font.Height = -11
          Calendar.Header.Font.Name = 'Tahoma'
          Calendar.Header.Font.Style = []
          Calendar.Width = 257
          Calendar.Height = 249
          Calendar.ShowHint = False
          Date = 40983.000000000000000000
        end
        object dtpFiltroFechaFin: TAdvSmoothDatePicker
          Left = 174
          Top = 11
          Width = 89
          Height = 21
          Flat = False
          LabelCaption = 'a:'
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
          ReadOnly = False
          TabOrder = 2
          Text = '15/03/2012'
          Visible = True
          Version = '2.0.1.7'
          ButtonStyle = bsDropDown
          ButtonWidth = 16
          Etched = False
          Glyph.Data = {
            DA020000424DDA0200000000000036000000280000000D0000000D0000000100
            200000000000A402000000000000000000000000000000000000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
            0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
          HideCalendarAfterSelection = True
          Calendar.Fill.Color = 15984090
          Calendar.Fill.ColorTo = 15785680
          Calendar.Fill.ColorMirror = clNone
          Calendar.Fill.ColorMirrorTo = clNone
          Calendar.Fill.BorderColor = clNone
          Calendar.Fill.Rounding = 0
          Calendar.Fill.ShadowOffset = 0
          Calendar.Fill.Glow = gmNone
          Calendar.Animation = True
          Calendar.ShowCurrentDate = True
          Calendar.DateAppearance.DateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DateFont.Color = clWindowText
          Calendar.DateAppearance.DateFont.Height = -11
          Calendar.DateAppearance.DateFont.Name = 'Tahoma'
          Calendar.DateAppearance.DateFont.Style = []
          Calendar.DateAppearance.DateFill.Color = 16773091
          Calendar.DateAppearance.DateFill.ColorTo = 16768452
          Calendar.DateAppearance.DateFill.ColorMirror = 16765357
          Calendar.DateAppearance.DateFill.ColorMirrorTo = 16767936
          Calendar.DateAppearance.DateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.DateFill.BorderColor = clNone
          Calendar.DateAppearance.DateFill.Rounding = 0
          Calendar.DateAppearance.DateFill.ShadowOffset = 0
          Calendar.DateAppearance.DateFill.Glow = gmNone
          Calendar.DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DayOfWeekFont.Color = clWindowText
          Calendar.DateAppearance.DayOfWeekFont.Height = -11
          Calendar.DateAppearance.DayOfWeekFont.Name = 'Tahoma'
          Calendar.DateAppearance.DayOfWeekFont.Style = []
          Calendar.DateAppearance.DayOfWeekFill.Color = 15984090
          Calendar.DateAppearance.DayOfWeekFill.ColorTo = 15785680
          Calendar.DateAppearance.DayOfWeekFill.ColorMirror = clNone
          Calendar.DateAppearance.DayOfWeekFill.ColorMirrorTo = clNone
          Calendar.DateAppearance.DayOfWeekFill.BorderColor = clNone
          Calendar.DateAppearance.DayOfWeekFill.Rounding = 0
          Calendar.DateAppearance.DayOfWeekFill.ShadowOffset = 0
          Calendar.DateAppearance.DayOfWeekFill.Glow = gmNone
          Calendar.DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.SelectedDateFont.Color = clWindowText
          Calendar.DateAppearance.SelectedDateFont.Height = -11
          Calendar.DateAppearance.SelectedDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.SelectedDateFont.Style = []
          Calendar.DateAppearance.SelectedDateFill.Color = 11196927
          Calendar.DateAppearance.SelectedDateFill.ColorTo = 7257087
          Calendar.DateAppearance.SelectedDateFill.ColorMirror = 4370174
          Calendar.DateAppearance.SelectedDateFill.ColorMirrorTo = 8053246
          Calendar.DateAppearance.SelectedDateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.SelectedDateFill.BorderColor = 4370174
          Calendar.DateAppearance.SelectedDateFill.Rounding = 0
          Calendar.DateAppearance.SelectedDateFill.ShadowOffset = 0
          Calendar.DateAppearance.SelectedDateFill.Glow = gmNone
          Calendar.DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.CurrentDateFont.Color = clWindowText
          Calendar.DateAppearance.CurrentDateFont.Height = -11
          Calendar.DateAppearance.CurrentDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.CurrentDateFont.Style = []
          Calendar.DateAppearance.CurrentDateFill.Color = 7778289
          Calendar.DateAppearance.CurrentDateFill.ColorTo = 4296947
          Calendar.DateAppearance.CurrentDateFill.ColorMirror = 946929
          Calendar.DateAppearance.CurrentDateFill.ColorMirrorTo = 5021693
          Calendar.DateAppearance.CurrentDateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.CurrentDateFill.BorderColor = 4548219
          Calendar.DateAppearance.CurrentDateFill.Rounding = 0
          Calendar.DateAppearance.CurrentDateFill.ShadowOffset = 0
          Calendar.DateAppearance.CurrentDateFill.Glow = gmNone
          Calendar.DateAppearance.WeekendFill.Color = 16773091
          Calendar.DateAppearance.WeekendFill.ColorTo = 16768452
          Calendar.DateAppearance.WeekendFill.ColorMirror = 16765357
          Calendar.DateAppearance.WeekendFill.ColorMirrorTo = 16767936
          Calendar.DateAppearance.WeekendFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.WeekendFill.BorderColor = clNone
          Calendar.DateAppearance.WeekendFill.Rounding = 0
          Calendar.DateAppearance.WeekendFill.ShadowOffset = 0
          Calendar.DateAppearance.WeekendFill.Glow = gmNone
          Calendar.DateAppearance.WeekendFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.WeekendFont.Color = clWindowText
          Calendar.DateAppearance.WeekendFont.Height = -11
          Calendar.DateAppearance.WeekendFont.Name = 'Tahoma'
          Calendar.DateAppearance.WeekendFont.Style = []
          Calendar.DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.HoverDateFont.Color = clWindowText
          Calendar.DateAppearance.HoverDateFont.Height = -11
          Calendar.DateAppearance.HoverDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.HoverDateFont.Style = []
          Calendar.DateAppearance.HoverDateFill.Color = 15465983
          Calendar.DateAppearance.HoverDateFill.ColorTo = 11332863
          Calendar.DateAppearance.HoverDateFill.ColorMirror = 5888767
          Calendar.DateAppearance.HoverDateFill.ColorMirrorTo = 10807807
          Calendar.DateAppearance.HoverDateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.HoverDateFill.BorderColor = 10079963
          Calendar.DateAppearance.HoverDateFill.Rounding = 0
          Calendar.DateAppearance.HoverDateFill.ShadowOffset = 0
          Calendar.DateAppearance.HoverDateFill.Glow = gmNone
          Calendar.DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.MonthDateFont.Color = clWindowText
          Calendar.DateAppearance.MonthDateFont.Height = -11
          Calendar.DateAppearance.MonthDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.MonthDateFont.Style = []
          Calendar.DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.YearDateFont.Color = clWindowText
          Calendar.DateAppearance.YearDateFont.Height = -11
          Calendar.DateAppearance.YearDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.YearDateFont.Style = []
          Calendar.DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.WeekNumbers.Font.Color = clWindowText
          Calendar.DateAppearance.WeekNumbers.Font.Height = -11
          Calendar.DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
          Calendar.DateAppearance.WeekNumbers.Font.Style = []
          Calendar.DateAppearance.WeekNumbers.Fill.Color = 15984090
          Calendar.DateAppearance.WeekNumbers.Fill.ColorTo = 15785680
          Calendar.DateAppearance.WeekNumbers.Fill.ColorMirror = clNone
          Calendar.DateAppearance.WeekNumbers.Fill.ColorMirrorTo = clNone
          Calendar.DateAppearance.WeekNumbers.Fill.BorderColor = clNone
          Calendar.DateAppearance.WeekNumbers.Fill.Rounding = 0
          Calendar.DateAppearance.WeekNumbers.Fill.ShadowOffset = 0
          Calendar.DateAppearance.WeekNumbers.Fill.Glow = gmNone
          Calendar.DateAppearance.DisabledDateFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DisabledDateFont.Color = clGray
          Calendar.DateAppearance.DisabledDateFont.Height = -11
          Calendar.DateAppearance.DisabledDateFont.Name = 'Tahoma'
          Calendar.DateAppearance.DisabledDateFont.Style = []
          Calendar.DateAppearance.DisabledDateFill.Color = 15921906
          Calendar.DateAppearance.DisabledDateFill.ColorTo = 11974326
          Calendar.DateAppearance.DisabledDateFill.ColorMirror = 11974326
          Calendar.DateAppearance.DisabledDateFill.ColorMirrorTo = 15921906
          Calendar.DateAppearance.DisabledDateFill.GradientMirrorType = gtVertical
          Calendar.DateAppearance.DisabledDateFill.BorderColor = clNone
          Calendar.DateAppearance.DisabledDateFill.Rounding = 0
          Calendar.DateAppearance.DisabledDateFill.ShadowOffset = 0
          Calendar.DateAppearance.DisabledDateFill.Glow = gmNone
          Calendar.DateAppearance.DateBeforeFill.Color = clNone
          Calendar.DateAppearance.DateBeforeFill.ColorMirror = clNone
          Calendar.DateAppearance.DateBeforeFill.ColorMirrorTo = clNone
          Calendar.DateAppearance.DateBeforeFill.BorderColor = clNone
          Calendar.DateAppearance.DateBeforeFill.Rounding = 0
          Calendar.DateAppearance.DateBeforeFill.ShadowOffset = 0
          Calendar.DateAppearance.DateBeforeFill.Glow = gmNone
          Calendar.DateAppearance.DateAfterFill.Color = clNone
          Calendar.DateAppearance.DateAfterFill.ColorMirror = clNone
          Calendar.DateAppearance.DateAfterFill.ColorMirrorTo = clNone
          Calendar.DateAppearance.DateAfterFill.BorderColor = clNone
          Calendar.DateAppearance.DateAfterFill.Rounding = 0
          Calendar.DateAppearance.DateAfterFill.ShadowOffset = 0
          Calendar.DateAppearance.DateAfterFill.Glow = gmNone
          Calendar.DateAppearance.DateBeforeFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DateBeforeFont.Color = clSilver
          Calendar.DateAppearance.DateBeforeFont.Height = -11
          Calendar.DateAppearance.DateBeforeFont.Name = 'Tahoma'
          Calendar.DateAppearance.DateBeforeFont.Style = []
          Calendar.DateAppearance.DateAfterFont.Charset = DEFAULT_CHARSET
          Calendar.DateAppearance.DateAfterFont.Color = clSilver
          Calendar.DateAppearance.DateAfterFont.Height = -11
          Calendar.DateAppearance.DateAfterFont.Name = 'Tahoma'
          Calendar.DateAppearance.DateAfterFont.Style = []
          Calendar.StatusAppearance.Fill.Color = clRed
          Calendar.StatusAppearance.Fill.ColorMirror = clNone
          Calendar.StatusAppearance.Fill.ColorMirrorTo = clNone
          Calendar.StatusAppearance.Fill.GradientType = gtSolid
          Calendar.StatusAppearance.Fill.BorderColor = clGray
          Calendar.StatusAppearance.Fill.Rounding = 0
          Calendar.StatusAppearance.Fill.ShadowOffset = 0
          Calendar.StatusAppearance.Fill.Glow = gmNone
          Calendar.StatusAppearance.Font.Charset = DEFAULT_CHARSET
          Calendar.StatusAppearance.Font.Color = clWhite
          Calendar.StatusAppearance.Font.Height = -11
          Calendar.StatusAppearance.Font.Name = 'Tahoma'
          Calendar.StatusAppearance.Font.Style = []
          Calendar.Footer.Fill.Color = 16773091
          Calendar.Footer.Fill.ColorTo = 16765615
          Calendar.Footer.Fill.ColorMirror = clNone
          Calendar.Footer.Fill.ColorMirrorTo = clNone
          Calendar.Footer.Fill.BorderColor = 16765615
          Calendar.Footer.Fill.Rounding = 0
          Calendar.Footer.Fill.ShadowOffset = 0
          Calendar.Footer.Fill.Glow = gmNone
          Calendar.Footer.Font.Charset = DEFAULT_CHARSET
          Calendar.Footer.Font.Color = 7485192
          Calendar.Footer.Font.Height = -11
          Calendar.Footer.Font.Name = 'Tahoma'
          Calendar.Footer.Font.Style = []
          Calendar.Header.Fill.Color = 16773091
          Calendar.Header.Fill.ColorTo = 16765615
          Calendar.Header.Fill.ColorMirror = clNone
          Calendar.Header.Fill.ColorMirrorTo = clNone
          Calendar.Header.Fill.BorderColor = 16765615
          Calendar.Header.Fill.Rounding = 0
          Calendar.Header.Fill.ShadowOffset = 0
          Calendar.Header.Fill.Glow = gmNone
          Calendar.Header.ArrowColor = 7485192
          Calendar.Header.Font.Charset = DEFAULT_CHARSET
          Calendar.Header.Font.Color = 7485192
          Calendar.Header.Font.Height = -11
          Calendar.Header.Font.Name = 'Tahoma'
          Calendar.Header.Font.Style = []
          Calendar.Width = 257
          Calendar.Height = 249
          Calendar.ShowHint = False
          Date = 40983.000000000000000000
        end
      end
      object cmbFiltroEstado: TAdvComboBox
        Left = 634
        Top = 17
        Width = 84
        Height = 21
        Color = clWindow
        Version = '1.3.2.2'
        Visible = True
        ButtonWidth = 18
        DropWidth = 0
        Enabled = True
        ItemIndex = 0
        Items.Strings = (
          'Generado'
          'Cotizado'
          'Cancelado')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 3
        Text = 'Generado'
        OnChange = cmbFiltroEstadoChange
        OnKeyPress = edtFiltroFolioKeyPress
      end
      object EditFReferencia: TAdvEdit
        Left = 246
        Top = 17
        Width = 107
        Height = 21
        EmptyText = 'Referencia'
        EmptyTextFocused = True
        ReturnIsTab = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 1
        Visible = True
        OnKeyPress = edtFiltroFolioKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 884
    ExplicitWidth = 884
    inherited DBGridPrincipal: TNextDBGrid
      Width = 882
      PopupMenu = MainPopupMenu
      ExplicitWidth = 882
      object NxDBNumberColumn1: TNxDBTextColumn
        DefaultValue = '0'
        DefaultWidth = 180
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Folio'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 180
        FieldName = 'serie'
      end
      object NxDBDateColumn1: TNxDBDateColumn
        DefaultValue = '01/03/2012'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Fecha'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stDate
        FieldName = 'fecha'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 168
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Referecia'
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 168
        FieldName = 'referencia'
      end
      object NxDBDateColumn2: TNxDBDateColumn
        DefaultValue = '12/03/2012'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Requerido'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stDate
        FieldName = 'fecharequerida'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxDBTextColumn1: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Solicitud'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        FieldName = 'seriesol'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 110
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Estado'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        Width = 110
        FieldName = 'estado'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 250
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Gener'#243
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
        Width = 250
        FieldName = 'usuario'
      end
    end
    inherited PanelBarra: TPanel
      Width = 882
      ExplicitWidth = 882
      inherited Panel1: TPanel
        Width = 749
        ExplicitWidth = 749
        inherited PanelAdd: TPanel
          Visible = False
          inherited BtnAdd: TAdvShapeButton
            Visible = False
          end
        end
        inherited PanelPrint: TPanel
          inherited BtnPrint: TAdvShapeButton
            Left = -2
            ExplicitLeft = -2
          end
        end
        inherited PanelExport: TPanel
          inherited BtnExport: TAdvShapeButton
            Left = 0
            Visible = True
            ExplicitLeft = 0
          end
        end
        inherited Panel3: TPanel
          TabOrder = 9
        end
        object BtnCapturar: TAdvShapeButton
          Left = 518
          Top = 3
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
            1DC2000000097048597300002E2200002E2201AAE2DD92000007594944415458
            47E5977B5054D71DC757E27F899DC4B499C94CA6D389EDA4CD035F6DDA4C1383
            8A8D629A421E6262308D4EC7A94604813431C607CB4BA349B0D480823C960516
            14DC5D1116B45558F6F256E4A12C2BBBC0B28BC280DDDD7BEFDE5D764FBEE77A
            974282553B19FFE9CE7CE677EEEF3C7EDFF3BBE79E73768E6CDACFEFF52E9705
            05AD97CD99B360BAFF072C0B18AB56C6B2C541F3E6DD98312EF1F9D288DF4F1E
            C46FD2EBEDB50D0C2C9D12E0F7F95203817D9393FEC959A0FED94063FF7D2286
            B20F0F0FB6E8F50B647EBF7F19754095CFE3F14C52BCD398CD47EBD1F08EA0DE
            7727D0CF87894C221E6966181515A0A202DC6E37EF1184EF2108829B82BAEF01
            FF5D7FE82704A04594C559D249300CC3CA90FEF35044789EFF37444C21A03C85
            2050BF2300FC8E2904C18181E9B3735604C189FADBB8DD2E0A44B830715723C3
            109A812A37CFF958D66947003B1AD8D178266EF748C087CEF6E9C04FEB46E0BB
            8DC743ED0D8C7353441044E0BBE9B9ED1B45791471C70D7ABD8F0AA874399DAC
            C3E1E8E558B697E7B819701C6784CF28F0BCD1CD717D184004659300A885F029
            50771DCF145A779D8231FAA761461B33E20E353735F1F415682726266EDE9A98
            68E45C2E06C10234A22C027F33DA8C5987AC7CBFD9CC99BF83C53220F92C5C7B
            6B1B0FAC4E87A31D415BD19FD2F61FD87664A20D02BA2EB5B58DCBB0F4D563A3
            A3D711408B401A74A2684558F60C059D2B1B0DCCAD92E212A250284875B58E30
            4C23311818913395954451A020050505E4E8D1A3A4B4A464C262B1B4B02E570D
            C7B13A8C51C3B162590419A88180FAEECE4EAB0C2BB27CC46EBF3C3E3E7E0241
            B3913A4A8E08C79DA040F1899EAECEB35A8DA6E7944A653DAFD339EBF50D4457
            534BCE565593F4F4747F7E6EEE787959998DA2ABAAB2F47475D5B91C8E228CA3
            70F37C21050B5D49C178851070DA6434F6CA3C3C7FD23A347411293BE8F37A93
            BD5EAF5C220936C92B08C914D4A5DCB0DB3391FEBCBEAB3D3D4DCD2D62708DF6
            0C3978E0805F5D5161EAECE8A81C309B0BCD265321369A2C9E650F61011EC4FA
            F902F6363C7F08E37E0101C7062C967619D27B0AEFE2EBB1B1B155706EC21611
            03BB036C4759043BDD76E9391A76EB90D97C8E696C128397975710B95CEE47DA
            3BFA4DA62FD13E566227EC4E7C1571D4026AE3F01C8FF176629CE4A1C1C10619
            EF7295330D0DBBE9BE8CFDE811543C0FC2C006F001D808DE97A0BE75169349DD
            D06040F0D344A52A23BB77EFF62BF3F39B8DD7AEED417D94C44604A4FD6700DF
            9F21808E196F1B1EFEA728A0B9B1712FE207050E070879080D9E000B510E858D
            807D8706870D37F7F596D5D7EB89AAF42451142A494242822F37FB7843777777
            3CDABC790FFC096DB6D86DB69AE9021E9AEDD8A562C063E069B0141D5FEAEBEA
            505CACAB27C5252A928F951F1B13E33B9E9559D7D9D9495FDDEB77E08FF00758
            83F2662C7EDD5D057C57144404D5556A77D1F4A71FC920870E7D4922D7ADF3A5
            2625EAF4172FD257F41BF05BF03BC9BE28F996C006A3FF2FC14F69BDCD66D3DE
            B7002AA85A55FC9EAAB48C24CA93495CFCC7645170B0376A7D64616C6C2C7D65
            4152D6E64A76EAD54E9F0CEA7E366CB3A9FF2701172A35EF95579C2649C9A9A2
            80A58B170B9BA3A27263B66E7DEE5E6F4FC8C00264E08712B044D8B4614376C2
            8E1DCF3C10017555EA776766E0FF5EC092079C0183EE6C845AA325C92969243E
            E16F64F1A245C2C6C8C86F3644443C75FF6B80E3CA5B9B9B67EC84B30DC2DFBA
            F173C7C0F597C7067B5F1CB15AF7E874B52425F500F97CEF7E12111EEED9F749
            BCE6BCBAFC5D4DF6DF5FDAFBEAC247EF2664EA2BC00955817339CD6030CC87F3
            4712F3A473E1613C3F8CF2DCB35A754156662691272612795212793F6A2359BD
            3A8CAC5E1346C2C2D6926DDBB691FDFBF791B722C2FD7F78E5F71F1D3E7C78BE
            B427CC811599F127089F21B66235BD0F68708A65E38FC2AFE9DEEF178485B02F
            007A283D077E057E7150BE6FFB1B6BC3CEBD161ADABB7279883164D92BD75685
            8418434342FA56AD58D1F7DACA9560853174F9B2BE2D9B3E54661D39B2C6E572
            3D299D293F81801FA3FC38A0C21E018BEC566B35BD92558D8E8C689DE3E3F4C4
            5B8F938AB20EE5B7F157ED2DD808E2F586C3AE6D6298BF962A9569C50AC58192
            A2A254955299A25228528A0A0A928BF2F29214B9B9F2C2BCBC44D83D8C5E1F89
            A3F7657A7648DB72604BA6130D066F984CA67FC9102C0197924BB870A4C19904
            41729088BF6AFB50B7077C0E3E43A676E126F3296E489F808F518E878D838D75
            B36C0C6C34C6F90897906D602BDA6F41BFBF20A39B613F041F88C7F0E4243DAE
            23C16775172E94D05BF1E37056C132A0925E528106E5D3B015E01438899495C2
            57028A80122840BE442E6C0EC806C74016C804DF807F800C7004E3A4C37E45E9
            EEEA3A959393F3BAB82E9C4E6730667319D76C1E9537C130B082218941D80160
            01F44ADD2F6182A5F40123E805D7C055D003BA4117E8045728B8FA1931F3FE8C
            8C8CB8E9771099CD6279F64A4787A6BDA585EDB87489B4B7B6DE136D68D7D6D2
            F25F6995EACFD5D6127C493DD1D1D19B03C1BF05F6C26E1E2DF2310800000000
            49454E44AE426082}
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
            1DC2000000097048597300002E2200002E2201AAE2DD92000007C54944415458
            47BD970B5054D719C7EF0299C98C31358AB1D54EA7A99949A2463B4DF3B0754C
            3BA39989B128F1854611C310AB168280840C81A00B484034351A51216922311A
            95A794204FC36379AD200F23CB2220B08B80A0ECDE73EFDDC739FD9F75219090
            683A19EECC6FBEEF7CE7F53FE79E7BCEB92A61CC43ADD6BF0B2E2E5E824A3577
            6CFC17F415B4952F88E2972E53A7DE1AD72EB3DBE318A56C321E9BD5DA62E8EC
            7C6E5400B5DBF78F746CB7D9A86D02787C225098FE4C1C5D197B7A6ED69495CD
            1528A54B7900AAEC168BC5C6B18E61A218CF47C11F05F9F61F03F5EC18880DFD
            B16A8DE62C1770960B906559B228CA0F501445E620EF07207EDF07F59411B80B
            DF314A3E088D46230A98FE4228629224DD85885114F8A3280A8F0F8F80F8F028
            8A328C8679DA34218A6242FE3D64D9CC810833066EAED468189F815C59227651
            3419D18111058C283C1E59EEE5318B6271601D03D2BD1CC4EE61B1F2F42DB4D3
            E740511CA0D33ECBBD583FFC7EF43B58515666E70272CC2693383C3CDC4244B1
            4522641C84101D623A85483A9988ADB24C1C1022EA4791899E8C22B689C4DCA6
            10592F13D2C6411B37C6D00E11EDE8B7ABBAAA4AE2AF207B6868A8EFCED05025
            319B35E86C844AF8F730934AC35D4397D6582B15B61590E2F62272B9BD649492
            8E6252D45EE8886734A549E72ABE1A18300DD48B44D4A27E2DE0D689780533A1
            8580A63AAD7650C0D2CF1CE8EF6F83886C08C882524EB60351BCC8B1484AD6D7
            CDFF6D4F488F67D1A7D42C363B86255624B044CD0196587980C517C4B198D3D1
            2CFAF36816793282A9BF8C958BA5AA86DBE476A12C8A7968E31211CD9730630E
            30039720A0B4B9B1B15BC08A4CEB351AEB0707073F41A7C958079C1407847CC2
            C1A24D69EA6A4AFB4FFDE9BA84E6635D71F5876EC797C5B1D0FC3D2C243F9885
            1C0F62E117A34DFB75478DF1CD1F1B0E769CEC4E93F36A7AA5BEAF64493E254B
            522A070BFD0B0E6620150232F43A5D8B6091A4F3DD5D5D974DC3C3F176AB35C6
            6AB5AA9D44C3465B15053125C66EA731EDD4F051256DFC34EF4E6149725D32DB
            9D17C8DECEF567FE1FEE62E155FB7B53E9C5C252AA3D5D4EEB531B2DD753CC8A
            39110B305E91A404D87B48D201B49B0001273A3B3AAE08783717F02E3E1C1818
            588EE09BD8220261DF06FEF01D60A7F377A603607736181B4E1ED726B19D39FF
            64DBB3FD985FBC2F0B2A8BEC4CA74529C442425067B7CD620BE260F682910E02
            DC06231D82F682D04E4CD7CD9BE5826436A769CACBDFE3FB32F6A34790B100AC
            006F80ADC01B6C76C263EBB53DDA031F551F666F66FA30EFF4CD6C8B7A33DBF1
            4DA83E95E61C9298E2E32CEB8D0E79FD7120E60301BCCD10434F4F9143407565
            E5FBE8DF65E47080105714781C2C82BF0CD613761DEF1C7675654F65F4414D22
            DB74C18BAD3BB786AD8D58C37C8A025A4ED00BB184115ECE13BCFE13AC42DE76
            A3C17069AC00D7898E5D2E063C06FE009E43C5C597DB8BDFFDA03C8EAD3FB796
            799EF160ABC23CD8A6A21DDF7E4CCFEE15A9C81B7F0DACFC1EFF407A8457E1FB
            62F1E7DD57C0F74541844B7861D82B3E995B2DF38E3DCDE61D7D8A2DF459C096
            647BD485D2438177E9DDC568FC05F01278D1E93F0FFB27B010F59F06BFE3F906
            8321FB670BE082B6A46D7966E3F90D777E15FF085345094C580C4ECF2C11E882
            156FB1B71E72CE9A9BD38EBEDAB18341DEEF7B0C86CCFF4B40686EE07CDFCC6D
            77DC131F636E512AA65AA26242E66F0A206039A4A81EE4068519988B19F80505
            A4CFBE24B0457F9B3401F804C7CF00174017BC3C290202F92BC8DA3634EE1564
            4CA2809D9981F33103DF09F82BD6C0640A08CE0C7E6267CEF641F783D399DB5E
            2CC2BF4040F6EC5C813EF1C2832C405EE6BB4548485A6D75F5B89D70A2460CD4
            3033FF56FE92432D092F96F6976E7ABF3C6278DAC1A9ECA1181573DDA8620FA7
            CFA95ADEEFB56B45C6F2A5C21BC26FEF276454004EA8749CCB71151515D3117C
            D4C954E7B93005E929FC7B8E2C08F7DDF6F956B63462095BA97E953DE5F72453
            BD2230177C78AA65027BD47B0A7B29E27936C7FBD74C78DDF5C40CBA6CB6734F
            50A1BE83713F41F80CB11567F2FB40D60DBD3E193F0A7FE67B3F559445B0CF02
            7E28CD07CF8027FD53FD57B907CDC9708B74BF26444D6B1522A75D77DB3B4BE7
            B66F56AB9B7A56ABABFAF156413D5DA77A6F46EBC33973F3E6530FEF7C56CB77
            BC991C0870879D01A6F3C1813F1ABBBBBFE657B2DCFEDEDE6CD3E0203FF1BC70
            5271D6C35F8B5FB535B09ECC6A5D0DFB5A362DF5F6A351EA0DF49D0FBC68D8FE
            8DF49DD875744FEC5A1A12B38606477BD220F56ABA7B9F270DD81B693BECDB67
            197C19F5F8D6CCB765BE3DF32D990F7421F0D0EBF5C5023ADB834B491D2E2371
            084643901AECC3AF5A14F22241040807EFDA98258CD8CC61849A43898D84109B
            291887CF6ED1660A0401F0FF05BB0B76876493B6A38E1FF005DBC056C7316CB3
            6D413F1B40F837252567F86A9C81602EAC06E4F04B2AC8829F019B0E2E80F3E0
            1C6267A89D9E065F8053487F46ADC04E3F859F029B0C4EC04F824D823D068E82
            23E030DAF837EC214E7353D385949494958E7561329916E2EE57AF102221B30F
            F4806ED0E5E4266C27E800FC4A7DC3891E96D30A74A0055C07DF826BA0193481
            46D0C0C1D54F8791DF3872E448F0D83B8860E8E898D770F56AD6959A1AF16A5D
            1DBB525BFB4068514E5B53F393D43AF30BF2F3D9F1A4A46B010101BE239DFF0F
            2E1E2CE79B4019DE0000000049454E44AE426082}
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
            1DC2000000097048597300002E2200002E2201AAE2DD92000007784944415458
            47C5970950D4D71DC7DF02D3761A4953133BD30ED3E9D43A3D62B59334B69964
            6C3349ECA4DA84C3726850136AD2A0A21CA156030139E4309E2462464C132115
            13411715B99420B0C8257860D85D6ED825403976F77FEDF15EBF6FF9C3408255
            DB8ED999CFFCDEFBBDE3F77DC7FFBDB71A32E3471D8E6788874730D16816CEF4
            FF1FD30AFA2A2382F04F0F6FEF2F66F5CB5CAE344629BB1F3FA7C3D16EEAE979
            7C5A0075B9764F0576399DD43907DC3F17A84CEF117728F3C0406F4375F54242
            295DCE1D50E5B2DBED4E8E630673F978392ADE1694BB6E07DAB9301027E2B17A
            9D2E9F0BC8E702645996EC8AF2151445913928FB0AF0DFF18776CA143C89B47B
            947C103A9D4E2098FE0A286292244D40C4340AD2D3280AF75BA680DF328DA258
            D031CF5BE74451AC289F44966D1C88B061E0B63A9D8EF119289625D125085633
            029851C18CCAB391E541B7CF6E7783014C83FC2007BE491C0E6EBF403F436E14
            C50D820ED9277DC3480F23EE686D75B58B0B3867B35A058BC5D22E0A42BB248A
            B31045510F9F5E9124BD2C080645148160906D36A3220846F826114537F07520
            DF21CA32CF7770D047E70CBA20A20B71FBEAAF5C91F812148D8D8D0D8D8F8DD5
            89369B0EC1A6A843DA0DFCF5E3DD3D237DD53AA9B3ECA2D875B152ECBEF419A8
            72D353512976955F12BB2A2E894D7927A46B25A5FDF2F87833DA36AA34C1AA08
            CD98892608B871B5A9699460EB9F19191EEE80882204D24229A7C88D209CE548
            56EBB92B1FE58DE7A7A6B1BC5D29AC34399DD565EE63BA8CBD4C97BE979D4F49
            67B94929EC3838BCE32D56B17FFF98A3B9B9419E98281545A1047D948A828DA7
            DD60064A21E0F2CDEBD7FB097664C1A0D9DC323A3A7A0C418F621F7072DC88E2
            3137B27CCC505D7DBE353BBBED5646467F4B6ABAB52A298D9546C6B262901515
            43758989A3EDE9E9A69B9999A6C18387BA95B2B22A6962E263B43D2E4B522E07
            1B3D8F8319C88580D346BDBE9DD825E9D3FEBEBECFAC164B86CBE14871381C49
            2AC9B0C90E454951E0C7319D4ADBDAB2994EF70FF3696D5BFDDE43AC387C2BD3
            6EDAC6DED9B4850EA4A41AE9E98273B4A626D7A5D3E5CA7AFD114910F6600366
            60FF64C24E22497BD06F2604BCDFD3DDDD4CB036A7B016FB4746469E87F3551C
            11DB60B7822D48BBC149B745CD47C086F75554965FC9D8C78A5EFD2B2B087B83
            ED0EFB0BED8A8B6BA5972FEF45FD480E8EA928D8287C11D1DC026EA3918F417F
            51E827A5AFB7B78648365B81AEA6E62D7E2EE33C9A8782C5E08F602D580FD681
            9755B82FB0F742C9995AAC7BE19A0D2C7FED0696B83694764645D5D3F2F27894
            87AAAC4340DE7E16F06D8000DE678C6960E0A25B407D5DDDDB88EF3175394088
            272A7C0F2C45FA39583FD83FF3E0B0BE3D678B3FA94E48619FF805B15CFF60B6
            D37FB5AB233CBC869E3D1B833AFE77C14BA8F3BAD9642A9D29C073AE6B978B01
            DF053F068FA3E193C693A78E57ED4C60F92BFDD987AB02D8F6552FB93A37BE56
            450B0AF8D2ADBA0D7F827F8A17900EC3E62FB9A3802F8B82088FEACD513B0A7D
            83D8219F456CCFA2C56CDDE2A5AE5BCFAD28A1070EF0257A02FC06FC56B5CB54
            DF63B04BD0FE67E087BCDC643215DDB3002EA862C3C63527FFF0224B26DF60D1
            C48B3D4588A385905C4A085F320F75D6BC543BBDB4330783B21F0D984C67FE2B
            01972363D714FA85B054CDB721E09BEC19A2510C847C00018FDEEDEB0933B010
            33F0BF0B885105B4137214027E7A5F04D4446D0FF9F20C7C0D0282672DC17D15
            50B5F5CD9042DFAF5140EDDFE2FCB481A16CB7BA097F8F4DD849C861EC019F7B
            DF03A258D0585F3FEB249CAB13C960F88925EFE4D323070F2F1BBA501E5FBAFE
            359646BEC5E24028F1B45FFBCE7CEDBF028243B48B9F78722B210FDD49C8F457
            801BAA10F7725A6D6DED7C381F54F156EF8507907F0069AFF391B11F65FB07B1
            84E5CFB2C4152B59C8821FB0E7890678B015B0E10B7C58FCB2A798EFBC87682C
            219BA98FCF7CF54CD0C0BA99F527089F218EE233FC3DA0ED341A8FE28FC2AFF9
            D94F156529EC2F01BF941E053F078BDEFDDDB35B62E63D58BECBC3B33D8110FD
            DB1ACDE7495E5E7A604806499E9E86448D873E11B6C5DB3B8F2E5FFE021D1AFA
            BE7AA72C808047907E187061F3C0AFCCFDFD17F893AC787870B0C83A3ACA6FBC
            60DC549C40A457E30D1000EBC71C0E5FD895F4BDF7DE60A1A1693424249D0607
            EF864DA54141A934303085AE5E9D4C030292A8BFFF2EF8E26976761013C5A7F9
            DDA11ECB5347321FE812F0A2D168BC4410EC4D3C4AAEE231920667320425815D
            F8AB9680B27810077652BB7D0715C5BF339B6D3BB5D962410CB55AA34124D806
            22C066B0C9393E1E4E25E975B4DB88190D837D05AC775FC34E27BFAE83C0CEAA
            CACA13FC55FC309CC5B03A708E3F528116E9D3B085E014F814537612BE13E063
            90078E830F553E80CD0147C1FBE008C80687C1BB200B1C443F0760F7716EDEB8
            712A272767957B5F58ADD62578FBB5E0C92DA170080C807ED0A7D20BDB03BA01
            7F5277AA18613906A007EDE073700BB4819BE006B80EAE71F0F4D363E49D5959
            59D133DF20C4D4DDFD8B6BADADDAE68606A1F5EA55D6DCD8785734A15E5343C3
            7FA4512D2F2F2B6347F0B08D8888089B0AFE6F4B6924F3659333B10000000049
            454E44AE426082}
          ParentFont = False
          TabOrder = 8
          Text = 'Capturar'
          Version = '5.0.1.4'
          OnClick = BtnCapturarClick
        end
      end
      inherited Panel2: TPanel
        Left = 752
        ExplicitLeft = 752
      end
    end
    inherited PnlPro: TPanel
      Width = 882
      ExplicitWidth = 882
      inherited PBPaginacion: TAdvProgressBar
        Width = 784
        ExplicitWidth = 811
      end
      inherited PnlNum: TPanel
        Left = 785
        ExplicitLeft = 785
      end
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 576
    object N1: TMenuItem
      Caption = '-'
    end
    object Enviarcotizacion1: TMenuItem
      Caption = 'Enviar Correo a proveedor'
      OnClick = Enviarcotizacion1Click
    end
    object Exportarplantilla1: TMenuItem
      Caption = 'Exportar plantilla vac'#237'a'
      OnClick = Exportarplantilla1Click
    end
    object Adjuntaryenviarcotizacion1: TMenuItem
      Caption = 'Adjuntar y enviar cotizacion vac'#237'a'
      OnClick = Adjuntaryenviarcotizacion1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Seleccionarpudecotizacion1: TMenuItem
      Caption = 'Seleccionar pu de cotizacion'
      Visible = False
      OnClick = Seleccionarpudecotizacion1Click
    end
    object CargarPudesdePlantilla1: TMenuItem
      Caption = 'Cargar Pu desde Plantilla'
      OnClick = CargarPudesdePlantilla1Click
    end
  end
  inherited dsDatos: TDataSource
    Left = 320
    Top = 16
  end
  inherited OpenXLS: TOpenDialog
    Top = 32
  end
  object frdsCotizacionDetalle: TfrxDBDataset
    UserName = 'frdsCotizacionDetalle'
    CloseDataSource = False
    DataSet = cdCotizacionDetalleRp
    BCDToCurrency = False
    Left = 192
    Top = 208
  end
  object frdsCotizacion: TfrxDBDataset
    UserName = 'frdsCotizacion'
    CloseDataSource = False
    DataSet = cdCotizacionRp
    BCDToCurrency = False
    Left = 96
    Top = 208
  end
  object dsCotizacionRp: TDataSource
    DataSet = cdCotizacionRp
    Left = 96
    Top = 160
  end
  object cdCotizacionRp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 256
  end
  object cdCotizacionDetalleRp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdCotizacion'
    MasterFields = 'IdCotizacion'
    MasterSource = dsCotizacionRp
    PacketRecords = 0
    Params = <>
    Left = 192
    Top = 256
  end
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 41304.565672951390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  LocCuenta: Integer;'
      
        '  AlturaComponentes1, AlturaComponente2: Real;                  ' +
        '                                                                ' +
        '                             '
      'procedure GroupFooter2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  AlturaComponentes1 := Child1.Height+ GroupFooter2.Height+foote' +
        'r1.height+footer2.height+(masterdata2.height*masterdata2.Dataset' +
        '.recordcount);                            '
      '  while Engine.FreeSpace - AlturaComponentes1 > Child1.Height do'
      '  begin'
      '    Child1.Visible := True;'
      '    Engine.ShowBand(Child1);'
      '  end;'
      ''
      
        '  AlturaComponente2 := (GroupFooter2.Height+footer1.height+foote' +
        'r2.height+(masterdata2.height*masterdata2.Dataset.recordcount)) ' +
        '- 1 ;                    '
      
        '  if Engine.FreeSpace - (GroupFooter2.Height+footer1.height) > 0' +
        ' then'
      '  begin'
      '    Child1.Visible := True;'
      ''
      
        '    Memo68.Height := Engine.FreeSpace - (GroupFooter2.Height+foo' +
        'ter1.height+footer2.height+(masterdata2.height*masterdata2.Datas' +
        'et.recordcount)) - 1 ;    '
      
        '    Memo71.Height := Engine.FreeSpace - (GroupFooter2.Height+foo' +
        'ter1.height+footer2.height+(masterdata2.height*masterdata2.Datas' +
        'et.recordcount)) - 1 ;'
      
        '    Memo73.Height := Engine.FreeSpace - (GroupFooter2.Height+foo' +
        'ter1.height+footer2.height+(masterdata2.height*masterdata2.Datas' +
        'et.recordcount)) - 1 ;'
      
        '    Memo74.Height := Engine.FreeSpace - (GroupFooter2.Height+foo' +
        'ter1.height+footer2.height+(masterdata2.height*masterdata2.Datas' +
        'et.recordcount)) - 1 ;'
      
        '    Memo75.Height := Engine.FreeSpace - (GroupFooter2.Height+foo' +
        'ter1.height+footer2.height+(masterdata2.height*masterdata2.Datas' +
        'et.recordcount)) - 1 ;'
      
        '    Memo76.Height := Engine.FreeSpace - (GroupFooter2.Height+foo' +
        'ter1.height+footer2.height+(masterdata2.height*masterdata2.Datas' +
        'et.recordcount)) - 1 ;        '
      
        '    Child1.Height := Engine.FreeSpace - (GroupFooter2.Height+foo' +
        'ter1.height+footer2.height+(masterdata2.height*masterdata2.Datas' +
        'et.recordcount)) - 1 ;   '
      '    Engine.ShowBand(Child1);                  '
      '  end;         '
      
        '{  while Engine.FreeSpace - (Child1.Height + GroupFooter1.Height' +
        '+footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount)) > Child1.Height do'
      '  begin'
      '    Child1.Visible := True;'
      '    Engine.ShowBand(Child1);'
      '  end;            '
      '    '
      
        '  if Engine.FreeSpace - (GroupFooter1.Height+footer1.height+foot' +
        'er2.height+(masterdata2.height*masterdata2.Dataset.recordcount))' +
        ' > 0 then    '
      '  begin'
      '    Child1.Visible := True;'
      
        '    Memo68.Height := Engine.FreeSpace - GroupFooter1.Height - 1-' +
        '(footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount));'
      
        '    Memo69.Height := Engine.FreeSpace - GroupFooter1.Height - 1-' +
        '(footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount));                                           ' +
        '   '
      
        '    Memo70.Height := Engine.FreeSpace - GroupFooter1.Height - 1-' +
        '(footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount));                                           ' +
        '   '
      
        '    Memo71.Height := Engine.FreeSpace - GroupFooter1.Height - 1-' +
        '(footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount));'
      
        '    Memo73.Height := Engine.FreeSpace - GroupFooter1.Height - 1-' +
        '(footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount));'
      
        '    Memo74.Height := Engine.FreeSpace - GroupFooter1.Height - 1-' +
        '(footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount));'
      
        '    Memo75.Height := Engine.FreeSpace - GroupFooter1.Height - 1-' +
        '(footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount));'
      
        '    Memo76.Height := Engine.FreeSpace - GroupFooter1.Height - 1-' +
        '(footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount));        '
      
        '    Child1.Height := Engine.FreeSpace - GroupFooter1.Height - 1-' +
        '(footer1.height+footer2.height+(masterdata2.height*masterdata2.D' +
        'ataset.recordcount));'
      '    Engine.ShowBand(Child1);        '
      '  end; }                 '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Inc(LocCuenta);'
      '  Memo43.Text := IntToStr(LocCuenta);'
      '  if <frdsCotizacionDetalle."tiempoentrega"> > 0 then'
      
        '    TiempoEntrega.memo.text := '#39'[frdsCotizacionDetalle."tiempoen' +
        'trega"]'#39
      '  else                '
      '    TiempoEntrega.memo.text := '#39'Inmediato'#39';      '
      'end;'
      ''
      'procedure PuOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '                                  '
      'end;'
      ''
      'procedure TiempoEntregaOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure ImporteOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure SumaCostoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '                                                   '
      'end;'
      ''
      'procedure SumaIvaOnAfterPrint(Sender: TfrxComponent);'
      'begin                                                       '
      'end;'
      ''
      'procedure SumaTotalOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '                                                             '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '    '
      'end;'
      ''
      'procedure TiempoEntregaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure NumTextoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <Page#> = <TotalPages#> then                               ' +
        ' '
      '   NumTexto.visible := True;                '
      'end;'
      ''
      'procedure ImporteOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <CnIva> = '#39'True'#39' then '
      '  begin'
      
        '    Importe.Text := '#39'$ '#39' + FormatFloat('#39'0.00'#39', <frdsCotizacionDe' +
        'talle."costo"> /(1+ <frdsCotizacionDetalle."tasa">));   '
      
        '    Pu.Text := '#39'$ '#39' + FormatFloat('#39'0.00'#39', <frdsCotizacionDetalle' +
        '."precio">/(1+ <frdsCotizacionDetalle."tasa">));                ' +
        '          '
      '  end'
      '  else '
      '  begin'
      
        '    Importe.Text := '#39'$ '#39' + FormatFloat('#39'0.00'#39', <frdsCotizacionDe' +
        'talle."costo">);   '
      
        '    Pu.Text := '#39'$ '#39' + FormatFloat('#39'0.00'#39', <frdsCotizacionDetalle' +
        '."precio">);'
      '  end;  '
      'end;'
      ''
      'begin'
      '  LocCuenta := 0;  '
      'end.')
    Left = 344
    Top = 264
    Datasets = <
      item
        DataSet = FrxIvas
        DataSetName = 'dsIvas'
      end
      item
        DataSet = frdsCotizacion
        DataSetName = 'frdsCotizacion'
      end
      item
        DataSet = frdsCotizacionDetalle
        DataSetName = 'frdsCotizacionDetalle'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end>
    Variables = <
      item
        Name = ' Titulo'
        Value = Null
      end
      item
        Name = 'Contrato'
        Value = Null
      end
      item
        Name = 'organizacion'
        Value = Null
      end
      item
        Name = 'tituloorganizacion'
        Value = Null
      end
      item
        Name = 'nivel'
        Value = Null
      end
      item
        Name = 'autorizonombre'
        Value = Null
      end
      item
        Name = 'autorizopuesto'
        Value = Null
      end
      item
        Name = 'solicitonombre'
        Value = Null
      end
      item
        Name = 'solicitopuesto'
        Value = Null
      end
      item
        Name = 'rfc'
        Value = Null
      end
      item
        Name = 'domicilioorg'
        Value = Null
      end
      item
        Name = 'domiciliofiscalorg'
        Value = Null
      end
      item
        Name = 'telefono1'
        Value = Null
      end
      item
        Name = 'numerotexto'
        Value = Null
      end
      item
        Name = 'cantidadt'
        Value = Null
      end
      item
        Name = 'cantidadn'
        Value = Null
      end
      item
        Name = 'cantidadti'
        Value = Null
      end
      item
        Name = 'cniva'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object NAda: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      HGuides.Strings = (
        '158.74026')
      object PageFooter1: TfrxPageFooter
        Height = 196.535560000000000000
        Top = 714.331170000000000000
        Width = 740.409927000000000000
        object Memo33: TfrxMemoView
          Width = 740.787880000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Top = 177.637910000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Forma No 9 / No. de [(<nivel>)] : [Contrato]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 548.031850000000000000
          Top = 177.637909999999000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm aaaa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha de impresi'#243'n:  [Now]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 192.756030000000000000
          Top = 177.637909999999000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            'Hoja [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 215.433210000000000000
          Top = 7.559059999999931000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 215.433210000000000000
          Top = 75.590600000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CARGO:[frdsCotizacion."cargocrea"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 215.433210000000000000
          Top = 41.574829999999900000
          Width = 370.393940000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '_______________________________________________'
            '[frdsCotizacion."nombrecrea"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 400.630180000000000000
        Width = 740.409927000000000000
        Condition = 'frdsCotizacion."IdCotizacion"'
        PrintChildIfInvisible = True
      end
      object GroupFooter2: TfrxGroupFooter
        Top = 461.102660000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'GroupFooter2OnAfterPrint'
      end
      object Child1: TfrxChild
        Height = 15.118110236220500000
        Top = 483.779840000000000000
        Width = 740.409927000000000000
        KeepChild = True
        object Memo68: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 41.574830000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 427.086890000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 487.559370000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 532.913730000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 597.165740000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 668.976810000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 423.307360000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frdsCotizacionDetalle
        DataSetName = 'frdsCotizacionDetalle'
        RowCount = 0
        Stretched = True
        object Memo43: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 41.574830000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          Memo.UTF8W = (
            '[frdsCotizacionDetalle."descripcionarticulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 427.086890000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsCotizacionDetalle."cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 487.559370000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'codigounidad'
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsCotizacionDetalle."codigounidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object TiempoEntrega: TfrxMemoView
          Left = 532.913730000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          OnAfterPrint = 'TiempoEntregaOnAfterPrint'
          OnBeforePrint = 'TiempoEntregaOnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Pu: TfrxMemoView
          Left = 597.165740000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          OnAfterPrint = 'PuOnAfterPrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Importe: TfrxMemoView
          Left = 668.976810000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          OnAfterPrint = 'ImporteOnAfterPrint'
          OnBeforePrint = 'ImporteOnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            ' #n%2.2m')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 46.110236220000000000
        Top = 521.575140000000100000
        Width = 740.409927000000000000
        KeepChild = True
        object Memo60: TfrxMemoView
          Left = 532.913730000000000000
          Top = 30.236239999999960000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'SUMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 604.724800000000000000
          Top = 30.236239999999960000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          OnAfterPrint = 'SumaIvaOnAfterPrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[cantidadn]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 532.913730000000000000
          Top = 3.779530000000022000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 79.370130000000000000
          Top = 3.779530000000022000
          Width = 453.543600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            ' [frdsCotizacion."comentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Comentarios:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 15.118120000000000000
        Top = 589.606680000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = FrxIvas
        DataSetName = 'dsIvas'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo56: TfrxMemoView
          Left = 532.913730000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[dsIvas."codigoiva"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 604.724800000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          OnAfterPrint = 'SumaTotalOnAfterPrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[dsIvas."suma"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Width = 532.913730000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Height = 24.566929133858300000
        ParentFont = False
        Top = 627.401980000000000000
        Width = 740.409927000000000000
        KeepChild = True
        object Memo32: TfrxMemoView
          Left = 532.913730000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 604.724800000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
          OnAfterPrint = 'SumaTotalOnAfterPrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[cantidadt]')
          ParentFont = False
          VAlign = vaCenter
        end
        object NumTexto: TfrxMemoView
          Left = 79.370130000000000000
          Width = 453.543600000000000000
          Height = 22.677180000000000000
          OnBeforePrint = 'NumTextoOnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[numerotexto]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'SON:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 321.260050000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo20: TfrxMemoView
          Left = 370.393940000000000000
          Top = 116.385900000000000000
          Width = 370.393940000000000000
          Height = 166.299320000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 374.173470000000000000
          Top = 226.212740000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONOS:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 521.575140000000000000
          Top = 226.212740000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsCotizacion."telefonopropio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = -7.559060000000000000
          Top = 234.212740000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'COT. DE REF:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = -7.559060000000000000
          Top = 255.669450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 94.488250000000000000
          Top = 33.456710000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsCotizacion."tituloconvenio"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 94.488250000000000000
          Width = 638.740570000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsCotizacion."tituloempresa"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 94.488250000000000000
          Top = 53.692949999999990000
          Width = 638.740570000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NO. DE [(<nivel>)] : [frdsCotizacion."codigoconvenio"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 7.000000000000000000
          Width = 68.031540000000000000
          Height = 79.370130000000000000
          ShowHint = False
          DataField = 'imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo19: TfrxMemoView
          Top = 116.606370000000000000
          Width = 370.393940000000000000
          Height = 166.299320000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = -3.779530000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PROVEEDOR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = -3.779530000000000000
          Top = 151.181200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOMBRE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = -3.779530000000000000
          Top = 180.858380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DOMICILIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = -7.559060000000000000
          Top = 213.315090000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 370.393940000000000000
          Top = 120.944960000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FACTURADO A EMPRESA:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 370.393940000000000000
          Top = 143.842610000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DOM. FISCAL:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 370.393940000000000000
          Top = 165.740260000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R.F.C.:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 377.953000000000000000
          Top = 184.637910000000000000
          Width = 143.622140000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'LA ENTREGA DE MATERIALES ES EN DOMICILIO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = -3.779530000000000000
          Top = 97.708720000000000000
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 517.795610000000000000
          Top = 75.031540000000010000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'COTIZACION No. [frdsCotizacion."serie"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 93.929190000000000000
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '"COTIZACION DE MATERIAL"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 94.488250000000000000
          Top = 173.858380000000000000
          Width = 275.905690000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ' [frdsCotizacion."domiciliocontacto"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 514.016080000000000000
          Top = 124.724490000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsCotizacion."tituloempresa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 514.795610000000000000
          Top = 140.283550000000000000
          Width = 222.992270000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsCotizacion."domiciliofiscal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 514.016080000000000000
          Top = 165.740260000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsCotizacion."rfcpropio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 521.575140000000000000
          Top = 184.858380000000000000
          Width = 215.433210000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsCotizacion."domiciliofiscal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 94.488250000000000000
          Top = 116.385900000000000000
          Width = 275.905690000000000000
          Height = 31.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ' [frdsCotizacion."razonsocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 94.488250000000000000
          Top = 148.401670000000000000
          Width = 275.905690000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ' [frdsCotizacion."contacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 94.488250000000000000
          Top = 212.535560000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ' [frdsCotizacion."contactotelefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 370.393940000000000000
          Top = 180.858380000000000000
          Width = 370.393940000000000000
          ShowHint = False
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
        object Memo41: TfrxMemoView
          Top = 291.023810000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONS.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 41.574830000000000000
          Top = 291.023810000000000000
          Width = 385.512060000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONCEPTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 427.086890000000000000
          Top = 291.023810000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 487.559370000000000000
          Top = 291.023810000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 532.913730000000000000
          Top = 291.023810000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TIEMPO DE'
            'ENTREGA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 597.165740000000000000
          Top = 291.023810000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 668.976810000000000000
          Top = 291.023810000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 93.488250000000000000
          Top = 230.551330000000000000
          Width = 275.905690000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ' [frdsCotizacion."referencia"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 94.488250000000000000
          Top = 259.567100000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsCotizacion."fecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 488
    Top = 256
  end
  object CdIvas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 288
    object CdIvascodigoiva: TStringField
      FieldName = 'codigoiva'
      Size = 45
    end
    object CdIvastasa: TFloatField
      FieldName = 'tasa'
    end
    object CdIvassuma: TFloatField
      FieldName = 'suma'
    end
  end
  object FrxIvas: TfrxDBDataset
    UserName = 'dsIvas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigoiva=codigoiva'
      'tasa=tasa'
      'suma=suma')
    DataSet = CdIvas
    BCDToCurrency = False
    Left = 632
    Top = 288
  end
end
