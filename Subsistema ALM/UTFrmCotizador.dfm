inherited FrmCotizador: TFrmCotizador
  Caption = 'Cotizaciones de material y equipo'
  ClientWidth = 958
  ExplicitWidth = 974
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 958
    ExplicitWidth = 954
    inherited LbFiltros: TJvLabel
      Width = 950
      ExplicitWidth = 946
    end
    inherited GroupBoxFiltro: TGroupBox
      Left = 4
      Top = 2
      Width = 950
      ExplicitLeft = 4
      ExplicitTop = 2
      ExplicitWidth = 950
      inherited BtnSearch: TAdvShapeButton
        Left = 867
        TabOrder = 5
        OnClick = BtnSearchClick
        ExplicitLeft = 867
      end
      inherited chkUsuario: TAdvOfficeCheckBox
        Left = 786
        TabOrder = 4
        ExplicitLeft = 786
      end
      inherited cmbConvenio: TDBLookupComboBox
        Width = 146
        TabOrder = 6
        ExplicitWidth = 146
      end
      inherited AdvShapeButton1: TAdvShapeButton
        TabOrder = 7
      end
      object edtFiltroFolio: TAdvEdit
        Left = 166
        Top = 17
        Width = 104
        Height = 21
        EmptyText = 'Cotizaci'#243'n'
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
        Version = '2.9.0.0'
      end
      object grpFiltroFecha: TGroupBox
        Left = 400
        Top = 5
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
        Left = 684
        Top = 17
        Width = 95
        Height = 21
        Color = clWindow
        Version = '1.3.2.2'
        Visible = True
        ButtonWidth = 18
        Style = csDropDownList
        DropWidth = 0
        Enabled = True
        ItemIndex = 0
        Items.Strings = (
          'Cotizado'
          'Cancelado')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 3
        Text = 'Cotizado'
      end
      object edtFiltroSolicitud: TAdvEdit
        Left = 276
        Top = 17
        Width = 111
        Height = 21
        EmptyText = 'Solicitud'
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
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 958
    ExplicitWidth = 954
    inherited DBGridPrincipal: TNextDBGrid
      Width = 956
      Options = [goHeader, goMultiSelect, goSelectFullRow]
      ExplicitWidth = 952
      object NxDBNumberColumn2: TNxDBNumberColumn
        DefaultValue = '0'
        DefaultWidth = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'idcotizacion'
        ParentFont = False
        Position = 0
        SortType = stNumeric
        Visible = False
        Width = 8
        FieldName = 'idcotizacion'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBNumberColumn3: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'idsolicitud'
        ParentFont = False
        Position = 1
        SortType = stNumeric
        Visible = False
        FieldName = 'idsolicitud'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBNumberColumn4: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'idproveedor'
        ParentFont = False
        Position = 2
        SortType = stNumeric
        Visible = False
        FieldName = 'idproveedor'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBNumberColumn1: TNxDBTextColumn
        DefaultValue = '0'
        DefaultWidth = 170
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Folio'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 170
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
        Position = 4
        SortType = stDate
        FieldName = 'fecha'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
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
        Position = 5
        SortType = stDate
        FieldName = 'fecharequerida'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 150
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Solicitud'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
        Width = 150
        FieldName = 'seriesol'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 300
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Proveedor'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 7
        SortType = stAlphabetic
        Width = 300
        FieldName = 'razonsocial'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 90
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Estado'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 8
        SortType = stAlphabetic
        Width = 90
        FieldName = 'estado'
      end
      object NxDBNumberColumn5: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Calificacion'
        ParentFont = False
        Position = 9
        SortType = stNumeric
        Visible = False
        FieldName = 'calificacion'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBTextColumn3: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'idorganizacion'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 10
        SortType = stAlphabetic
        Visible = False
        FieldName = 'idorganizacion'
      end
    end
    inherited PanelBarra: TPanel
      Width = 956
      ExplicitWidth = 952
      inherited Panel1: TPanel
        Width = 823
        ExplicitWidth = 819
        inherited PanelAdd: TPanel
          Visible = False
          inherited BtnAdd: TAdvShapeButton
            Visible = False
          end
        end
        inherited PanelEdit: TPanel
          Visible = False
          inherited BtnEdit: TAdvShapeButton
            Visible = False
          end
        end
        inherited PanelDelete: TPanel
          Visible = False
          inherited BtnDelete: TAdvShapeButton
            Visible = False
          end
        end
        object btnCompare: TAdvShapeButton
          Left = 456
          Top = 3
          Width = 51
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
            1DC2000000097048597300002E2200002E2201AAE2DD92000007C54944415458
            47BD970B5094D715C717EC38698D7DC4BEC6B6B653DB692BAB368DE9A4ADA3A3
            3599D84A9256A75A5303114505761705AA316A549687D869AD03BE2268448505
            01E521AF24AB09BAC0C222B25A77792C08BB20308BECE3FBF6631FB7FFF36597
            59120C9AE974677E73CE77EEB9E79C7BBFBBF7DE2F4412F4F3B9DDCB24A1A1EB
            2421217383EDFF435D40AC5A89D399173A73E683097199D79BCE7C3EF6FFF879
            DC6E83A5A7E7B9F1027C5E6F5A20B1D7E3F1792681EC930167DF1322A6EA379B
            EF6BEBEAE64A7C3EDF1232A02AEFD8D89887700731998DDAE1F848D0EE7D14E8
            E7C5403CC8C71A351A1515A0A2025C2E173F26089F4110041781B6CF00FB943F
            F41302900A5D1C250D42A3D1382598FE0F5011E3797E14458C23401F4710C86E
            0B00BB6D1C41B021303DDB274510EC68FF0497CB41A0080706EEA8D76818CD40
            A58BE7BC4EA7BD1F09FAE1D00FE789B85C03B00FC03E190F601F07C11FC07770
            1C411844FB20EC83639FD887A00F21AFF5665D9D970AA870D8ED4E9BCD66E09C
            4E03CF7113E038CE089B88C0F34617C7B50B7E5C9CB303ED9FA613B64ECEC975
            22593BFCE9B92B0813EC26E4ED6D6C68E0E915948D8C8C0C3E1C19A9E71C0E0D
            1205A8872E82CE0D04F4008DD0FD38B4BC03709C16C9B41844134FA0DD363A7A
            DB6EB7EBD0B719CF7E9C3ACC44330AD0B734375B2558FA578687863A5144190A
            2885335126E274968B709C0882403A2B7800799580ED2A7C2A311B959055F48C
            B58C184E5D93B689BB77EF5E93C3667B1F6D35B08960066A50C0C777DADAFA24
            5891C503FDFDB7AC566B0E929CC63A20B245382E47C4E50A70067A80B3D045B0
            80DF8324C436C4510F0C0CB8CEE5E6B2DAEAEABB16B3B9CCC5F3E7E17781C00C
            9C4701973B8C4683648CE72FF5F5F65EB7DB6C195EB73BC5ED7627FB51428A60
            A3D9E7F57AC99E1A441AF4342CB07470083AF54DC55A6A329BCDF88BD5B38C8C
            0C5F495191B1C764CA85CF61119EFF07FC0EA380533DDDDD3A09A6AC08EFE2C8
            F0F0F08B306EC416110FA90032E832D21F5AADFFF4DB626193A32039664E019D
            88F7FBC94647473FEAE9E9611FAAAFB1E2E212A6542A992A2FEFB6A9B3F3087C
            12086C0189E8BF03F1527AEFDFBF21C1022AD6DCB8B187F665EC474FA3410AFE
            005E076F804D46637B5F6565D5F5A1A1A1683CFF1501FE0619602DF4F5587035
            A6EE6E56555D8DE49759616111DBB3672F3B939DAD33180CFBE11341A08848F4
            A7B88978351F8A0534D6D7BF83FCA181C301854C83C3B7C1024CD7CAB636BDA9
            A4E40A3B9B73B6CE3A3C4C81C2C19FC12A045CF7F0A1EDAAC9D4CDCA2B2A98AA
            A090E5E5AB98322595C96432EFF1ACAC169D4EB7DBEF4F7D8857C1967E8BA526
            B88069931DBBD5D5D5336A6A3F68CD3D7F911D39729465651DD3EAB4DA280458
            42C9ADD611BDC1D8CE4A4BCBC5C417F3546CEFBE77585C6C2C9F75F4A8A1303F
            BF1CAF78BBBF682A9C5809A2B0F8ABA72C40AFD74FAFA8ACD265661E67070E2A
            D9BE7D073032456B6D55D51B66B3E556438396BD7B3A47E4E4A977596C9C8CAD
            5FBF9E3B7CE8D0ADBC73E7B2AFABD591168B650912FE8A6614B3FB733007FA0B
            B0974D59805AAD7EEA5251C9DDAC6327D8C1E414B18864652A53A90A5CE51595
            2C25355DB4BFB57B0F5BB6FCF76C8174BE7D7364E4C7BB1213D37725243C8764
            5F9A6C6661FF91D962B9326501050505D3129376AAE2B7EF60FB0F248BC99529
            692C3DE3B0580CE932B9822D5AF43C9B2F958E6C8A8C54EF90C992E3B66C5918
            BCAE3E5D0466602E6660EA02A8E3B3CFFE7676787878614C4C9C385A2A22909C
            6C52A9942D59BCD884A4654972F96EF9D6ADD2CF4B4E319FA800EA909494347B
            DDDAB53994F0008A484B3FC4A2B76C63F3E685F9962F5DDA952897E727C8E56F
            CAE5F239700F99EA1EF9C40550C05DDBB67D63CDEA35C7A23645B34D9BA35958
            58187B69C50A43824C76215E267B3D76C3865953250EB47FA102A8F3CE9D3BBF
            161EFE6A9A346CBE73C5B2659D090AC5851D71716B1511115F7FDCE45FE81504
            078F8989797A75F86B11F13171E90A4AAE503C51F28905705C715363E3849DF0
            7146827FC7747974F49C8D1B37CE7C1CFF47FE0B704295E05C4EBF79F3E63378
            2F5FF533D37F2ECCC0F30CE85F81FC32E4537EA6D3FF1B84D2B6EDD74912011B
            492224407011B406B0155FA1FB40695747C7697C282C8271A14F101642CE0774
            2885815FD0EE05F933F053F013EA0CDB8F693381FE43FFCEF603E8DF07DF03B3
            61FB2EE477009D29DFC2F337216781676870E097FD7D7D557425AB1C1A1828B3
            5BAD74BAADC34945FC05FA1A7CAAAD86FC1373BB5F83FE0AF455907F845C09F9
            32E44BE045B4AF805C4E9F76904B7D6363F4ADB118FAEFC06FC00BE0D7E07940
            035D005EE9E8E8504B902C099792165C46D26154A2A06470109F6AFBE92202F6
            82B7C15BCCE3D905F97740677A02D80EE2E97E00E2402CD806B6C2371A723366
            340AF24D10211EC31ECF06E4A123FCED8FAE5DCBA71D69168C95901A50419754
            500AFD326409280297402150813C70115C00B9E01C780F9C01D9E03438054E22
            C671900532C151D8FE0DF92FE28E5E5F949D9DBD4A5C17B8B92EC0DDEF16AEDB
            3C1A078119F4815E3FF7217B4037A02B75979F0E48A21D188101DC03FF0177C1
            1DA0076DE03681AB9F1123EFCACCCC4C98B05D5BBABBE7DD6E6D2DC559EF6C6D
            6961BAA6A6C7A2197ECD5AEDE7D2E46F7FBFB6969D3C71E22EB6EBA840F2FF02
            C4E3AE079A1EAF810000000049454E44AE426082}
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
            1DC2000000097048597300002E2200002E2201AAE2DD92000007D64944415458
            47BD97095454D719C7EFCC38B824E6A46A346D534FD1D45463C8E21293B4494D
            35D144341A972C4413396A8C09D0E2D254230A0488DA682C36928A0634310611
            010115638CA203CC00228B82C3B0CFE0C019CA2C6F99E5DDFEEF73868E1133DA
            D3D339E777BEEF7D77F9FEF7BE3BF7DEA7207E3FC9E59A4A94CAD7884231DA3F
            FE3FF445F455481C8E83CAC183AFDDD02FF57892A824D1FFC7CFED72D5199B9B
            27F40A903C9E445F628FDB2DB9FB80C5FB0295A53B444E656A6F6FD116158D26
            92243DCB0250E5713A9D6E86CB8FBE62AC1C156F09CA3DB702ED3C18881BF968
            A94673880938C4040882C03B45F1264451141828BB09C403FED04EF4C15CF8F2
            28D920341A8D8360FABF8322CAF37C0F44F422C2EF451459DCEA03716B2FA268
            45C7ECD9D627A26843F97504C1CE80083B066E2FD668289B810281E73C0E87CD
            8404265430A1F28D084207E21D88F7C535C47B41E7D750D7DC8B289A516E46DC
            ECBC1EEF84DF89BC960B45451E2620CF6EB339AC566B1DE770D4F11C77031CC7
            D5232623F27CBDC07157452F02E7D0A3FCC734202683BA32F00D7E34424423F2
            B6969694F0EC15E47677779BFFD5DD5DCCD9ED1A24F2510C5F068D4B18F07D94
            C2F762D7F276C0715A24D362103A9E03764EEB165CC510CDCACAFE83A31C3351
            0601D51565651682A59FDDD5D9D90011B9109083448C5C1987E3980CC7C9A013
            58471E12E4C1E63310CB479D02CC4601EC71068B09025758DA58A26FED683A8B
            577B8273D84FA2BE0C66E024049CABA9AA6A235891473A4CA68B168B652F92EC
            416546AA0CC7ED9511041FFBE0FBF812BE0C16701A6C1A6CBA2038539D8233BD
            A5A7A5F1EFF93B69D6D5BC9236B72953E0F90328FF8A811938000147F5F5F575
            C4C9F387DB5A5B7FB059AD5B3C2ED7C72E972BCE4B3CAC3FAC2CC18F44F88958
            60490C1740FB58ABC3FA656B4F4B437EFD311AF55994B4C5B0BB462755A7A3CE
            56199EDF86765B21E08BE6A6A67282E9CAC4BBD8D1D5D5351DC1A5D822A26023
            C107F065E0AF042B24B71C8BC0CE1781998B84CF88F2B679D7CEDBFF566BAEB5
            1CA8DD4FA3722368784238DD60D85675562ADBE176BAA3512F1A5BC06AB4FF33
            FAFBB8B5A5E53CC1023AA2397F7E03DB97B11FDD8D82F1E025F0265802C28B9A
            CF9D3AD5783A0EFE22F0068484A19330F83EE65B39EBC62A7355D7E7E5BBE8E2
            A361342CE30D1A161B46A31BE2748554B3C9DBD71288781B6D17E379B5B1BDFD
            B42CA0B4B83806F995BEC3014254A8301C84082EFB4B872F6718230F47F6A4D6
            EC4F426C0E980BE679EDF41EAE67CD25F3A5CE9DBA1D7461C67CBA20731E5DF8
            CF57E9FC0FE6D16525ABCBB3A4336BBDF5591B06EB6385C9683CE92F40D5D7B1
            9BA24B19F4D7EFD6554E4B7B9E4EFC6452CF9AB31B12D1F88FE04530D56C336F
            BDD871B16B7BE9A774EE37B3E99C8C50FACA3F4269E8AA59746EEA9BDDEF98D6
            69D2A5EC75A81BEAC74C36B358FC27020A58F0ED82A055792BCB83778DA46423
            A1FDD7A8F9E109236372E89561068BE1A363FA5C69E9B1B7E9A43D13E8936993
            E8D34953E894454FD2DF1F0A6D7B597AEFE43269536296748A257F82CD2866F7
            B76024FC2946A33137A08098EF6306441E7FBF72CCEE5154154F68BFCD0AAA5A
            AB742E3DBDFCC8BE8ABDE2E4BD1329D94CA8320165CB50361E6CBBCFD08F867C
            3B407AFCAD11D253C3B1B8143F9E5D88F875BBD1981D50C08CFC19FD9F487EBC
            6AE8967BA93A5E2973F796817472DA043A66D768AA8C23541DA7A4FD16124AC6
            82ED43AE12E9A183441A1346A40786DCEA368519188D19082C40EE601559A25C
            ACE80EFA504983125434082214B1842A58F2582555BD80C44FAB39B2FFFE6A22
            8D4B23D2D845843EF2B39FBACADD9900D653DA8845AAF75446F57AC57511892A
            AADEA4A4CAA948FE6C9083D406171169FCA7483E93480FDE13E81E79E702D87B
            3C306C966A85B229681D5EC5661555FC01C95FECDF432E079F23D2C38998FA89
            844E50074ACECAEF5C80AFD7F4E1D395CBFBD52A9E43F2691879C3A81F901C2F
            64DC6384C6F4EE258144FCF70258CFD93F7F86BC3E309F5C093E81698FC7820B
            819C9B56FAEDAD018E3BA22B2DBD61270CA45E2E974282F1BEE71069D47824BF
            ED91FBFAEE9D019C50593897932E5CB83004C17BBC0CF69E0B77E1F92EF88360
            07C20EF0A28655A7D09441CCB2ADDB0FA5D76796A1F0E13F3026005B7136BB0F
            E418F4FA3DF8509888E0A392283E0AFB086087D2C3602CDBBD601F02BF010FB2
            C62098ED683EF0FC2BF000F825F805E2F7C38E00EC4CB90FCFC3608782216C70
            E031535BDB7176252BE8ECE8C8B5592CEC647B0D27156321FCF9F8547B15762E
            75B95E813F1BFE2CD8976167C2CE807D014C47F934D8E7D9A71DEC7392D3C9BE
            357E07FF19F0149802268349800D3404CCD6EBF5DF13245B834B49052E13ECA4
            8B87A038108B4FB54D28DB083E02EBC187D4EDFE0BEC5AC0CEF468F02710C5EE
            07E07DB00AAC04EFA2EE72D86598D170D877C012F91876BBDF421E76ACAF3F7B
            E6CC37ECFF3814C102580DC86397549003FF286C16C80487410638040E82AFC1
            57603F480769601F48057BC01720057D7C0E768164B013B1CF60B7336AAAAB33
            53535367C9EBC266B385E0EE7711D76D1E8566D00EDA40AB9716D866D004D895
            DAE0450FCBB80AEA411DB8022E835A5003AA4115B8C4C0D5AF1E233724272747
            FBDF4188B1A969DCA5CACA9C72ADD651595141CB75BADBA20CF5CAB4DA9F44E7
            2D3F5558485376EFAE8D888808F725FF37BD207F924C75A6BC0000000049454E
            44AE426082}
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
            1DC2000000097048597300002E2200002E2201AAE2DD92000007AC4944415458
            47BD970B5054D719800F2006939A4E4DAA99F499B19D26AD31D6265693D4D436
            1A1FD45412834D7C2452A2490DD1F84833C647D588D13CB4C5563360849A189F
            2828289887045D84054200ADB8220A2C080C845DF6EEDE7DDCD3EF5C77292418
            B4D3E99DF9E6FFEF7FFE73FEFFFC7BF69C73C34497C7F0F9C688F0F069222C6C
            7057FBFF50D7192B57B85C3BC3FBF7BFDC6D5C1908AC938621FF1F8FDFE73B6B
            BF78F1179D09188140622870C0EF37FC3DA0EC3D81B3719D98A11AEAEB2F15E5
            E70F1686618C5606B20A78BD5EBFC2D7859E6CAA1DC7AB427BE06AD02FC044FC
            C4938516CB2E95C02E9580C7E3717B75FD2BE8BAEE51D0F615B0F7FAD04F0FA1
            547473966A12168BC52528FF876424DD6E773B4974A2A377A2EBCAEE0881DDD1
            89AE3B1858BD3B7B44D79DB45FC1E3E95090440713EF28B058A4AA40B6C7AD05
            5C2E6703011A7068C0B93B1E4F23F646EC3D71197B270C7E19DFA64E74BD89F6
            26EC4DDE2BF666F466E2B69ECCCF0FA8040E77389D2E87C3715673B9CEBA35AD
            1B9AA6556133D1DDEE2A8FA69DD3837834978DF62F731E9B09BE26E8D55DB840
            1217885B5B78EA945BFD04996D6D6D4D5FB4B515681D1D160285284037A1F329
            057A8842F4201D45EE0ED0B42282153109AB5B7359F12FD27DBE0296966A2BFE
            0FAE122A514C0215A5C5C5AD82A57FB0A5B9F93C49649240061D1599262ED721
            134D336110A4EB30010E23B314D8B2F0C9A61AD9C8230A65A34AB9350585B6CB
            3535791E8F76547375E4E06F42057248E0D3CAF2F23AC18ADCDFD8D0F0596B6B
            EB368224B30E1429269AB6CDC4E309F12E7A88EDE8262CE054642A32CDE3F5A6
            405AFBA5DA0B599B92E4B9F4F453FEBABA7D1EB77B07EDEF29A8C00E123860AB
            AA3A2BBC6EF7DEBADADAE34E87637DC0E77BCDE7F3AD0EB206D915D5B6B60B89
            E8892CB0750A9FC2E75BE5FAC2B19DE0E7AB0E65CB4D090B0CDBFAF59501AB35
            0D9F0D266EF71BF86D2081772ED6D49408CAB58FDF62634B4BCB588CB3D922E6
            235F8417D04DD09F8339EC79EA3D819D2F81CABD88AE981FEC3397B5F06653E5
            99D6D3A9EFCBCC792FC9B5B3E3E4F95797951B79791BD9B616E2B7902D6011FD
            5F62BCD76A2F5D3A21E8B4DF72E2C4AB6A5F663FFA060D4360223C05B320EEE2
            F1FC6317728EAD468F8527613A834C37E5151ED71C8EE54DE5152D25495BE481
            279F967BA6CD94AB9E9A216D0B1759656EEECAE058B348E269FACEE47D91BDBE
            FE233381C2828215C40F0F1D0E241281C34018EAEBF04C3CB37BBF7DEFBC05ED
            952929EBB03D0A53202628C77ADADB17379595375BDFFA9BDC13334DEE9B122B
            936362E50B315365417C7C8971F0E092A0BFEAA35063CC69B0DB73BA2610D1D3
            B16BDDBAF5C60F972C2D4B7D689C7C7DF82FDBF3162F49A4F36FE11118E36C6C
            DAD0585AD652B861A3FC60D26372CFC429F2EFD13172DEA4C932794A4C9BFD99
            D916232DED657C7FD78509AAB22CFEA3BD26B07BEAD4BE879F9D57B2F9F6C172
            B908978B23FAB9D70EBC6D85CCC8B8B5D556BDCC9691651C9AF947993C6CA44C
            1D7EBF5C77DF833276C428B973F4E83A237A528E31674EA2919EAE820F5715A5
            BA77C2F7D147DAEDF6CC5E13F878C58AA823CFCF2FDBF2833BE51AD157FE45DC
            20978848EF47B3E2F697266FD7B70D1B852D4CAE1591329EF6216111F2F58888
            6AD9B7CF6E232A6A863168D0402944D897AB4B123FACB7DB0FF69A40D6F8F137
            24DD3DA27C7DFF81241065B2BEEF3765EACF47C9CD24B59AC0ABB13D81BC8B75
            FC8610E70C2176C2741870B5DB1415184C057A4F400D30578859334444DB2B04
            5A2BFA91443FB94AF421701F64941C87BC5F082D4D880A82A6422CB3FED6D75D
            E5AE2B013550AA088F7D5E44DA97069348248995E8634484FC9510AE4A21F209
            FC164C809B7BBB475E7702EA77DC2122A2E7883E352F135805FF35C11F11A2FD
            B4109F123411EEC52FB2B7E0AAFDBA13080D4A99C7C68B88D3A309FE3033B709
            719CC0ABB8EE0E2378E75ED25B12FF75026AE0BD423CF00721B2CE087194E06B
            083EB4A7957E6D6B40D3F65B0B0BBBED84BD656F9650883BE051820FA1F335CF
            3C3476670538A1D23997D79D3C797200C69B83F40F9E0B37F17E13FA8DC87EC8
            A82091C848C92E694AB6EE2E84077525156121BA7D04F137642B3EA8EE0319D5
            365B321F0AF712E41E43D7EF41DE0DEA50FA19DCA5762FE44FE0C7F023953DDC
            A176B410BC7F0FBE0BDF81DBB1DF861C04EA4CF936EFB7226F81016A7230ACA1
            AEEE88BA9265373736663A5B5BD5A9368D934AF104FAE37CAA3D869C227DBEDF
            A34F468F464E424E408E478E83B1B43F8CFC8DFAB4433E6478BDEA5BE341F407
            60148C8411701FA8890E85C9369BED6341B0C55C4A4AB98CA8936E0D09AD8655
            7CAAADA46D392C83A5F08AF4FBFF8C5C02EA4C5F080B60BEBA1FC03CF8133C07
            73F17D16194F45E390CFC02CF318F6FB6710471DEB4BF33EF9E403F57FBC0563
            36D20287D5251532D00F20D3611FEC853DB00B76C2FBF01EFC13D22015DE8514
            488677602B63FC03364312FC15DB26E4DB8ACA8A8A7D292929D1E6BA703A9D43
            B9FB7DC645D24D6313D4431DD406B984BC0835A0AED4D5416C48C539A882B3F0
            2F3803A7A1122AA01C3E5770F5AB62E6D54949490BBBDE4184BDA6E6A79F9795
            65941415B9CA4A4B6589D57A4D14E3575C54F4B55883EDC77273E5D62D5B4E27
            2424C48582FF1B973176919C853AED0000000049454E44AE426082}
          ParentFont = False
          TabOrder = 8
          Text = 'Comparar'
          Version = '5.0.1.4'
          OnClick = btnCompareClick
        end
      end
      inherited Panel2: TPanel
        Left = 826
        ExplicitLeft = 822
      end
    end
    inherited PnlPro: TPanel
      Width = 956
      ExplicitWidth = 956
      inherited PBPaginacion: TAdvProgressBar
        Width = 858
        ExplicitWidth = 858
      end
      inherited PnlNum: TPanel
        Left = 859
        ExplicitLeft = 859
      end
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 576
    Top = 48
  end
  inherited mdEstructura: TJvMemoryData
    Top = 80
  end
  object frxReporteCuadroComparativo: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41042.052215011600000000
    ReportOptions.LastChange = 41042.085691932870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReporteCuadroComparativoGetValue
    Left = 584
    Top = 304
    Datasets = <
      item
        DataSet = FrxCuadroComparativo
        DataSetName = 'ReporteCuadroComparativo'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end>
    Variables = <
      item
        Name = ' Variables Globales'
        Value = Null
      end
      item
        Name = 'organizacion'
        Value = ''
      end
      item
        Name = 'tituloorganizacion'
        Value = ''
      end
      item
        Name = 'nivel'
        Value = ''
      end
      item
        Name = 'contrato'
        Value = ''
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
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 978.898270000000000000
        object Memo2: TfrxMemoView
          Left = 94.488250000000000000
          Top = 41.574830000000000000
          Width = 808.819420000000000000
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
            '[tituloorganizacion]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 94.488250000000000000
          Top = 8.118119999999997000
          Width = 808.819420000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[organizacion]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 94.488250000000000000
          Top = 61.811070000000000000
          Width = 808.819420000000000000
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
            'NO. DE [Uppercase(<nivel>)] : [Contrato]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 7.559059999999999000
          Width = 68.031540000000010000
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
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 313.700990000000000000
        Width = 978.898270000000000000
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
        RowCount = 0
        object Memo26: TfrxMemoView
          Left = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 98.267780000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 158.740260000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 219.212740000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 279.685220000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 351.496290000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 411.968770000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 472.441250000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 544.252320000000100000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 604.724800000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 665.197280000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 737.008350000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 136.063080000000000000
        Top = 608.504330000000000000
        Width = 978.898270000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Top = 113.385900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo77: TfrxMemoView
          Left = 18.897650000000000000
          Top = 56.692949999999990000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 18.897650000000000000
          Top = 75.590600000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CARGO:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779530000000022000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITA')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 325.039580000000000000
          Top = 56.692949999999990000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 325.039580000000000000
          Top = 75.590600000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CARGO:')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 325.039580000000000000
          Top = 3.779530000000022000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ELABORA')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 638.740570000000000000
          Top = 56.692949999999990000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 638.740570000000000000
          Top = 75.590600000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CARGO:')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 638.740570000000000000
          Top = 3.779530000000022000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AUTORIZA')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 49.133890000000000000
        Top = 132.283550000000000000
        Width = 978.898270000000000000
        object Memo3: TfrxMemoView
          Left = 86.929190000000000000
          Top = 26.456710000000020000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'CUADRO COMPARATIVO')
        end
        object Memo4: TfrxMemoView
          Left = 483.779840000000000000
          Top = 26.456709999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'PEDIDO')
        end
        object Memo5: TfrxMemoView
          Left = 544.252320000000100000
          Top = 26.456709999999990000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'IPM-1431-11')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 544.252320000000100000
          Top = 3.779529999999994000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd-mmm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            'NOW')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 49.133890000000000000
        Top = 241.889920000000000000
        Width = 978.898270000000000000
        Condition = 'ReporteImagen."imagen1"'
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779529999999994000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITADO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779529999999994000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 737.008350000000000000
          Top = 3.779529999999994000
          Width = 222.992270000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 351.496290000000000000
          Top = 3.779530000000022000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 544.252320000000100000
          Top = 3.779530000000022000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.677179999999990000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONS')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 52.913420000000000000
          Top = 22.677179999999990000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANT')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 98.267780000000000000
          Top = 22.677179999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PZA')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 158.740260000000000000
          Top = 22.677179999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'T.E.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 219.212740000000000000
          Top = 22.677179999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'P.U.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 279.685220000000000000
          Top = 22.677179999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 351.496290000000000000
          Top = 22.677179999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'T.E.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 411.968770000000000000
          Top = 22.677179999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'P.U.')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 472.441250000000000000
          Top = 22.677179999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 544.252320000000100000
          Top = 22.677179999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'T.E.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 604.724800000000000000
          Top = 22.677179999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'P.U.')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 665.197280000000000000
          Top = 22.677179999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 192.756030000000000000
        Top = 355.275820000000000000
        Width = 978.898270000000000000
        object Memo51: TfrxMemoView
          Left = 737.008350000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 737.008350000000000000
          Top = 18.897650000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 737.008350000000000000
          Top = 37.795300000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 158.740260000000000000
          Width = 192.756030000000000000
          Height = 56.692950000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COTIZO TODAS LAS PARTIDAS')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 351.496290000000000000
          Width = 192.756030000000000000
          Height = 56.692950000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COTIZO TODAS LAS PARTIDAS')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 544.252320000000100000
          Width = 192.756030000000000000
          Height = 56.692950000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COTIZO TODAS LAS PARTIDAS')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 52.913420000000000000
          Top = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 98.267780000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 52.913420000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 98.267780000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 98.267780000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 158.740260000000000000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'IVA: $')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 234.330860000000000000
          Top = 75.590600000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 158.740260000000000000
          Top = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL: $')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 234.330860000000000000
          Top = 94.488250000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'SUBTOTAL: $')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 234.330860000000000000
          Top = 56.692949999999990000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 158.740260000000000000
          Top = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'T.E.:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 234.330860000000000000
          Top = 132.283550000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 158.740260000000000000
          Top = 170.078849999999900000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'LAB:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 234.330860000000000000
          Top = 170.078849999999900000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 158.740260000000000000
          Top = 113.385900000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONDICIONES COMERCIALES')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 158.740260000000000000
          Top = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'PAGO:')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 234.330860000000000000
          Top = 151.181200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 351.496290000000000000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'IVA: $')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 427.086890000000000000
          Top = 75.590600000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 351.496290000000000000
          Top = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL: $')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 427.086890000000000000
          Top = 94.488250000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 351.496290000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'SUBTOTAL: $')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 427.086890000000000000
          Top = 56.692949999999990000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 351.496290000000000000
          Top = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'T.E.')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 427.086890000000000000
          Top = 132.283550000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 351.496290000000000000
          Top = 170.078849999999900000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'LAB:')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 427.086890000000000000
          Top = 170.078850000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 351.496290000000000000
          Top = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'PAGO:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 427.086890000000000000
          Top = 151.181200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 544.252320000000100000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'IVA: $')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 619.842920000000000000
          Top = 75.590600000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 544.252320000000100000
          Top = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL: $')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 619.842920000000000000
          Top = 94.488250000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 544.252320000000100000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'SUBTOTAL: $')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 619.842920000000000000
          Top = 56.692949999999990000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 544.252320000000100000
          Top = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'T.E.:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 619.842920000000000000
          Top = 132.283550000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 544.252320000000100000
          Top = 170.078849999999900000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'LAB:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 619.842920000000000000
          Top = 170.078850000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 544.252320000000100000
          Top = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'PAGO:')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 619.842920000000000000
          Top = 151.181200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 11.338590000000000000
          Top = 56.692949999999990000
          Width = 147.401670000000000000
          Height = 132.283550000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 351.496290000000000000
          Top = 113.385900000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONDICIONES COMERCIALES')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 544.252320000000100000
          Top = 113.385900000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONDICIONES COMERCIALES')
          ParentFont = False
        end
      end
    end
  end
  object FrxCuadroComparativo: TfrxDBDataset
    UserName = 'ReporteCuadroComparativo'
    CloseDataSource = False
    DataSource = DsDatosDetalle
    BCDToCurrency = False
    Left = 384
    Top = 336
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
