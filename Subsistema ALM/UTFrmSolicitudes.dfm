inherited FrmSolicitudes: TFrmSolicitudes
  Caption = 'Solicitud de material'
  ClientWidth = 962
  ExplicitLeft = 8
  ExplicitTop = -86
  ExplicitWidth = 970
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 962
    ExplicitWidth = 962
    inherited LbFiltros: TJvLabel
      Width = 954
      ExplicitWidth = 864
    end
    inherited GroupBoxFiltro: TGroupBox
      Left = 4
      Top = 2
      Width = 947
      Height = 48
      ExplicitLeft = 4
      ExplicitTop = 2
      ExplicitWidth = 947
      ExplicitHeight = 48
      DesignSize = (
        947
        48)
      inherited BtnSearch: TAdvShapeButton
        Left = 896
        TabOrder = 7
        OnClick = BtnSearchClick
        ExplicitLeft = 896
      end
      inherited chkUsuario: TAdvOfficeCheckBox
        Left = 820
        Top = 10
        Width = 86
        Checked = False
        TabOrder = 6
        OnClick = chkUsuarioClick
        ReturnIsTab = True
        State = cbUnchecked
        ExplicitLeft = 820
        ExplicitTop = 10
        ExplicitWidth = 86
      end
      object edtFiltroFolio: TAdvEdit [2]
        Left = 140
        Top = 17
        Width = 98
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
        TabOrder = 1
        Visible = True
        OnKeyPress = edtFiltroFolioKeyPress
        Version = '2.9.0.0'
      end
      object grpFiltroFecha: TGroupBox [3]
        Left = 458
        Top = 7
        Width = 269
        Height = 40
        Caption = 'Fecha'
        TabOrder = 4
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
          Text = '03/15/2012'
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
          Text = '03/15/2012'
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
      object cmbFiltroEstado: TAdvComboBox [4]
        Left = 728
        Top = 17
        Width = 86
        Height = 21
        Color = clWindow
        Version = '1.3.2.2'
        Visible = True
        ButtonWidth = 18
        DropWidth = 0
        Enabled = True
        ItemIndex = 0
        Items.Strings = (
          'Pendiente'
          'Validado'
          'Verificado'
          'Para surtimiento'
          'Requisitado'
          'Cancelado')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 8
        Text = 'Pendiente'
        OnChange = cmbFiltroEstadoChange
        OnKeyPress = edtFiltroFolioKeyPress
      end
      object EditFReferencia: TAdvEdit [5]
        Left = 244
        Top = 17
        Width = 89
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
        TabOrder = 2
        Visible = True
        OnKeyPress = edtFiltroFolioKeyPress
        Version = '2.9.0.0'
      end
      inherited cmbConvenio: TDBLookupComboBox
        TabOrder = 0
      end
      inherited AdvShapeButton1: TAdvShapeButton
        Left = 116
        Top = 12
        TabOrder = 5
        ExplicitLeft = 116
        ExplicitTop = 12
      end
      object EditFDepartamento: TAdvEdit
        Left = 339
        Top = 17
        Width = 98
        Height = 21
        Hint = 'Codigo del departamento'
        EmptyText = 'Departamento'
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
        TabOrder = 3
        Visible = True
        OnKeyPress = edtFiltroFolioKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 962
    ExplicitWidth = 962
    inherited DBGridPrincipal: TNextDBGrid
      Width = 960
      ExplicitWidth = 960
      object NxDBTextColumn4: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Departamento'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'codigodepartamento'
      end
      object NxDBNumberColumn1: TNxDBTextColumn
        DefaultValue = '0'
        DefaultWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Folio'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 200
        FieldName = 'serie'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Referencia'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 200
        FieldName = 'referencia'
      end
      object NxDBDateColumn1: TNxDBDateColumn
        Alignment = taCenter
        DefaultValue = '01/03/2012'
        DefaultWidth = 90
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Fecha'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stDate
        Width = 90
        FieldName = 'fecha'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxDBDateColumn2: TNxDBDateColumn
        Alignment = taCenter
        DefaultValue = '12/03/2012'
        DefaultWidth = 90
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Requerido'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stDate
        Width = 90
        FieldName = 'fecharequerida'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
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
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 179
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
        Width = 179
        FieldName = 'usuario'
      end
    end
    inherited PanelBarra: TPanel
      Width = 960
      ExplicitWidth = 960
      inherited Panel1: TPanel
        Width = 827
        ExplicitWidth = 827
        inherited PanelAdd: TPanel
          inherited BtnAdd: TcxButton
            Left = 6
            ExplicitLeft = 6
          end
        end
        inherited PanelImport: TPanel
          Width = 55
          ExplicitWidth = 55
          inherited btnImportar: TcxButton
            Left = 0
            ExplicitLeft = 0
          end
        end
        inherited PanelSelect: TPanel
          Left = 395
          ExplicitLeft = 395
        end
        inherited Panel3: TPanel
          Left = 455
          Visible = True
          ExplicitLeft = 455
          inherited AdvShapeButton2: TAdvShapeButton
            Left = 3
            Visible = True
            ExplicitLeft = 3
          end
        end
      end
      inherited Panel2: TPanel
        Left = 830
        ExplicitLeft = 830
      end
    end
    inherited PnlPro: TPanel
      Width = 960
      ExplicitWidth = 960
      inherited PBPaginacion: TAdvProgressBar
        Width = 862
        ExplicitWidth = 802
      end
      inherited PnlNum: TPanel
        Left = 863
        ExplicitLeft = 863
      end
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 576
    Top = 48
    object GenerarPendientes1: TMenuItem
      Caption = 'Generar Pendientes'
      OnClick = GenerarPendientes1Click
    end
  end
  inherited cdDatos: TClientDataSet
    Left = 270
    Top = 48
  end
  inherited dsDatos: TDataSource
    Left = 248
    Top = 48
  end
  inherited mdEstructura: TJvMemoryData
    Left = 752
    Top = 56
  end
  inherited qGrabar: TClientDataSet
    Left = 496
    Top = 48
  end
  inherited mdDeposito: TClientDataSet
    Left = 472
    Top = 48
  end
  inherited OpenXLS: TOpenDialog
    Left = 776
    Top = 56
  end
  inherited SaveXLS: TSaveDialog
    Left = 824
    Top = 56
  end
  object frxReporteSolicitudDetalle: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 41213.475462951390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Footer1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '    '
      'end;'
      ''
      'procedure Child1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ' { while engine.freespace > footer1.height+20  do'
      '  begin'
      '  engine.showband(child1);'
      '  end; }            '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '                     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReporteSolicitudDetalleGetValue
    Left = 680
    Top = 48
    Datasets = <
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end
      item
        DataSet = FrxSolicitudDetalle
        DataSetName = 'ReporteSolicitudDetalle'
      end>
    Variables = <
      item
        Name = ' Contenido'
        Value = Null
      end
      item
        Name = 'usuario'
        Value = Null
      end
      item
        Name = 'usuariocargo'
        Value = Null
      end
      item
        Name = ' control'
        Value = Null
      end
      item
        Name = 'TipoRep'
        Value = Null
      end
      item
        Name = ' Encabezado'
        Value = Null
      end
      item
        Name = 'titulo'
        Value = Null
      end
      item
        Name = 'codigoconvenio'
        Value = Null
      end
      item
        Name = 'tituloconvenio'
        Value = Null
      end
      item
        Name = 'sucursal'
        Value = Null
      end
      item
        Name = ' pie'
        Value = Null
      end
      item
        Name = 'pie'
        Value = Null
      end
      item
        Name = 'solicitonombre'
        Value = Null
      end
      item
        Name = 'validonombre'
        Value = Null
      end
      item
        Name = 'verificonombre'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        Height = 139.842610000000000000
        Top = 578.268090000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'Footer1OnAfterPrint'
        object Memo12: TfrxMemoView
          Left = 839.055660000000000000
          Top = 117.165430000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 22.677180000000000000
          Top = 117.165430000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha de impresi'#243'n: [Now]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000022000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITA:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 359.055350000000000000
          Top = 3.779530000000022000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vo. Bo.:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000022000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'AUTORIZA:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 22.677180000000000000
          Top = 18.897650000000000000
          Width = 336.378170000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 359.055350000000000000
          Top = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 343.937230000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 22.677180000000000000
          Top = 68.031540000000060000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."nombreusuario"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 359.055350000000000000
          Top = 68.031540000000060000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."nombrevalida"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 623.622450000000000000
          Top = 68.031540000000060000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."nombreverifica"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Top = 94.488250000000000000
          Width = 944.882500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."pie"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 408.189240000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = FrxSolicitudDetalle
        DataSetName = 'ReporteSolicitudDetalle'
        RowCount = 0
        Stretched = True
        object Memo20: TfrxMemoView
          Left = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 630.622450000000000000
          Width = 337.511859840000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."observaciones"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 377.953000000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."descripcionarticulo"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 41.574830000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<TipoRep> = '#39'SURTIR'#39',<ReporteSolicitudDetalle."cantidadsurt' +
              'ida">,<ReporteSolicitudDetalle."cantidad">)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 90.708720000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."codigounidad"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 249.448980000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."tituloarticulo"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 151.181200000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."codigoarticulo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 385.512060000000000000
        Width = 980.410081999999900000
        Condition = 'ReporteSolicitudDetalle."idsolicitud"'
      end
      object Header1: TfrxHeader
        Height = 50.889783310000000000
        Top = 309.921460000000000000
        Width = 980.410081999999900000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 28.133890000000010000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PART')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 377.953000000000000000
          Top = 28.133890000000010000
          Width = 589.606680000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 41.574830000000000000
          Top = 28.133890000000010000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 90.708720000000000000
          Top = 28.133890000000010000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'U M')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.559059999999988000
          Width = 956.221090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'PEDIDO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 249.448980000000000000
          Top = 28.456709999999990000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TITULO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 151.181200000000000000
          Top = 28.456709999999990000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 229.228510000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 94.488250000000000000
          Top = 11.897650000000000000
          Width = 873.071430000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."tituloempresa"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 94.488250000000000000
          Top = 62.929190000000000000
          Width = 873.071430000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<TipoRep> = '#39'SURTIR'#39','#39'SOLICITUD DE MATERIAL PARA SURTIMIENT' +
              'O DIRECTO EN ALMACEN'#39','#39'REQUISICI'#211'N DE MATERIALES'#39')]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 7.559059999999999000
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
        object Memo1: TfrxMemoView
          Left = 646.299630000000000000
          Top = 109.606370000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."serie"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 646.299630000000000000
          Top = 124.724490000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."fecha"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 464.882190000000000000
          Top = 124.724490000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha de solicitud:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 646.299630000000000000
          Top = 139.842610000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."codigodepartamento"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 464.882190000000000000
          Top = 139.842610000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Depto. y/o Proyecto:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 646.299630000000000000
          Top = 154.960730000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."tituloconvenio"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 464.882190000000000000
          Top = 154.960730000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. de Proyecto:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 646.299630000000000000
          Top = 170.078850000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."codigoconvenio"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 464.882190000000000000
          Top = 170.078850000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. de ID de proyecto:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 646.299630000000000000
          Top = 185.196970000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteSolicitudDetalle."centrotrabajo"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 464.882190000000000000
          Top = 185.196970000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Centro de trabajo:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 464.882190000000000000
          Top = 109.606370000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. interno de control:')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 7.559060000000000000
        Top = 510.236550000000000000
        Width = 980.410081999999900000
        OnAfterPrint = 'Child1OnAfterPrint'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 41.574830000000000000
        Top = 445.984540000000000000
        Width = 980.410081999999900000
        Child = frxReporteSolicitudDetalle.Child1
        object Memo33: TfrxMemoView
          Left = 11.338590000000000000
          Width = 956.221090000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'OBSERVACIONES:'
            '[ReporteSolicitudDetalle."comentarios"]')
          ParentFont = False
        end
      end
    end
  end
  object FrxSolicitudDetalle: TfrxDBDataset
    UserName = 'ReporteSolicitudDetalle'
    CloseDataSource = False
    DataSource = DsDatosDetalle
    BCDToCurrency = False
    Left = 712
    Top = 56
  end
  object cdDatosDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 310
    Top = 160
  end
  object DsDatosDetalle: TDataSource
    DataSet = cdDatosDetalle
    Left = 400
    Top = 160
  end
end
