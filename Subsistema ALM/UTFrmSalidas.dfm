inherited FrmSalidas: TFrmSalidas
  Caption = 'Salidas de almacen'
  ClientWidth = 1121
  ExplicitWidth = 1137
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 1121
    ExplicitWidth = 1121
    inherited LbFiltros: TJvLabel
      Width = 1113
      ExplicitWidth = 903
    end
    inherited GroupBoxFiltro: TGroupBox
      Width = 1116
      ExplicitWidth = 1116
      inherited BtnSearch: TAdvShapeButton
        Left = 1070
        TabOrder = 6
        OnClick = BtnSearchClick
        ExplicitLeft = 1070
      end
      inherited chkUsuario: TAdvOfficeCheckBox
        Left = 989
        Top = 10
        Width = 79
        TabOrder = 5
        OnClick = cmbTipoFiltroChange
        ExplicitLeft = 989
        ExplicitTop = 10
        ExplicitWidth = 79
      end
      inherited cmbConvenio: TDBLookupComboBox
        Left = 9
        TabOrder = 7
        ExplicitLeft = 9
      end
      inherited AdvShapeButton1: TAdvShapeButton
        TabOrder = 8
      end
      object edtFiltroFolio: TAdvEdit
        Left = 285
        Top = 17
        Width = 127
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
      object grpFiltroFecha: TGroupBox
        Left = 565
        Top = 6
        Width = 269
        Height = 40
        Caption = 'Fecha'
        TabOrder = 3
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
        Left = 856
        Top = 17
        Width = 100
        Height = 21
        Color = clWindow
        Version = '1.3.2.2'
        Visible = True
        ButtonWidth = 18
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        Items.Strings = (
          'Activo'
          'Cancelado')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 4
        Text = 'Activo'
        OnChange = cmbTipoFiltroChange
      end
      object cmbTipoFiltro: TAdvComboBox
        Left = 154
        Top = 17
        Width = 124
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Tipo de movimiento'
        Color = clWindow
        Version = '1.3.2.2'
        Visible = True
        ButtonWidth = 18
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 0
        OnChange = cmbTipoFiltroChange
      end
      object EditFReferencia: TAdvEdit
        Left = 418
        Top = 17
        Width = 141
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
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 1121
    ExplicitWidth = 1121
    inherited DBGridPrincipal: TNextDBGrid
      Width = 1119
      ExplicitWidth = 1119
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 122
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Movimiento'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 122
        FieldName = 'nombretipomovimiento'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 117
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Almac'#233'n'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 117
        FieldName = 'codigoalmacen'
      end
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 150
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Salida'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 150
        FieldName = 'serie'
      end
      object NxDBTextColumn5: TNxDBTextColumn
        DefaultWidth = 290
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'REFERENCIA'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 290
        FieldName = 'referencia'
      end
      object NxDBDateColumn1: TNxDBDateColumn
        DefaultValue = '01/05/2012'
        DefaultWidth = 113
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
        Width = 113
        FieldName = 'fecha'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 102
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
        Width = 102
        FieldName = 'estado'
      end
    end
    inherited PanelBarra: TPanel
      Width = 1119
      ExplicitWidth = 1119
      inherited Panel1: TPanel
        Width = 986
        ExplicitWidth = 986
        inherited PanelPrint: TPanel
          inherited BtnPrint: TAdvShapeButton
            OnClick = BtnPrintClick
          end
        end
      end
      inherited Panel2: TPanel
        Left = 989
        ExplicitLeft = 989
      end
    end
    inherited PnlPro: TPanel
      Width = 1119
      inherited PBPaginacion: TAdvProgressBar
        Width = 1048
      end
      inherited PnlNum: TPanel
        Left = 1049
      end
    end
  end
  inherited dsDatos: TDataSource
    Left = 384
    Top = 104
  end
  object frxReporteEntradaDetalle: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 41075.451018194440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Footer1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '    '
      'end;'
      ''
      'procedure Child1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <tipo> = '#39'entrada'#39' then   '
      '  Mentrada.Text := '#39'XXX'#39';'
      ''
      '  if <tipo> = '#39'salida'#39' then   '
      '  Msalida.Text := '#39'XXX'#39';'
      ''
      '  if <tipo> = '#39'salida'#39' then                        '
      
        '    GroupHeader1.condition := '#39'ReporteEntradaDetalle."idsalida"'#39 +
        ';'
      '  if <tipo> = '#39'entrada'#39' then           '
      
        '    GroupHeader1.condition := '#39'ReporteEntradaDetalle."identrada"' +
        #39';          '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '              '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '                                                                ' +
        '                                                                ' +
        '                                       '
      '  while (engine.freespace > pagefooter1.height+20)  do'
      '  begin      '
      
        '    child1.visible := true;                                     ' +
        '             '
      '    engine.showband(child1);'
      '  end;     '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <tipo> = '#39'entrada'#39' then'
      '    cantEntregada.text := '#39#39';'
      '  if <tipo> = '#39'salida'#39' then'
      '    cantSolicitada.text := '#39#39';        '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 608
    Top = 288
    Datasets = <
      item
        DataSet = FrxEntradaDetalle
        DataSetName = 'ReporteEntradaDetalle'
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
        Name = 'tipo'
        Value = Null
      end
      item
        Name = 'nombreautorizo'
        Value = ''
      end
      item
        Name = 'cargoautorizo'
        Value = ''
      end
      item
        Name = 'nombreentrego'
        Value = ''
      end
      item
        Name = 'cargoentrego'
        Value = ''
      end
      item
        Name = 'nombrerecibio'
        Value = ''
      end
      item
        Name = 'cargorecibio'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        Height = 166.299320000000000000
        Top = 510.236550000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'Footer1OnAfterPrint'
        object Memo12: TfrxMemoView
          Left = 582.047620000000000000
          Top = 120.944960000001000000
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
        object Memo31: TfrxMemoView
          Left = 18.897650000000000000
          Top = 120.944960000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'No. [nivel]: [Contrato].')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 302.362400000000000000
          Top = 120.944960000001000000
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
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Top = 68.031540000000010000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nombreautorizo]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 18.897650000000000000
          Top = 82.708720000000030000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[cargoautorizo]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 283.464750000000000000
          Top = 68.031540000000010000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nombreentrego]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 283.464750000000000000
          Top = 82.708720000000030000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[cargoentrego]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 525.354670000000100000
          Top = 68.031540000000010000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nombrerecibio]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 525.354670000000100000
          Top = 82.708720000000030000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[cargorecibio]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 22.677180000000000000
          Top = 11.338590000000120000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AUTORIZA')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 283.464750000000000000
          Top = 7.559060000000102000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTREGA')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 521.575140000000000000
          Top = 7.559060000000102000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 374.173470000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = FrxEntradaDetalle
        DataSetName = 'ReporteEntradaDetalle'
        RowCount = 0
        Stretched = True
        object Memo20: TfrxMemoView
          Left = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 641.961040000000000000
          Width = 91.842409840000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteEntradaDetalle."codigounidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 41.574830000000000000
          Width = 381.732530000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[reporteentradadetalle."tituloarticulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object CantSolicitada: TfrxMemoView
          Left = 424.228510000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteEntradaDetalle."cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object CantEntregada: TfrxMemoView
          Left = 533.834880000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteEntradaDetalle."cantidad"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        Condition = '.""'
        object Memo40: TfrxMemoView
          Left = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 641.961040000000000000
          Width = 91.842409840000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDAD DE'
            'MEDIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 41.574830000000000000
          Width = 381.732530000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsSolid
          Frame.RightLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 531.834880000000000000
          Top = 15.118119999999980000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.TopLine.Style = fsSolid
          Frame.RightLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTREGADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 422.228510000000000000
          Top = 15.118119999999980000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.TopLine.Style = fsSolid
          Frame.RightLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 422.228510000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftRight, ftTop]
          Frame.LeftLine.Style = fsSolid
          Frame.RightLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 122.504020000000000000
        Top = 170.078850000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 30.236240000000010000
          Width = 343.937230000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALE DE ENTRADA/SALIDA DE MATERIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 355.275820000000000000
          Top = 30.236240000000010000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTRADAS:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 77.149660000000010000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE DEL SOLICITANTE')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 353.937230000000000000
          Top = 77.149660000000010000
          Width = 379.086689840000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CLAVE Y NOMBRE DEL DEPARTAMENTO')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 11.338590000000000000
          Top = 92.267780000000010000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 355.275820000000000000
          Top = 92.267780000000010000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 355.275820000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'FOLIO: ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 355.275820000000000000
          Top = 14.677179999999990000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = ' dd  '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'FECHA:')
          ParentFont = False
        end
        object MEntrada: TfrxMemoView
          Left = 529.134200000000000000
          Top = 30.236240000000010000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 355.275820000000000000
          Top = 45.354360000000010000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SALIDA:')
          ParentFont = False
        end
        object MSalida: TfrxMemoView
          Left = 529.134200000000000000
          Top = 45.354360000000010000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 355.275820000000000000
          Top = 60.472479999999990000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'DEVOLUCION:')
          ParentFont = False
        end
        object MDevolucion: TfrxMemoView
          Left = 529.134200000000000000
          Top = 60.472479999999990000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 396.850650000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ReporteEntradaDetalle."serie"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 396.850650000000000000
          Top = 15.118120000000010000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReporteEntradaDetalle."fecha"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 89.385900000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 94.488250000000000000
          Top = 34.015770000000010000
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
            '[tituloorganizacion]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 94.488250000000000000
          Top = 0.559059999999998800
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
            '[organizacion]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 94.488250000000000000
          Top = 54.252010000000000000
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
            'NO. DE [Uppercase(<nivel>)] : [Contrato]')
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
      end
      object Child1: TfrxChild
        Height = 15.118120000000000000
        Top = 434.645950000000000000
        Visible = False
        Width = 740.409927000000000000
        OnAfterPrint = 'Child1OnAfterPrint'
        object Memo34: TfrxMemoView
          Left = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 641.961040000000000000
          Width = 91.842409840000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 41.574830000000000000
          Width = 381.732530000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 423.307360000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 532.913730000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmSolicitudes.FrxSolicitudDetalle
          DataSetName = 'ReporteSolicitudDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 411.968770000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        Child = frxReporteEntradaDetalle.Child1
      end
    end
  end
  object FrxEntradaDetalle: TfrxDBDataset
    UserName = 'ReporteEntradaDetalle'
    CloseDataSource = False
    DataSet = cdDatosDetalle
    BCDToCurrency = False
    Left = 528
    Top = 288
  end
  object DsDatosDetalle: TDataSource
    DataSet = cdDatosDetalle
    Left = 448
    Top = 280
  end
  object cdDatosDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 390
    Top = 288
  end
end
