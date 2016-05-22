inherited FrmSalidasMan: TFrmSalidasMan
  Caption = 'Salidas de almacen con manifiesto'
  ClientWidth = 1079
  ExplicitLeft = -354
  ExplicitWidth = 1095
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 1079
    ExplicitLeft = -1
    ExplicitTop = -5
    ExplicitWidth = 1079
    inherited LbFiltros: TJvLabel
      Width = 1071
      ExplicitWidth = 903
    end
    inherited GroupBoxFiltro: TGroupBox
      Width = 992
      ExplicitWidth = 992
      inherited BtnSearch: TAdvShapeButton
        Left = 946
        TabOrder = 5
        OnClick = BtnSearchClick
        ExplicitLeft = 843
      end
      inherited chkUsuario: TAdvOfficeCheckBox
        Left = 860
        TabOrder = 4
        ExplicitLeft = 876
      end
      inherited cmbConvenio: TDBLookupComboBox
        Top = 13
        TabOrder = 6
        ExplicitTop = 13
      end
      inherited AdvShapeButton1: TAdvShapeButton
        TabOrder = 7
      end
      object edtFiltroFolio: TAdvEdit
        Left = 316
        Top = 13
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
        Version = '2.9.0.0'
      end
      object grpFiltroFecha: TGroupBox
        Left = 455
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
        Left = 737
        Top = 13
        Width = 111
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
        TabOrder = 3
        Text = 'Activo'
      end
      object cmbTipoFiltro: TAdvComboBox
        Left = 149
        Top = 13
        Width = 159
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
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 1079
    ExplicitWidth = 905
    inherited DBGridPrincipal: TNextDBGrid
      Width = 1077
      ExplicitWidth = 903
      object NxDBTextColumn3: TNxDBTextColumn
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
        FieldName = 'nombretipomovimiento'
      end
      object NxDBTextColumn4: TNxDBTextColumn
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
      object NxDBDateColumn1: TNxDBDateColumn
        DefaultValue = '01/05/2012'
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
        FieldName = 'fecha'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Estado'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        FieldName = 'estado'
      end
    end
    inherited PanelBarra: TPanel
      Width = 1077
      ExplicitWidth = 903
      inherited Panel1: TPanel
        Width = 944
        ExplicitWidth = 770
      end
      inherited Panel2: TPanel
        Left = 947
        ExplicitLeft = 773
      end
    end
    inherited PnlPro: TPanel
      Width = 1077
      inherited PBPaginacion: TAdvProgressBar
        Width = 1006
      end
      inherited PnlNum: TPanel
        Left = 1007
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41040.722396736100000000
    ReportOptions.LastChange = 41041.663321064810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  LocCuenta: Integer;                                           ' +
        '              '
      '  '
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  while Engine.FreeSpace - Child1.Height > Child1.Height do'
      '  begin'
      '    Child1.Visible := True;'
      '    Engine.ShowBand(Child1);'
      '  end;'
      '    '
      '  if Engine.FreeSpace > 0 then'
      '  begin'
      '    Child1.Visible := True;'
      '    Engine.ShowBand(Child1);'
      '    Memo27.Height := Engine.FreeSpace - 1;    '
      
        '    Memo75.Height := Engine.FreeSpace - 1;                      ' +
        '                        '
      
        '    Memo76.Height := Engine.FreeSpace - 1;                      ' +
        '                        '
      
        '    Memo77.Height := Engine.FreeSpace - 1;                      ' +
        '                        '
      
        '    Memo78.Height := Engine.FreeSpace - 1;                      ' +
        '                        '
      
        '    Child1.Height := Engine.FreeSpace - 1;                      ' +
        '                                                      '
      '  end;            '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  LocCuenta := LocCuenta + 1;                                   ' +
        '                                           '
      
        '  Memo42.Text := IntToStr(LocCuenta);                           ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                '
      'end;'
      ''
      'begin'
      '  LocCuenta := 0;                                           '
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 296
    Top = 328
    Datasets = <
      item
        DataSet = frdsSalidas
        DataSetName = 'frdsSalidas'
      end
      item
        DataSet = frdsSalidasDetalle
        DataSetName = 'frdsSalidasDetalle'
      end>
    Variables = <>
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
      object PageHeader1: TfrxPageHeader
        Height = 230.551330000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Width = 740.787457720000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PETROLEOS MEXICANOS')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Picture.Data = {
            07544269746D61709A0C0100424D9A0C01000000000036000000280000000101
            0000590000000100180000000000640C01000000000000000000000000000000
            0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAF6F6F6
            F7F7F7F8F8F8EEEEEEEFEFEFEFEFEFEBEBEBE8E8E8E4E4E4E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E5E5E5E5E5E5E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E9E9E9E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E1E1E1D9D9D9D8D8D8E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFDFDFDBDBDBE0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E2E2E2E8E8E8E8E8E8E9
            E9E9E1E1E1E0E0E0E0E0E0E2E2E2E9E9E9E6E6E6DFDFDFE0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E1E1E1E2E2E2E8E8E8E8E8E8E7E7E7EDEDEDEEEEEEF5F5F5F7
            F7F7F7F7F7F6F6F6F5F5F5F0F0F0EEEEEEEFEFEFEFEFEFEFEFEFEFEFEFEEEEEE
            F5F5F5F7F7F7F5F5F5F5F5F5F5F5F5F4F4F4EEEEEEEFEFEFEFEFEFEAEAEAE8E8
            E8E7E7E7E8E8E8E9E9E9E9E9E9E9E9E9E8E8E8E8E8E8E8E8E8E7E7E7DFDFDFE0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0D9D9D9DEDEDEE1E1E1DCDCDCDADADADADADADADADAE1E1E1E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E9E9E9E8E8E8E8E8E8E3E3E3E1E1E1E5E5
            E5E5E5E5E8E8E8E8E8E8E8E8E8E3E3E3DFDFDFE9E9E9E8E8E8E8E8E8E3E3E3E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E4E4E4E7E7E7F0F0F0EEEEEEF8F8F8F7F7F7F6F6F6FAFAFAFEFEFEFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFF5F5
            F5EBEBEBECECECEFEFEFD7D7D7D9D9D9DBDBDBD2D2D2C9C9C9C1C1C1B5B5B5B7
            B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
            B7B7B7B7B7B7B5B5B5C3C3C3C2C2C2CACACAC9C9C9C9C9C9C9C9C9C9C9C9C9C9
            C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9CBCBCBB8B8B8B7B7B7B7B7B7B7B7B7B6
            B6B6B7B7B7B7B7B7B9B9B9BABABAB8B8B8B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
            B7B7B7B7B7B7B8B8B8B8B8B8B8B8B8B9B9B9A6A6A6A3A3A3B7B7B7B8B8B8B7B7
            B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B8B8B8B5B5B5ACACACB8B8B8B8
            B8B8B8B8B8B8B8B8B7B7B7B7B7B7B7B7B7B7B7B7B6B6B6B6B6B6BBBBBBCBCBCB
            C9C9C9CBCBCBB9B9B9B7B7B7B7B7B7BCBCBCCDCDCDC6C6C6B6B6B6B7B7B7B7B7
            B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
            B7B7B7B7B7B7B7B7B7B7B7B9B9B9BDBDBDCBCBCBC9C9C9C7C7C7D7D7D7D9D9D9
            EBEBEBEEEEEEEEEEEEEDEDEDEAEAEADDDDDDD9D9D9DADADADADADADADADADADA
            DAD9D9D9E9E9E9EFEFEFEAEAEAE9E9E9EAEAEAE7E7E7D8D8D8DADADADCDCDCD0
            D0D0CBCBCBC9C9C9CACACACDCDCDCDCDCDCDCDCDCACACAC9C9C9CACACAC8C8C8
            B6B6B6B7B7B7B7B7B7B8B8B8B8B8B8B8B8B8B8B8B8B7B7B7B7B7B7B7B7B7B7B7
            B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
            B7B7B7B7B7B7B7B7B8B8B8B8B8B8B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
            B7B7B7B8B8B8B7B7B7A6A6A6B3B3B3BABABAAEAEAEA8A8A8A8A8A8AAAAAABABA
            BAB8B8B8B7B7B7B7B7B7B7B7B7B7B7B7B8B8B8CBCBCBC9C9C9CBCBCBBFBFBFB8
            B8B8C4C4C4C3C3C3CBCBCBCACACACBCBCBBEBEBEB5B5B5CBCBCBC9C9C9CBCBCB
            BEBEBEB5B5B5B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
            B7B7B7B7B7B7B7B7B7B7B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
            B8B8B6B6B6C1C1C1C8C8C8DCDCDCD8D8D8F0F0F0EDEDEDECECECF6F6F6FFFFFF
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFAFAFAF6F6F6F2F2F2EFEFEFD9D9D9DDDDDDD4D4D4CCCCCCC3C3C3BEBEBE
            B9B9B9B1B1B1B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
            B2B2B2B2B2B2B2B5B5B5B8B8B8BEBEBEBDBDBDC4C4C4C3C3C3C3C3C3C3C3C3C2
            C2C2C9C9C9C9C9C9C3C3C3C3C3C3C3C3C3C3C3C3C5C5C5B2B2B2B2B2B2B2B2B2
            B5B5B5BCBCBCB7B7B7B3B3B3A1A1A19F9F9FB2B2B2B2B2B2B2B2B2B2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B1B1B1AFAFAFB0B0B0B4B4B4A1A1A19F9F9FB2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2AFAFAFA8A8A8
            ADADADAEAEAEADADADAFAFAFB2B2B2B2B2B2B1B1B1BABABABBBBBBBABABABDBD
            BDC4C4C4C3C3C3C5C5C5B4B4B4B2B2B2B2B2B2B4B4B4BCBCBCB8B8B8B1B1B1B2
            B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3B3B3B7B7B7C4C4C4C4C4C4CCCCCCD2D2
            D2D2D2D2E2E2E2E5E5E5E5E5E5E4E4E4E3E3E3DDDDDDDCDCDCD5D5D5D3D3D3D4
            D4D4D4D4D4D2D2D2E1E1E1E5E5E5E3E3E3E2E2E2E3E3E3E2E2E2DCDCDCD6D6D6
            D4D4D4CFCFCFCBCBCBC2C2C2C3C3C3C5C5C5C5C5C5C5C5C5C3C3C3C3C3C3C3C3
            C3C1C1C1B0B0B0B2B2B2B3B3B3ADADADABABABAFAFAFAFAFAFB2B2B2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B2B0B0B0AFAFAFB2B2B2B2B2B2B2B2B2B2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B1B1B1A1A1A1A8A8A8AAAAAAA5A5A5A2A2A2A4A4A4A4
            A4A4ABABABAFAFAFB2B2B2B2B2B2B2B2B2B4B4B4B3B3B3C5C5C5C3C3C3C4C4C4
            BEBEBEBBBBBBC1C1C1C1C1C1B9B9B9C0C0C0C4C4C4BEBEBEBABABAC4C4C4C3C3
            C3C4C4C4BEBEBEBBBBBBB5B5B5B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B3B3B3ADADADA9A9A9ADADADB0B0B0A9A9A9AAAAAA
            A9A9A9AEAEAEB1B1B1BBBBBBC2C2C2D6D6D6D1D1D1E6E6E6E9E9E9EEEEEEF2F2
            F2F5F5F5FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFFFFFFF6F6F6EFEFEFD9D9D9DEDEDECACACAC3C3C3B9B9
            B9B9B9B9B9B9B9A7A7A7A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A8A8A8A8A8A8A8A8AFAFAFB9B9B9B7B7B7B7B7B7BCBCBCBBBBBBB9B9B9
            B9B9B9B8B8B8C6C6C6C8C8C8BABABABABABABABABABABABABCBCBCA9A9A9A8A8
            A8A8A8A8B0B0B0BFBFBFB5B5B5ABABAB8282827C7C7CA7A7A7A9A9A9A8A8A8A8
            A8A8A8A8A8A8A8A8A8A8A8A9A9A9A8A8A8A3A3A3A6A6A6AFAFAF989898959595
            AAAAAAABABABABABABAAAAAAA8A8A8A8A8A8A8A8A8A8A8A8A9A9A9ABABABA7A7
            A7A0A0A0A1A1A1A1A1A19F9F9FA2A2A2A9A9A9A8A8A8A7A7A7BABABABDBDBDBD
            BDBDBCBCBCB9B9B9B9B9B9BBBBBBA8A8A8A6A6A6A8A8A8A8A8A8A7A7A7A8A8A8
            A8A8A8A8A8A8A8A8A8AAAAAAAAAAAAA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A8A8A8A8A8A8A8A8A8A8AAAAAAABABABA9A9A9AEAEAEBDBDBDBFBFBFCF
            CFCFCBCBCBC9C9C9D7D7D7DADADAD8D8D8D9D9D9DBDBDBDCDCDCDDDDDDCECECE
            CACACACBCBCBCBCBCBC9C9C9D7D7D7DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDDDD
            DDD0D0D0CCCCCCCECECECACACAB8B8B8BABABABBBBBBBABABAB9B9B9BBBBBBBB
            BBBBBCBCBCBABABAA7A7A7AAAAAAACACAC9E9E9E9A9A9AA4A4A4A4A4A4ABABAB
            A9A9A9A8A8A8A8A8A8A8A8A8A8A8A8A9A9A9AAAAAAA9A9A9A8A8A8A8A8A8A8A8
            A8A8A8A8A9A9A9AAAAAAAAAAAAABABABA5A5A5A4A4A4ABABABAAAAAAA8A8A8AA
            AAAAABABABAAAAAAAAAAAAABABABAAAAAA989898989898969696979797979797
            9A9A9A9A9A9A989898A4A4A4ABABABAAAAAAAAAAAAACACACACACACBDBDBDBBBB
            BBBBBBBBBBBBBBBABABABCBCBCBCBCBCA2A2A2B3B3B3BCBCBCBBBBBBBABABAB9
            B9B9B9B9B9B9B9B9BBBBBBBEBEBEB0B0B0A8A8A8A8A8A8A8A8A8A8A8A8AAAAAA
            ABABABABABABABABABABABABABABABACACACA0A0A09595959E9E9EA5A5A59595
            95969696959595A1A1A1AAAAAAB4B4B4BABABACDCDCDC9C9C9DBDBDBE4E4E4EF
            EFEFECECECE8E8E8FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFF6F6F6EFEFEFD9D9D9DEDEDECBCBCBC4
            C4C4BABABAB2B2B2A7A7A7AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9A9A9A8A8A8A8A8A8A8A8A8A7A7A7AFAF
            AFBCBCBCBBBBBBBBBBBBB9B9B9B9B9B9BBBBBBB8B8B8B6B6B6B6B6B6B8B8B8A9
            A9A9A9A9A9AAAAAAA9A9A9A7A7A7A8A8A8AAAAAAADADADAEAEAEAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4A4A49F9F9F9797979191918080809898
            989999999797979696969696969D9D9DABABABAAAAAAAAAAAAAAAAAAA5A5A598
            98989898989898988E8E8E8A8A8A9E9E9EA4A4A4AAAAAAAAAAAAAAAAAAA8A8A8
            A7A7A7A7A7A7ACACACBCBCBCBBBBBBBBBBBBBCBCBCBEBEBEACACACA9A9A9AAAA
            AAAAAAAAAAAAAAAAAAAAABABAB9898989B9B9BABABABAAAAAAAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAABABAB9A9A9A9595959D9D9DA1A1A1A8A8A8
            AAAAAAB8B8B8C8C8C8CBCBCBD8D8D8E1E1E1F2F2F2EDEDEDDADADAD9D9D9D9D9
            D9CECECECBCBCBCCCCCCCCCCCCCACACAD9D9D9DCDCDCDCDCDCDCDCDCDCDCDCDC
            DCDCDEDEDEC3C3C3BABABABABABAB9B9B9BBBBBBB8B8B8A8A8A8B7B7B7BCBCBC
            AFAFAFA9A9A9A7A7A7A8A8A8ABABAB9B9B9B9696969898989898989797979797
            97959595A5A5A5AAAAAAAAAAAAAAAAAAAAAAAAA9A9A9969696A5A5A5AAAAAAAA
            AAAAAAAAAAAAAAAAA9A9A99797979999999999999999999999999898989A9A9A
            ADADAD9D9D9D9696969898989999999696969797979898989898989999999999
            999999999898989898989898989898989999999898989A9A9AABABABA9A9A9A7
            A7A7AAAAAAAAAAAAB4B4B4BCBCBCA5A5A5A7A7A7C0C0C0B0B0B0A5A5A5B3B3B3
            BBBBBBBBBBBBBBBBBBBCBCBCAFAFAFA7A7A7A9A9A9AAAAAAAAAAAAAAAAAAABAB
            AB9F9F9F95959596969696969696969696969696969698989899999998989897
            97979999999999999999999797979595959F9F9FA6A6A6D0D0D0CACACADCDCDC
            E5E5E5EEEEEEF7F7F7FFFFFFFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFCFCFCF5F5F5DDDDDDE2E2E2
            CFCFCFC8C8C8BFBFBFB7B7B7ADADADAAAAAAAAAAAAAAAAAAACACACAEAEAEAEAE
            AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEADADADACACACAAAAAAAAAAAAA9
            A9A9B1B1B1BEBEBEBEBEBEC1C1C1C1C1C1C1C1C1C0C0C0BEBEBEBCBCBCBBBBBB
            BABABAA9A9A9A9A9A9AFAFAFAEAEAEACACACABABABAAAAAAAAAAAAAAAAAAAAAA
            AAABABABAEAEAEAEAEAEAEAEAEACACACACACACAAAAAAA5A5A59D9D9D97979787
            87879C9C9C9D9D9D9D9D9D9B9B9B9898989E9E9EABABABADADADAEAEAEAEAEAE
            A8A8A89A9A9A9A9A9A9999999191918D8D8DA5A5A5AAAAAAAFAFAFACACACAAAA
            AAADADADAEAEAEABABABAFAFAFBCBCBCBBBBBBBBBBBBBBBBBBBCBCBCB0B0B0B0
            B0B0B0B0B0AFAFAFACACACACACACADADAD9A9A9A9E9E9EAFAFAFAEAEAEAEAEAE
            AAAAAAAAAAAAADADADAEAEAEAEAEAEAEAEAEB2B2B29D9D9D979797A0A0A0A3A3
            A3AAAAAAACACACBBBBBBC9C9C9CBCBCBDCDCDCE6E6E6F6F6F6F0F0F0DADADADB
            DBDBDBDBDBD0D0D0CDCDCDCECECECDCDCDCBCBCBDDDDDDE2E2E2E2E2E2E0E0E0
            DCDCDCDCDCDCE0E0E0C5C5C5BCBCBCBCBCBCBCBCBCC1C1C1BFBFBFAFAFAFBDBD
            BDC3C3C3B5B5B5B0B0B0AEAEAEAEAEAEAFAFAF9E9E9E9898989A9A9A9A9A9A9A
            9A9A9B9B9B9D9D9DACACACB0B0B0ADADADACACACACACACABABAB989898A8A8A8
            AEAEAEAEAEAEAEAEAEAEAEAEADADAD9999999B9B9B9B9B9B9B9B9B9B9B9B9B9B
            9B9C9C9CB1B1B1A3A3A39E9E9E9D9D9D9D9D9D9898989999999A9A9A99999999
            99999999999999999D9D9D9D9D9D9F9F9F9C9C9C9B9B9B9B9B9B9B9B9BABABAB
            AAAAAAABABABB1B1B1B3B3B3BABABAC0C0C0A7A7A7A9A9A9C2C2C2B3B3B3AAAA
            AAB5B5B5BBBBBBBBBBBBBBBBBBBEBEBEB6B6B6B1B1B1B0B0B0AEAEAEACACACAC
            ACACADADADA3A3A39A9A9A9B9B9B9B9B9B9999999999999999999A9A9A9B9B9B
            9C9C9C9D9D9D9B9B9B9B9B9B9B9B9B9A9A9A979797A2A2A2A8A8A8D2D2D2CCCC
            CCDCDCDCE6E6E6F0F0F0F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC4C4C4CDCDCDD3D3D3CACACABFBFBFC2C2
            C2C4C4C4AFAFAFA6A6A69B9B9B949494878787AFAFAFACACACADADAD9C9C9C8A
            8A8A8C8C8C8C8C8C8787878686868B8B8B8C8C8C8B8B8B8F8F8F959595AAAAAA
            AAAAAAAAAAAAA9A9A9A9A9A99C9C9C8787878A8A8A8888889A9A9A9393938585
            85949494AAAAAAB3B3B3BABABA757575868686A2A2A2A8A8A8B5B5B5AEAEAEAD
            ADADACACAC9F9F9F8989898C8C8C8A8A8A949494979797777777777777797979
            7676767272727373737373737676768585859E9E9EA1A1A1B1B1B18D8D8D8B8B
            8B8B8B8B8F8F8F9999999A9A9AA1A1A19191919292926868686F6F6F8D8D8D94
            9494B0B0B08E8E8E8989899C9C9CA9A9A9C1C1C1BDBDBDBBBBBBC4C4C4CDCDCD
            808080757575757575828282A3A3A39999999797979A9A9A9696968A8A8A8C8C
            8C888888A6A6A6AEAEAE8F8F8F8B8B8B8C8C8C8787877171719393939A9A9A97
            97979C9C9CABABABACACACBBBBBBC9C9C9D0D0D0B6B6B6B4B4B4C0C0C0C5C5C5
            E1E1E1CECECECBCBCBBBBBBBB8B8B8B8B8B8BCBCBCC9C9C9B3B3B3ADADADADAD
            ADB7B7B7EDEDEDE2E2E2CECECEBFBFBFBABABABCBCBCB2B2B27C7C7C8383838B
            8B8B8989898888888888888989898C8C8C8C8C8C8B8B8B9393939696968F8F8F
            8E8E8E9191918C8C8C6060607474747878789494949E9E9E9999999999999A9A
            9A9090908B8B8B8C8C8C8C8C8C8B8B8B8E8E8EA6A6A69F9F9F9B9B9B9999999A
            9A9AA2A2A2A1A1A18C8C8C747474656565828282909090A4A4A4A0A0A0848484
            9292929999999F9F9FA0A0A07979797C7C7C6060608888889E9E9E9999999A9A
            9AB6B6B6B3B3B3A1A1A18686867272728F8F8F9E9E9EADADADACACAC9C9C9C9F
            9F9F9D9D9DB1B1B1BDBDBDBDBDBDBEBEBEB5B5B58484845D5D5D7A7A7A8D8D8D
            A2A2A29F9F9F9898988E8E8E8787878B8B8B8D8D8D9E9E9E9C9C9C9999999393
            938E8E8E828282767676888888858585848484909090989898A2A2A2A9A9A9BA
            BABAB6B6B6E1E1E1DBDBDBD8D8D8E2E2E2EBEBEBFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFAEAEAE8D8D8D6161616262625C
            5C5C5D5D5D5E5E5E5252525C5C5C6969695656563737379F9F9F989898A4A4A4
            7676763D3D3D4444443E3E3E7171717373734141414343433E3E3E6B6B6BA7A7
            A7AAAAAAAAAAAAAAAAAAAAAAAAAFAFAF8181813C3C3C4444444343434A4A4A4E
            4E4E505050757575B9B9B95454545656563A3A3A4141414D4D4D4F4F4F4F4F4F
            8F8F8F8D8D8DAEAEAE8585853C3C3C444444373737B0B0B0C1C1C13E3E3E3939
            393737375151518787876666666969693A3A3A505050838383878787A4A4A449
            49494242423F3F3F606060ABABAB8F8F8F646464464646454545333333373737
            414141616161BDBDBD4D4D4D404040484848636363A7A7A7A8A8A8C6C6C66767
            675E5E5E3E3E3E3A3A3A3A3A3A3F3F3F4747478888889292929393937D7D7D3D
            3D3D4444443939399B9B9BB6B6B6525252414141444444424242313131898989
            9B9B9B9898989D9D9DABABABACACACBBBBBBC3C3C3CFCFCF6A6A6A5454545A5A
            5A737373DFDFDFCDCDCDCDCDCDBDBDBDBABABAB8B8B8BABABACBCBCB6B6B6B51
            51515353535B5B5B7F7F7F898989D6D6D6BFBFBFBABABABCBCBCB3B3B3848484
            7F7F7F3B3B3B5050505353535B5B5B5A5A5A4141414444443D3D3D7B7B7B9696
            966464645151514343434343433030303939393A3A3A525252636363A0A0A099
            99999595955A5A5A4040404444444444444343434444444A4A4A6F6F6F7F7F7F
            9292929595954444444C4C4C4444443939393232323E3E3E4444444C4C4C4E4E
            4E9898989696969F9F9F6767674848483A3A3A3C3C3C2C2C2C64646483838391
            91919999994D4D4D5454544C4C4C4141413838384545454B4B4BACACACA3A3A3
            4242424C4C4C454545898989B8B8B8A9A9A9ADADAD4D4D4D4040403030303C3C
            3C4444444C4C4C484848A4A4A48686867878785A5A5A3D3D3D8686867D7D7DA8
            A8A86C6C6C3F3F3F3E3E3E3434349191918888888686869191919999999D9D9D
            9F9F9FBEBEBEB8B8B8D6D6D6D8D8D8DBDBDBE5E5E5EDEDEDFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFF909090464646000000
            0000000000000000000000000000000909092929290E0E0E0000009898988D8D
            8DA2A2A251515100000000000000000053535358585800000000000000000044
            4444B6B6B6AAAAAAAAAAAAAAAAAAAAAAAAB3B3B3616161000000000000000000
            0000000000000F0F0F505050CACACA0000000000000000000000000000000000
            00000000787878757575B1B1B16A6A6A000000000000000000CECECEEEEEEE00
            00000000000000002828289898985151515555550000001C1C1C6F6F6F757575
            9F9F9F0101010000000000002F2F2FBDBDBD8484842B2B2B0000000000000000
            00000000000000252525C8C8C80707070000000000001D1D1D8F8F8F959595D7
            D7D70B0B0B0000000000000000000000000000000000007B7B7B9292928C8C8C
            626262000000000000000000909090BFBFBF1212120000000000000000000000
            007D7D7D9C9C9C9797979C9C9CABABABACACACBCBCBCBBBBBBCDCDCD19191900
            00000000001D1D1DDDDDDDCBCBCBCDCDCDBEBEBEB9B9B9B6B6B6B7B7B7CBCBCB
            1F1F1F000000000000000000141414323232DDDDDDBEBEBEB9B9B9BCBCBCB3B3
            B38484847272720000001313131B1B1B2C2C2C2A2A2A00000000000000000060
            60609494943939391313130000000000000000000000000000000E0E0E282828
            A7A7A79898988E8E8E2121210000000000000000000000000000000000004444
            446969698C8C8C91919100000000000000000000000000000000000000000000
            0000000000ACACAC999999A3A3A32F2F2F0000000000000000000000003B3B3B
            666666878787989898000000000000000000000000000000000000000000A8A8
            A8989898000000000000000000606060B2B2B29C9C9CA1A1A100000000000000
            0000000000000000000000000000B8B8B87D7D7D6363632424240000006F6F6F
            606060B6B6B64444440000000000000000009898988888888585859090909A9A
            9A979797949494BFBFBFB8B8B8CBCBCBD3D3D3DBDBDBE5E5E5EDEDEDFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFB5B5B55C5C
            5C0000000000000000002E2E2E2D2D2D0606064343438E8E8E45454500000049
            49494040406B6B6B373737000000191919383838787878838383000000000000
            000000484848B5B5B5AAAAAAAAAAAAAAAAAAAAAAAAB3B3B36565650000000000
            00000000393939404040484848666666A5A5A50000000000000000000F0F0F2F
            2F2F1A1A1A0000003A3A3A2F2F2FB0B0B06E6E6E000000000000000000959595
            ACACAC0404040000000000003030309D9D9D8080808C8C8C0303030E0E0E3636
            363838384C4C4C040404000000000000363636C4C4C48181810F0F0F01010100
            0000000000131313454545636363CECECE0F0F0F000000000000222222898989
            838383A0A0A00F0F0F0000002525252F2F2F3E3E3E2B2B2B0000003B3B3B3D3D
            3D939393767676000000000000000000929292BFBFBF19191900000000000000
            0000000000878787A6A6A6A1A1A1A3A3A3AAAAAAADADADBCBCBCC3C3C3D7D7D7
            232323000000000000272727E8E8E8CDCDCDCDCDCDBDBDBDBABABAB8B8B8B9B9
            B9CCCCCC2727270000000000000202020C0C0C2D2D2DE8E8E8C4C4C4C0C0C0BD
            BDBDB5B5B59999998484840000000C0C0C0F0F0F171717161616000000010101
            0606066E6E6EA0A0A03232320909090000000202021E1E1E0606060000000909
            091B1B1B939393898989A7A7A72D2D2D0000000000000101011212120E0E0E00
            00002222222C2C2C7C7C7C9696960000000000000000001010101A1A1A191919
            181818000000040404949494989898AFAFAF3838380000000000000101013B3B
            3B5C5C5C707070919191A3A3A30000000000000000002424243C3C3C4444444B
            4B4BB6B6B6ADADAD0000000000000000006B6B6BBEBEBE5B5B5B676767000000
            1818182F2F2F1111110000000000000000005151516E6E6E9494943B3B3B0000
            00686868585858BBBBBB4A4A4A00000000000000000098989886868691919195
            95959898989D9D9D9F9F9FBEBEBEB8B8B8D6D6D6D8D8D8DBDBDBE5E5E5EDEDED
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFD0
            D0D06868680000000000000000004F4F4F4D4D4D000000686868ECECEC737373
            0000000000000000003939391D1D1D0000003232327979799B9B9BACACAC0000
            000000000000004B4B4BBCBCBCACACACACACACAAAAAAAAAAAAB3B3B365656500
            0000000000000000777777767676757575737373808080000000000000000000
            1818185C5C5C333333000000000000000000ACACAC6D6D6D0000000000000000
            00636363727272030303000000000000333333A2A2A2B0B0B0C4C4C408080800
            0000000000000000000000000000000000000000383838CBCBCB7D7D7D000000
            000000000000000000242424939393989898D3D3D31010100000000000002121
            218383837474747272720B0B0B0000004B4B4B5F5F5F7C7C7C56565600000000
            0000000000999999868686000000000000000000949494C1C1C1191919000000
            0000000000000000008F8F8FAFAFAFABABABAAAAAAA7A7A7ACACACBDBDBDC9C9
            C9E0E0E0252525000000000000292929F9F9F9D0D0D0CCCCCCBDBDBDBABABABB
            BBBBBBBBBBCBCBCB242424000000000000000000000000212121FFFFFFCCCCCC
            C4C4C4BDBDBDB8B8B8AEAEAE9595950000000000000000000000000000000000
            00020202141414777777ABABAB27272700000000000004040439393902020200
            00000000000A0A0A898989818181BDBDBD313131000000000000000000141414
            1010100000000000000000006868689898980000000000000000001F1F1F3131
            312C2C2C282828000000040404808080979797B8B8B83B3B3B00000000000002
            02027E7E7E7373737070709B9B9BB1B1B1000000000000000000484848787878
            8E8E8E9F9F9FC3C3C3C0C0C0000000000000000000717171CACACA1E1E1E3030
            300000002F2F2F5C5C5C1F1F1F000000000000000000000000585858B8B8B847
            4747000000626262535353C4C4C44E4E4E000000000000000000989898858585
            9A9A9A979797959595A0A0A0A7A7A7BABABAB6B6B6E1E1E1DCDCDCDADADAE5E5
            E5EDEDEDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFFFFFF878787000000000000000000FFFFFFFFFFFFF2F2F2E0E0E0D6D6
            D66E6E6E000000000000000000000000000000000000565656D6D6D684848496
            96960000000000000000002F2F2F737373989898959595AAAAAAAAAAAAB3B3B3
            6565650000000000000000009B9B9BA4A4A4B4B4B49A9A9A7F7F7F0000000000
            005B5B5B797979AEAEAE656565000000000000000000C4C4C47A7A7A00000000
            00000000002C2C2C3333330000000000000000003A3A3ABBBBBB979797A7A7A7
            0606060000000000000000000000000000000000000000003A3A3AD3D3D38282
            820000000000000000002626265B5B5BCDCDCDBFBFBFCECECE10101000000000
            00001515155A5A5A404040161616010101000000686868909090D0D0D0919191
            000000000000000000999999858585000000000000000000818181AAAAAA1515
            150000000000000000000000008E8E8EAEAEAEA9A9A9AEAEAEBEBEBEBDBDBDBB
            BBBBC8C8C8DFDFDF2525250000000000001E1E1EB4B4B4C6C6C6D2D2D2BEBEBE
            BABABABBBBBBBABABACBCBCB4343432121210808080000000000001212128383
            83C5C5C5E0E0E0C3C3C3B7B7B7ACACAC93939300000000000000000000000000
            00000000000A0A0A5E5E5E898989A8A8A82828280000000000000B0B0B797979
            7B7B7B8A8A8A242424000000151515242424DCDCDC3838380000000000000E0E
            0ED4D4D4B1B1B1000000000000000000787878AAAAAA0000000000000000004B
            4B4B707070959595A0A0A0000000020202545454979797D0D0D0424242000000
            000000030303C3C3C3B0B0B0B2B2B29595958282820000000000000000007878
            78CDCDCDC1C1C1BEBEBEBDBDBDBEBEBE000000000000000000717171CACACA00
            00000000000000005E5E5EB2B2B25959591E1E1E000000000000000000969696
            FFFFFF7373730000002F2F2F2424249797973B3B3B0000000000000000009898
            98858585B0B0B0ACACACABABABB5B5B5BCBCBCD0D0D0CCCCCCDEDEDEDCDCDCDA
            DADAE5E5E5EDEDEDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFFFFFF848484000000000000000000FFFFFFFFFFFFF6F6F6E1
            E1E1D4D4D4616161000000000000000000000000000000000000525252CDCDCD
            7F7F7F919191000000000000000000383838888888ADADADAAAAAAC0C0C0B9B9
            B9B9B9B96464640000000000000000009E9E9EA3A3A3ACACAC9595957F7F7F00
            0000000000565656707070A1A1A1595959000000000000000000CDCDCD818181
            0000000000000000003737373F3F3F010101000000000000343434B7B7B79595
            95A5A5A5030303000000000000000000000000000000000000000000393939D0
            D0D08181810000000000000000001717174D4D4DC4C4C4B8B8B8CCCCCC101010
            0000000000001A1A1A6969694D4D4D1E1E1E030303000000636363888888C8C8
            C88B8B8B0000000000000000009A9A9A858585000000000000000000878787B2
            B2B21717170000000000000000000000008B8B8BAAAAAAA6A6A6ACACACBABABA
            BABABAB9B9B9C6C6C6DDDDDD242424000000000000222222C3C3C3C9C9C9D0D0
            D0BCBCBCB8B8B8B9B9B9B9B9B9C9C9C93B3B3B17171705050500000000000018
            18189F9F9FDEDEDEF9F9F9DBDBDBC8C8C8A8A8A8909090000000000000000000
            000000000000000000090909575757848484A4A4A42727270000000000000A0A
            0A7171716868687272721C1C1C000000242424313131E2E2E23A3A3A00000000
            00000B0B0BC0C0C09E9E9E0000000000000000007B7B7BAEAEAE000000000000
            0000004B4B4B7070708D8D8D9595950000000404046363639A9A9ACBCBCB4040
            40000000000000020202BABABAA7A7A7AAAAAA93939384848400000000000000
            0000737373C4C4C4BABABAB9B9B9BABABABCBCBC000000000000000000727272
            CCCCCC000000000000000000595959A9A9A94A4A4A0C0C0C0000000000000000
            00909090FFFFFF6E6E6E0000003A3A3A2F2F2FA6A6A642424200000000000000
            00009E9E9E8B8B8BACACACA7A7A7A6A6A6B1B1B1B7B7B7CCCCCCC8C8C8DEDEDE
            DADADAD8D8D8E2E2E2EBEBEBFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFFFFFF848484000000000000000000000000000000
            000000575757ECECECE1E1E1FCFCFC0000000000000000000000000000005252
            52C6C6C6C0C0C0D6D6D600000000000000000000000000000000000000000000
            00002525258181816B6B6B6262620000000000004C4C4C7A7A7AC7C7C7A0A0A0
            7B7B7B000000000000272727646464CECECE9A9A9A5F5F5F0101010000005151
            513232320000000000000000000000000000000000000E0E0E3A3A3A6B6B6BD3
            D3D3C1C1C1D1D1D12525250F0F0F0000004D4D4DFFFFFF101010000000000000
            3F3F3FE6E6E68E8E8E000000000000000000888888AAAAAAD2D2D2CDCDCDE2E2
            E21010100000000000000000000000000000001E1E1E0202020000007C7C7C9D
            9D9DC5C5C58888880000000000000000009292927E7E7E000000000000000000
            5757577272720C0C0C000000000000000000000000AFAFAFD9D9D9BFBFBFBFBF
            BFCECECECDCDCDCBCBCBDADADAF3F3F3282828000000000000111111626262CD
            CDCDEDEDEDD3D3D3CCCCCCC6C6C6C7C7C7D8D8D86F6F6F5A5A5A121212000000
            0000000000000000000000000000000000000C0C0CF0F0F0B9B9B90000000000
            000000000000000000000000000505055A5A5AA7A7A7D8D8D835353500000000
            00000C0C0C828282AFAFAFD5D5D5373737000000000000050505888888212121
            0000000000000D0D0DD2D2D2BBBBBB8383832828280000004E4E4E6E6E6E0000
            000000000000001F1F1F292929777777969696000000000000000000878787EE
            EEEE4B4B4B000000000000020202D2D2D2BCBCBCBEBEBEA6A6A6959595000000
            000000000000737373C4C4C4C1C1C1C8C8C8D0D0D0D2D2D20000000000000000
            00646464B3B3B30000000000000000005A5A5AA2A2A2A1A1A1ACACAC00000000
            0000000000939393FFFFFF7171710000000000000000003535350F0F0F000000
            0000000000005A5A5A474747C7C7C7BBBBBBBABABAC5C5C5CCCCCCE0E0E0DEDE
            DED9D9D9E5E5E5F0F0F0F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFF8484840000000000000000000000
            00000000000000686868F3F3F3D8D8D8E2E2E200000000000000000000000000
            0000565656D1D1D1C0C0C0D7D7D70000000000000000001414143535352A2A2A
            2F2F2F0000001818183C3C3C5353538989890000000000003C3C3C747474CCCC
            CCACACAC9999990000000000000F0F0F575757D1D1D19E9E9E6A6A6A00000000
            00002B2B2B2121210E0E0E0A0A0A000000000000000000555555414141111111
            3030305A5A5AACACACB9B9B9696969404040000000313131B5B5B50909090000
            00000000414141EEEEEE939393000000000000000000515151818181DDDDDDD4
            D4D4E8E8E82222220D0D0D0101010000000000001818186D6D6D0A0A0A000000
            4E4E4E7A7A7AD3D3D39D9D9D2121210505050000008585857979790B0B0B1010
            100000002B2B2B3636361E1E1E1313130000000000000000009C9C9CBFBFBFC4
            C4C4CACACAD5D5D5D4D4D4D3D3D3DADADAF1F1F1282828000000000000090909
            2F2F2F777777838383C4C4C4D5D5D5C9C9C9CBCBCBDADADA9191918888881B1B
            1B0000000000001313139696961D1D1D000000000000141414ACACAC84848400
            00000000000000004D4D4D6363632E2E2E313131202020757575A0A0A0262626
            000000000000070707515151A4A4A4D8D8D83737370000000000000808088282
            822020200000000000000C0C0CC5C5C5B0B0B09898982D2D2D00000039393952
            52520909090F0F0F0000001010100D0D0D888888BCBCBC000000000000000000
            757575CACACA3F3F3F000000000000020202E2E2E2C6C6C6C4C4C4BBBBBBB2B2
            B20000000000000000007E7E7ED7D7D7CACACAC9C9C9CECECED0D0D000000000
            0000000000717171CACACA0707071A1A1A000000545454959595A5A5A5BBBBBB
            050505181818000000787878EEEEEE5C5C5C0000000000000000001A1A1A2727
            273737371616160000004B4B4B383838DCDCDCC7C7C7C1C1C1CCCCCCD4D4D4DD
            DDDDDADADAE5E5E5E9E9E9EDEDEDF6F6F6FEFEFEFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFF80808000000000000000
            00000000000000000000005B5B5BFBFBFBDDDDDDE5E5E5000000000000000000
            000000000000656565F5F5F5C6C6C6DDDDDD0000000000000000002E2E2E7676
            765454545E5E5E000000000000000000383838B3B3B30000000000002B2B2B6D
            6D6DD2D2D2B8B8B8B2B2B20000000000000000004A4A4ADADADAAAAAAA7F7F7F
            0000000000000000000000001B1B1B0F0F0F000000000000000000ADADAD7070
            70000000000000000000A2A2A2AFAFAFADADAD6F6F6F0000002222227F7F7F06
            0606000000000000424242F4F4F4989898000000000000000000292929656565
            E8E8E8DADADAEEEEEE2D2D2D1A1A1A020202000000000000282828B4B4B41010
            100000002727275E5E5EE4E4E4B5B5B55D5D5D0C0C0C00000078787873737321
            21211F1F1F0000000000000000002B2B2B282828000000000000000000909090
            ADADADCCCCCCD5D5D5DDDDDDDCDCDCDDDDDDDADADAEEEEEE2727270000000000
            00000000000000242424202020B8B8B8DEDEDECCCCCCCFCFCFDEDEDEB3B3B3B6
            B6B6232323000000000000292929FFFFFF3E3E3E0000000000000E0E0E797979
            5C5C5C000000000000000000A9A9A9D4D4D45151514E4E4E0000004E4E4E7A7A
            7A1919190000000000000404042828289F9F9FE2E2E239393900000000000007
            07077474741818180000000000000C0C0CBCBCBCACACACC3C3C3393939000000
            2222223131311919191B1B1B000000000000000000979797E2E2E20000000000
            00000000656565AFAFAF363636000000000000040404FFFFFFD6D6D6CACACAD1
            D1D1D0D0D0000000000000000000929292F8F8F8D7D7D7C7C7C7CCCCCCCECECE
            000000000000000000818181E5E5E51313132727270000005858589A9A9AB7B7
            B7D8D8D82121213535350000005D5D5DB9B9B946464600000000000000000000
            00003636367272722D2D2D0000003C3C3C282828F7F7F7D5D5D5C6C6C6D1D1D1
            DBDBDBD9D9D9D7D7D7F1F1F1EDEDEDEBEBEBF5F5F5FEFEFEFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFA0A0A02F2F2F
            1E1E1E000000B9B9B9A0A0A0FFFFFFFFFFFFF0F0F0D3D3D3C6C6C60000000000
            00000000000000000000000000000000D8D8D8E6E6E600000000000000000011
            11112121218D8D8D999999000000000000000000565656F8F8F8000000000000
            0000004D4D4DDBDBDBCCCCCCE0E0E0000000000000000000454545CBCBCBA1A1
            A17E7E7E0000000000003030305151518B8B8B535353000000000000000000FF
            FFFFB1B1B10000000000000000004949493E3E3EE1E1E1999999000000000000
            0000000000000000000000004D4D4DFFFFFFB0B0B00000000000000000000000
            00414141FFFFFFF0F0F0FFFFFF6969696161610909090000000000003E3E3EFF
            FFFF1A1A1A0000000000002A2A2ACECECE9292921D1D1D040404000000777777
            8080805858584444440000000000000000004E4E4E4747470000000000000000
            006F6F6F7F7F7FCECECEE0E0E0DFDFDFDEDEDEDADADAEDEDEDFFFFFF29292904
            04043F3F3F2D2D2D000000000000000000BBBBBBF1F1F1DCDCDCDEDEDEE0E0E0
            E1E1E1F6F6F6313131000000000000262626FFFFFF3A3A3A0000000000000000
            000000000000002A2A2A0808080000006C6C6CABABABFFFFFFEFEFEF00000000
            0000000000262626353535000000000000000000A0A0A0FDFDFD404040000000
            0000000606066161614141413C3C3C0E0E0E080808AAAAAA9494946060601D1D
            1D000000131313232323626262565656000000000000000000959595DEDEDE00
            00000000000000003E3E3E6C6C6C2121210000000000000000005A5A5AACACAC
            E3E3E3E3E3E3E0E0E0000000000000000000363636525252B5B5B5F8F8F8DEDE
            DEE1E1E11010100D0D0D0000004B4B4B878787D3D3D3D2D2D200000000000000
            00007A7A7AF3F3F30808081F1F1F000000606060BDBDBD5E5E5E1E1E1E000000
            000000000000585858B2B2B2484848000000000000000000CACACAD6D6D6F5F5
            F5F1F1F1F0F0F0F0F0F0F0F0F0EDEDEDF4F4F4FAFAFAFCFCFCFEFEFEFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFF9C9C
            9C2828281B1B1B000000B9B9B9A0A0A0FFFFFFFFFFFFFFFFFFE0E0E0CDCDCD00
            0000000000000000000000000000000000000000DBDBDBE7E7E7000000000000
            0000001717172E2E2E9292929E9E9E000000000000000000535353F2F2F20000
            00000000000000515151DDDDDDCCCCCCDDDDDD0000000000000000004B4B4BD9
            D9D9ADADAD8686860101010000002626264646467E7E7E4B4B4B000000000000
            000000FFFFFFB2B2B2000000000000000000515151484848DEDEDE9393930000
            000000000000000000000000000000004C4C4CFFFFFFA8A8A800000000000000
            00000000004C4C4CFFFFFFFFFFFFFFFFFF5F5F5F515151060606000000000000
            3B3B3BFFFFFF181818000000000000353535E1E1E1A3A3A32828280707070000
            007777777D7D7D4D4D4D3B3B3B0000000000000000004545453F3F3F00000000
            0000000000767676898989CFCFCFDFDFDFDFDFDFDDDDDDD7D7D7EFEFEFFFFFFF
            2A2A2A020202393939292929000000000000000000C4C4C4F9F9F9DADADADDDD
            DDDFDFDFDBDBDBEEEEEE2A2A2A0000000000002A2A2AFFFFFF3F3F3F00000000
            00000000000000000000001D1D1D040404000000757575B5B5B5FFFFFFEFEFEF
            0000000000000000001F1F1F272727000000000000000000ABABABFFFFFF4444
            440000000000000505055D5D5D3838383131310A0A0A0B0B0BBFBFBFAAAAAA75
            75752424240000000C0C0C1818185555554A4A4A000000000000000000959595
            DEDEDE0000000000000000004747477B7B7B1F1F1F0000000000000202027575
            75BFBFBFF0F0F0F1F1F1ECECEC0000000000000000004747476D6D6DCDCDCDFF
            FFFFECECECEEEEEE040404080808000000525252919191BEBEBEBEBEBE000000
            000000000000898989FFFFFF0E0E0E2525250000005F5F5FBBBBBB5656561212
            12000000000000000000525252A7A7A7434343000000000000000000D4D4D4DA
            DADAF3F3F3F0F0F0F0F0F0EEEEEEEEEEEEEDEDEDF3F3F3F8F8F8FBFBFBFEFEFE
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF
            FFFF9999992222221818180000000000000000002020203030304545456D6D6D
            B0B0B0000000000000000000000000000000000000000000CECECED9D9D90000
            000000000000000000000000002929292D2D2D0000000000000000004D4D4DEB
            EBEB000000000000000000494949C7C7C7BABABACFCFCF000000000000000000
            1C1C1C5555554141413131310000000000005252526969699393935858580000
            000000000000009898986565650000000000000000004B4B4B434343CBCBCB9A
            9A9A272727212121000000000000000000000000494949FFFFFFD7D7D7AFAFAF
            0B0B0B0000000000000808082020203030305A5A5A949494ACACAC0F0F0F0000
            00000000414141FFFFFF1212120000000000000909092B2B2B1B1B1B00000000
            00000000007171718888889090906B6B6B0000000000000000007B7B7B6E6E6E
            0000000000000000004C4C4C505050C9C9C9E3E3E3DEDEDEE3E3E3F7F7F7C3C3
            C3CACACA202020020202313131222222000000000000000000686868989898E4
            E4E4DCDCDCDADADAE8E8E8FEFEFE5959592020200000000B0B0B6C6C6C131313
            0000000000000303031919192424247777771919190000004B4B4B6767675B5B
            5B4F4F4F0000000000000000006969698484840000000000000000004343436A
            6A6A1919190000000000000505059B9B9B6565655A5A5A1A1A1A000000000000
            0000000000000000000000006161619494949191918787870000000000000000
            009A9A9AE3E3E30000000000000000001010101515154F4F4F6B6B6B00000000
            00000000003636366363635050504A4A4A6E6E6E6B6B6B000000000000000000
            0000000A0A0A4F4F4F4A4A4A6E6E6E2828280000003C3C3C686868EFEFEFE8E8
            E8000000000000000000363636686868000000000000000000666666C6C6C68C
            8C8C6E6E6E000000000000000000686868D4D4D4545454000000000000000000
            919191B2B2B2DEDEDED9D9D9D7D7D7F0F0F0EEEEEEEDEDEDF6F6F6FFFFFFFEFE
            FEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFFFFFFB5B5B56262623636360000000000000000001B1B1B2121212929
            293939395555550000000000000000001A1A1A42424221212100000074747476
            76762828281717170000000000000000001818181A1A1A000000101010222222
            656565DFDFDF000000000000000000464646BFBFBFB2B2B2BDBDBD5353535D5D
            5D0000000E0E0E2E2E2E2323231B1B1B0000000000007272727F7F7F9797975C
            5C5C0000000000000000004D4D4D3333330000000D0D0D202020828282808080
            C9C9C9AFAFAF7373734F4F4F0000000000000000000000004A4A4AFFFFFFE2E2
            E2DADADA1D1D1D0E0E0E0000000707071A1A1A202020252525BDBDBDE3E3E313
            1313000000000000393939F2F2F26A6A6A6464640909090404041C1C1C131313
            0000000000000000009B9B9BB1B1B1A0A0A07878780000000000000000008989
            898989892B2B2B272727000000393939373737C4C4C4E1E1E1DDDDDDDFDFDFED
            EDED9F9F9F9B9B9B1818180808084A4A4A3A3A3A151515040404000000323232
            606060E8E8E8DADADAD9D9D9E0E0E0EFEFEF7B7B7B4848480000000707073C3C
            3C0B0B0B0000000000001111118A8A8A7D7D7D7E7E7E1C1C1C00000026262634
            34343434342C2C2C0000003232323D3D3D979797ADADAD4F4F4F4D4D4D000000
            2424243939390C0C0C0303034848484C4C4CBFBFBF9494949292922929290000
            000000000000000000000B0B0B0303037E7E7EB7B7B79B9B9B94949400000000
            0000000000868686C8C8C80000000000000000000A0A0A0505056E6E6EA3A3A3
            0000000F0F0F0000002020203636362C2C2C2A2A2AAEAEAE9F9F9F0101010606
            060000000909091010102C2C2C2828289C9C9C353535000000262626414141EF
            EFEFE1E1E13737371C1C1C0000001D1D1D383838000000000000000000727272
            DADADA9B9B9B7A7A7A000000000000000000707070E3E3E36A6A6A1111110000
            00000000606060A0A0A0E3E3E3DCDCDCD9D9D9F0F0F0EEEEEEEDEDEDF2F2F2F6
            F6F6FAFAFAFEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFFFFFFCDCDCD9B9B9B49494900000000000000000000000000
            0000000000000000000000000000000000000000303030888888404040000000
            1010100808085C5C5C2C2C2C0000000000000000000000000000000000001B1B
            1B5050507B7B7BD4D4D40000000000000000003E3E3EB6B6B6AAAAAAAAAAAAB4
            B4B4C9C9C90000000000000000000000000000000000000000009898989B9B9B
            9E9E9E5E5E5E0000000000000000000000000000000000001616164B4B4BB9B9
            B9BFBFBFC7C7C7C5C5C5C5C5C57D7D7D000000000000000000000000404040FF
            FFFFF2F2F2FFFFFF272727131313000000000000000000000000000000E8E8E8
            FFFFFF0C0C0C000000000000262626C4C4C4C1C1C1D7D7D70C0C0C0000000000
            00000000000000000000000000C2C2C2DCDCDCB5B5B584848400000000000000
            0000979797A5A5A56161614B4B4B0000001515150D0D0DBBBBBBE1E1E1DCDCDC
            DCDCDCE6E6E67171715F5F5F0202020101015A5A5A4949492828280000000000
            00000000151515EEEEEED9D9D9D9D9D9DBDBDBE3E3E39F9F9F6E6E6E00000000
            0000000000000000000000000000161616FFFFFFDADADA898989171717000000
            0000000000000000000000000000006363638A8A8ACCCCCCDFDFDFB4B4B4A0A0
            A0000000000000000000000000010101979797919191E9E9E9C8C8C8CECECE31
            31310000000000000000000000000B0B0B080808A0A0A0E5E5E5AAAAAAA2A2A2
            0000000000000000006C6C6CA8A8A80000000000000000000000000000008D8D
            8DE6E6E6030303151515000000000000000000000000000000FBFBFBDFDFDF04
            0404010101000000000000000000000000000000D0D0D03E3E3E000000020202
            0D0D0DF3F3F3E0E0E08C8C8C3333330000000000000000000000000000000000
            00787878F0F0F0ADADAD898989000000000000000000747474F6F6F67C7C7C25
            25250000000000001E1E1E858585E6E6E6DCDCDCD9D9D9F0F0F0EEEEEEEDEDED
            EDEDEDECECECF5F5F5FEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFFFFFFE5E5E5CCCCCCA7A7A77A7A7A7D7D7D7D7D7D
            7E7E7E7979797474747171716E6E6E6565656666665A5A5A7373739696967474
            744C4C4C5D5D5D5959597A7A7A6363634747474A4A4A4A4A4A4A4A4A4A4A4A48
            48485A5A5A727272878787B4B4B44747474949494646466C6C6CA5A5A59F9F9F
            9F9F9F9F9F9FA9A9A94343433E3E3E3838383939393838383B3B3B3232328484
            848888889090907272723C3C3C42424242424241414142424241414154545472
            7272A5A5A5A6A6A6BDBDBDBDBDBDBCBCBC9E9E9E5E5E5E6D6D6D6D6D6D6F6F6F
            9D9D9DFFFFFFF6F6F6FFFFFF9696968E8E8E8181817777776363636666665656
            56EFEFEFFFFFFF8A8A8A787878727272909090DDDDDDCCCCCCD4D4D47878786B
            6B6B6E6E6E6767675050506767675F5F5FC9C9C9D5D5D5C3C3C3AFAFAF666666
            6E6E6E656565BBBBBBC1C1C19F9F9F9595956767677F7F7F7B7B7BCDCDCDDDDD
            DDD6D6D6D8D8D8E2E2E2ABABABA4A4A47575757474749C9C9C9393937E7E7E6C
            6C6C6666666464647A7A7ADEDEDED3D3D3D2D2D2D3D3D3D7D7D7B5B5B59E9E9E
            5F5F5F666666676767676767676767646464767676DFDFDFCFCFCFADADAD7878
            78656565676767676767676767676767616161999999AAAAAACECECED9D9D9BC
            BCBCB6B6B66666665B5B5B525252646464737373B6B6B6B2B2B2D9D9D9C9C9C9
            CCCCCC8383836363636767676767676D6D6D797979777777BEBEBEDEDEDEC1C1
            C1BEBEBE5D5D5D6B6B6B676767A7A7A7C4C4C46363636C6C6C6666666A6A6A64
            6464B0B0B0D7D7D76D6D6D7777776565655B5B5B5252525F5F5F686868E1E1E1
            D4D4D46E6E6E6C6C6C666666595959515151676767646464CCCCCC8888886060
            606E6E6E737373DFDFDFD5D5D5A9A9A98282826363635C5C5C54545454545453
            5353676767ABABABE3E3E3C3C3C3B2B2B26464646C6C6C666666AAAAAAE8E8E8
            ADADAD8484846A6A6A6B6B6B858585B4B4B4E1E1E1DCDCDCD9D9D9F0F0F0EDED
            EDF7F7F7F2F2F2ECECECF6F6F6FEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF7F7F7F0F0F0EAEAEAD8D8D8DBDBDBC7C7C7BBBBBBAD
            ADADAEAEAEB1B1B1A2A2A2A2A2A2A0A0A0A0A0A0A1A1A1A2A2A2A2A2A2A0A0A0
            A0A0A0A0A0A09F9F9F9D9D9D9A9A9A9696969F9F9FA0A0A0A0A0A09C9C9C9595
            959696969797979797979999999292928888887777777979797878787D7D7D7D
            7D7D7474747979798686868888888E8E8E8E8E8E8E8E8E8E8E8E8F8F8F929292
            969696A1A1A19A9A9A969696B8B8B8BABABABDBDBDC7C7C7DADADAEBEBEBEAEA
            EAF8F8F8FCFCFCFFFFFFFEFEFEF9F9F9FFFFFFFFFFFFFFFFFFFBFBFBCECECED2
            D2D2CDCDCDFAFAFAFFFFFFFFFFFFFFFFFFFBFBFBF9F9F9F5F5F5E0E0E0DDDDDD
            E7E7E7EAEAEAECECECDBDBDBA7A7A7D9D9D9E1E1E1D4D4D4D2D2D2D3D3D3DADA
            DAEAEAEAE9E9E9E9E9E9E1E1E1DFDFDFE3E3E3E5E5E5E9E9E9E7E7E7E7E7E7DE
            DEDEDADADAD0D0D0D3D3D3DEDEDEE1E1E1E3E3E3E9E9E9E9E9E9E2E2E2E1E1E1
            D9D9D9DCDCDCDDDDDDDDDDDDDADADACFCFCFCECECECCCCCCCDCDCDCDCDCDCFCF
            CFD2D2D2D9D9D9DADADADDDDDDDDDDDDDDDDDDDDDDDDD9D9D9CCCCCCCFCFCFD5
            D5D5DADADADDDDDDDCDCDCDCDCDCDCDCDCDCDCDCDBDBDBD5D5D5D2D2D2D8D8D8
            D8D8D8CECECED3D3D3EBEBEBBFBFBFAAAAAAD8D8D8E8E8E8DFDFDFDDDDDDCDCD
            CDCFCFCFD0D0D0D7D7D7DBDBDBDBDBDBDCDCDCEBEBEBE8E8E8E7E7E7E1E1E1DE
            DEDEDDDDDDDEDEDEDADADAE6E6E6ECECECE2E2E2DEDEDEE8E8E8E8E8E8DADADA
            E3E3E3E9E9E9D8D8D8CFCFCFDADADADADADADBDBDBBFBFBFADADADCDCDCDDEDE
            DECFCFCFD0D0D0DBDBDBD9D9D9DCDCDCBCBCBCA9A9A9DFDFDFD9D9D9D0D0D0D6
            D6D6DADADAD9D9D9D7D7D7CBCBCBCCCCCCD0D0D0D5D5D5DBDBDBC1C1C1AEAEAE
            B0B0B0AEAEAEEDEDEDE0E0E0DADADADCDCDCDEDEDEE6E6E6E5E5E5ECECECE4E4
            E4DEDEDEE3E3E3E8E8E8EBEBEBEBEBEBE8E8E8E3E3E3DEDEDEDDDDDDD9D9D9F0
            F0F0ECECECFFFFFFF7F7F7ECECECF6F6F6FEFEFEFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFAFAFAFAFAFAFFFFFFF6F6F6EEEEEEE6E6E6DDDDDDC3C3C3C6C6C6BABABA
            B1B1B1A2A2A29B9B9B9393938585858686868181817B7B7B7171717272727070
            708282828282828282827B7B7B71717172727270707082828282828281818181
            81818282827B7B7B717171727272727272737373727272717171727272717171
            7676767676767676767373736F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F7070
            707373737A7A7A8787878585858484849494949B9B9BA8A8A8ADADADB8B8B8C9
            C9C9C8C8C8D9D9D9DFDFDFEDEDEDECECECEBEBEBFCFCFCFEFEFEFEFEFEFFFFFF
            FFFFFFFFFFFFFFFFFFFAFAFAF9F9F9EDEDEDECECECEEEEEEE8E8E8D8D8D8DBDB
            DBDCDCDCDCDCDCD9D9D9D1D1D1D3D3D3D8D8D8D4D4D4D2D2D2DBDBDBDDDDDDDD
            DDDDDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
            DCDCDCDCDCDCDCDCDCDDDDDDDADADACACACAD9D9D9DDDDDDCDCDCDC9C9C9CACA
            CACACACAC4C4C4C4C4C4C5C5C5BCBCBCBCBCBCC6C6C6C3C3C3BABABABABABAB7
            B7B7C2C2C2C5C5C5C5C5C5C5C5C5C4C4C4C4C4C4C4C4C4C5C5C5C3C3C3BABABA
            BBBBBBBABABAC1C1C1C4C4C4C9C9C9CBCBCBCBCBCBCCCCCCD4D4D4CFCFCFCECE
            CED6D6D6D9D9D9DADADADADADADADADAD2D2D2CFCFCFCCCCCCCACACACACACACA
            CACACBCBCBCECECECFCFCFCFCFCFCFCFCFCECECECFCFCFDDDDDDDCDCDCDDDDDD
            D0D0D0C9C9C9CACACACACACACBCBCBCACACACACACACACACACACACACACACACACA
            CACBCBCBCACACACACACACBCBCBCBCBCBCBCBCBCBCBCBCDCDCDC4C4C4BEBEBEBC
            BCBCBBBBBBC5C5C5C4C4C4C4C4C4C5C5C5C5C5C5C2C2C2BFBFBFB8B8B8B8B8B8
            B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8C6C6C6C4C4C4CCCCCCCCCCCCCCCCCCCECE
            CED0D0D0D0D0D0CFCFCFCACACACACACAC9C9C9D2D2D2D9D9D9DCDCDCDDDDDDC8
            C8C8CACACACACACACACACACACACACACACACACACACACACACACACAC9C9C9D3D3D3
            DADADAF0F0F0EEEEEEECECECEDEDEDEDEDEDF6F6F6FEFEFEFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFAFAFAFAFAFAFFFFFFF6F6F6EEEEEEE5E5E5DBDBDBC3C3C3C6C6
            C6BABABAB1B1B1A3A3A39D9D9D9797978888888888888686867F7F7F75757576
            7676747474888888878787878787808080777777777777747474868686868686
            9393779494759595758E8E6E8383648484658484658585658282628080608080
            607F7F608585658484658585667F7F6777776976766D74747473737373737372
            72727272727676767D7D7D8C8C8C8A8A8A8888889A9A9AA1A1A1AEAEAEB2B2B2
            BCBCBCCDCDCDCCCCCCDCDCDCE3E3E3F1F1F1EFEFEFECECECFDFDFDFFFFFFFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEF9F9F9F9F9F9EFEFEFEDEDEDEEEEEEE8E8E8DA
            DADADDDDDDDEDEDEDEDEDEDBDBDBD3D3D3D3D3D3D3D3D3D2D2D2D1D1D1DADADA
            DBDBDBDADADADBDBDBDCDCDCDBDBDBDADADADADADADADADADADADADADADADADA
            DADBDBDBDCDCDCDCDCDCDCDCDCDCDCDCD9D9D9CACACADBDBDBDFDFDFCFCFCFCC
            CCCCCECECECDCDCDC7C7C7C7C7C7C8C8C8BFBFBFBFBFBFC9C9C9C6C6C6BDBDBD
            BCBCBCBABABAC5C5C5C8C8C8C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C8C8C8C6C6
            C6BCBCBCBDBDBDBDBDBDC4C4C4C7C7C7CCCCCCCECECECDCDCDCECECED5D5D5D0
            D0D0CECECED7D7D7DADADAD9D9D9D9D9D9DADADACFCFCFCBCBCBCCCCCCCDCDCD
            CDCDCDCDCDCDCCCCCCCECECECFCFCFCFCFCFCECECECDCDCDCECECEDFDFDFDDDD
            DDDEDEDED2D2D2CBCBCBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCDCDCDCDCDCDCECECECECECECECECECECECECFCFCFC3C3C3
            BCBCBCBDBDBDBDBDBDC8C8C8C7C7C7C7C7C7C7C7C7C8C8C8C2C2C2BEBEBEBABA
            BABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBC9C9C9C7C7C7CECECECECECECE
            CECECECECECECECECCCCCCCCCCCCCCCCCCCBCBCBC9C9C9D2D2D2D9D9D9DCDCDC
            DCDCDCC8C8C8CBCBCBCCCCCCCCCCCCCCCCCCCECECECECECECCCCCCCCCCCCCBCB
            CBD5D5D5DCDCDCF2F2F2F0F0F0EEEEEEEEEEEEEDEDEDF6F6F6FEFEFEFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFF5F5F5ECF5F5EBF7F7EDD1
            D1C8D5D5CCC1C1B8B6B6AEA8A8A09A9A9288888086867F89898271716A73736C
            74746D74746D75756E64645D62625C73736C6D6D6764645D6B6B6575756E7272
            6B7F7F5D0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
            00FF0000FF0000FF0000FF0000FF0000FF0F0FE34848B2505093656552666661
            6464607272727272727171717070706E6E6E7272727171718686868686868282
            828F8F8FA9A9A9B8B8B8B7B7B7C8C8C8D0D0D0DADADADFDFDFEFEFEFEBEBEBE9
            E9E9FBFBFBFEFEFEFEFEFEFCFCFCFAFAFAFBFBFBFCFCFCEEEEEEEEEEEEEFEFEF
            E9E9E9DCDCDCCCCCCCC9C9C9CACACACACACACBCBCBCACACAC8C8C8DADADADDDD
            DDDBDBDBDEDEDEE6E6E6E2E2E2D9D9D9E3E3E3E5E5E5E5E5E5E5E5E5E5E5E5E5
            E5E5E6E6E6DCDCDCDADADADADADADBDBDBDCDCDCDCDCDCDFDFDFCECECEC9C9C9
            CCCCCCC9C9C9B7B7B7B8B8B8B5B5B5B5B5B5B5B5B5B6B6B6B6B6B6B5B5B5B6B6
            B6B7B7B7B7B7B7B7B7B7B5B5B5B4B4B4B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
            B5B5B5B5B5B6B6B6B6B6B6B5B5B5B9B9B9B9B9B9BABABABBBBBBBABABABDBDBD
            CCCCCCCACACACACACACCCCCCCECECEDADADAD9D9D9DADADACFCFCFCCCCCCC7C7
            C7C3C3C3BABABABBBBBBC6C6C6C9C9C9CBCBCBCDCDCDD0D0D0DFDFDFDDDDDDC7
            C7C7CCCCCCCDCDCDCCCCCCCBCBCBC4C4C4C5C5C5C5C5C5C5C5C5C4C4C4C9C9C9
            CCCCCCCCCCCCCBCBCBC5C5C5BEBEBEBABABABABABAB9B9B9B9B9B9B9B9B9B9B9
            B9BABABABBBBBBBBBBBBBCBCBCB5B5B5B5B5B5B4B4B4B7B7B7BBBBBBB0B0B0A9
            A9A9BDBDBDBBBBBBBCBCBCB9B9B9B6B6B6B9B9B9BCBCBCB5B5B5B5B5B5BABABA
            B9B9B9B9B9B9B9B9B9B8B8B8CFCFCFCDCDCDCBCBCBD3D3D3DBDBDBD9D9D9D8D8
            D8DCDCDCDCDCDCDFDFDFD3D3D3CBCBCBCCCCCCCCCCCCB6B6B6B6B6B6CFCFCFCD
            CDCDCDCDCDCBCBCBC8C8C8DBDBDBD7D7D7F0F0F0EEEEEEEDEDEDF6F6F6FEFEFE
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFFFFFED9D9FEADADFEB2B2FEB2B2FEB2B2FEAEAEFAA9A9F5A9A9F5
            AAAAF79292D89494DA8B8BD28585C97C7CBD7575B56C6CAA65659C67679E5D5D
            945D5D925B5B915C5C915C5C9255558B55558A5C5C9159598F55558A58588D5C
            5C915C5C916666850000F90000FA0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000F80C0CEB2424D82F2FC14545
            965E5E7C5D5D7C6B6B6C6D6D6D7272727272727474747575757575757E7E7E81
            8181878787909090A0A0A0B9B9B9BABABAC1C1C1CBCBCBDDDDDDE1E1E1EEEEEE
            F5F5F5F5F5F5FDFDFDFEFEFEFEFEFEFDFDFDFCFCFCFBFBFBFCFCFCEFEFEFEBEB
            EBE4E4E4E1E1E1DBDBDBCDCDCDCBCBCBCCCCCCCCCCCCCBCBCBCECECED3D3D3DB
            DBDBDBDBDBE3E3E3E6E6E6EAEAEAE8E8E8E4E4E4E8E8E8E9E9E9E9E9E9E9E9E9
            E9E9E9E9E9E9E9E9E9E5E5E5E4E4E4E5E5E5E3E3E3DBDBDBDBDBDBD8D8D8CECE
            CECCCCCCC6C6C6C2C2C2BABABAB9B9B9B0B0B0B5B5B5B7B7B7B3B3B3B1B1B1B0
            B0B0B0B0B0B0B0B0B0B0B0AFAFAFB7B7B7B8B8B8B6B6B6B6B6B6B1B1B1B2B2B2
            B1B1B1B5B5B5B6B6B6B1B1B1B2B2B2B7B7B7BABABABBBBBBBBBBBBBCBCBCBBBB
            BBBDBDBDCCCCCCD1D1D1D4D4D4D5D5D5D5D5D5D9D9D9D8D8D8D2D2D2CDCDCDCC
            CCCCC4C4C4BFBFBFBBBBBBBBBBBBC1C1C1C8C8C8CCCCCCCCCCCCCECECED8D8D8
            D7D7D7D4D4D4D0D0D0CFCFCFCDCDCDCBCBCBC5C5C5C5C5C5C0C0C0C6C6C6C9C9
            C9CBCBCBCBCBCBC8C8C8C8C8C8C1C1C1BEBEBEBDBDBDBABABAB8B8B8B3B3B3B4
            B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B1B1B1B2B2B2B7B7B7B4B4B4B4B4B4
            B3B3B3B1B1B1B4B4B4B4B4B4B2B2B2B1B1B1B0B0B0B1B1B1B2B2B2B0B0B0B0B0
            B0B2B2B2B2B2B2B1B1B1B7B7B7BBBBBBC4C4C4C3C3C3CCCCCCD4D4D4DBDBDBDA
            DADADADADADCDCDCDCDCDCDDDDDDD2D2D2CBCBCBCCCCCCCCCCCCB9B9B9B9B9B9
            C4C4C4C3C3C3C2C2C2C8C8C8CACACADEDEDED9D9D9F0F0F0EEEEEEEDEDEDF6F6
            F6FEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFFFFFEAFAFFE4F4FFE5F5FFE5F5FFE5C5CFE5D5DFE5D5D
            FF5D5DFF5F5FFF5050E65151E85252EA4E4EE24949D84848D44747D03C3CB43D
            3DB53B3BB73A3AB33737AF3737B03737B03838B03838B03737B03838B03838B0
            3838B03737B03737B03F3FA70000FF0000FF0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF0000FF0B
            0BF12626D65A5A8E5A5A906A6A5D6D6D63737373737373777777767676767676
            7474747A7A7A8989898E8E8E969696BABABABDBDBDB9B9B9C4C4C4DFDFDFE2E2
            E2EFEFEFFEFEFEFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF5
            F5F5EDEDEDDDDDDDDEDEDEDDDDDDD0D0D0CECECECFCFCFCFCFCFCECECED4D4D4
            E2E2E2E0E0E0DEDEDEF1F1F1F4F4F4F3F3F3F4F4F4F4F4F4F4F4F4F3F3F3F3F3
            F3F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F4F4F4F5F5F5EFEFEFDEDEDEDEDEDED5
            D5D5D0D0D0D0D0D0C2C2C2BCBCBCBDBDBDBABABAABABABB6B6B6BABABAB0B0B0
            ACACACAAAAAAAAAAAAAAAAAAAAAAAAA8A8A8B8B8B8BDBDBDB8B8B8B7B7B7ACAC
            ACADADADACACACB6B6B6B7B7B7ACACACAFAFAFB9B9B9BCBCBCBDBDBDBDBDBDBD
            BDBDBCBCBCBEBEBECFCFCFDCDCDCE1E1E1E1E1E1DFDFDFDDDDDDDBDBDBCDCDCD
            CECECED0D0D0C2C2C2BBBBBBBDBDBDBCBCBCBDBDBDCACACACFCFCFCECECECFCF
            CFD6D6D6D6D6D6E3E3E3D7D7D7D2D2D2D0D0D0CECECEC8C8C8C8C8C8BCBCBCCA
            CACAD0D0D0CFCFCFCECECEC7C7C7C8C8C8BDBDBDBFBFBFBFBFBFBABABAB8B8B8
            ACACACADADADADADADADADADADADADADADADADADADADADADADADADBABABAB1B1
            B1ACACACB5B5B5B9B9B9ACACACADADADA9A9A9AAAAAAAAAAAAAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAA8A8A8B5B5B5BDBDBDBBBBBBBBBBBBD0D0D0D9D9D9
            E1E1E1E0E0E0E0E0E0E0E0E0E0E0E0E1E1E1D6D6D6CECECECFCFCFD0D0D0BBBB
            BBBDBDBDBBBBBBBABABAB8B8B8C3C3C3CBCBCBDEDEDED9D9D9F0F0F0EEEEEEED
            EDEDF6F6F6FEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEC2C2FE7D7DFE4747FE4949FE6868FE66
            66FE6666FE6666FE6363FF7B7BF27A7AF27979F38484EF9292EA9090E88F8FE6
            8989D98787DAA4A4DAA3A3D9A1A1D7A2A2D7A2A2D7A2A2D7A2A2D7A2A2D7A2A2
            D7A2A2D7A2A2D7A2A2D7A2A2D7B4B4D30000FF0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FF0707F51313E82B2BC82B2BCA3030AF4545946E6E646A6A6A6D6D6D7373
            737373737575757878787F7F7F8484848E8E8EADADADAFAFAFB0B0B0BCBCBCD6
            D6D6D8D8D8E4E4E4F4F4F4F5F5F5FDFDFDFEFEFEFFFFFFEEEEEEC5C5C5CACACA
            CACACAC4C4C4C0C0C0B9B9B9BABABAB9B9B9B2B2B2B2B2B2B2B2B2B2B2B2B2B2
            B2B4B4B4BBBBBBBABABAB9B9B9C2C2C2C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C1C1C1B9B9B9
            B9B9B9B5B5B5B3B3B3B3B3B3ACACACAAAAAAAAAAAAA9A9A9A1A1A1A6A6A6A8A8
            A8A4A4A4A2A2A2A1A1A1A1A1A1A1A1A1A1A1A1A0A0A0A8A8A8A9A9A9A7A7A7A7
            A7A7A2A2A2A3A3A3A2A2A2A6A6A6A7A7A7A2A2A2A3A3A3A8A8A8A9A9A9AAAAAA
            AAAAAAAAAAAAA9A9A9AAAAAAB2B2B2B8B8B8BABABABABABABABABAB9B9B9B8B8
            B8B1B1B1B2B2B2B3B3B3ACACACA9A9A9AAAAAAA9A9A9AAAAAAB0B0B0B2B2B2B2
            B2B2B2B2B2B6B6B6B6B6B6BBBBBBB6B6B6B3B3B3B3B3B3B2B2B2AFAFAFAFAFAF
            A9A9A9B0B0B0B2B2B2B2B2B2B2B2B2AFAFAFAFAFAFAAAAAAABABABACACACA9A9
            A9A9A9A9A2A2A2A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A2A2A2A4A4A4A4A4A4AA
            AAAAA5A5A5A2A2A2A6A6A6A8A8A8A2A2A2A3A3A3A1A1A1A1A1A1A1A1A1A1A1A1
            A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A0A0A0A6A6A6AAAAAAA9A9A9A9A9A9B2B2
            B2B7B7B7BABABABABABABABABABABABABABABABBBBBBB5B5B5B2B2B2B2B2B2B2
            B2B2A9A9A9A8A8A8B3B3B3B7B7B7BABABAC4C4C4CBCBCBDEDEDED9D9D9F0F0F0
            EEEEEEEDEDEDF6F6F6FEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFECACAFE9595FE2B2BFE2F2FFE
            7777FE7272FE7272FE7272FE6C6CFEB3B3FFB0B0FFADADFFCACAFFF0F0FFEDED
            FFEDEDFFEDEDFFE7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FF0000FF0000FF0000FF0000FF2222BB7474426A6A5366
            665E7272717373737575757575757474747A7A7A878787A2A2A2A3A3A3A7A7A7
            B5B5B5CFCFCFD0D0D0DADADAEBEBEBEBEBEBFDFDFDFFFFFFFFFFFFDADADA7E7E
            7E9191919393939595959696969696969797979999999A9A9A9A9A9A9A9A9A9A
            9A9A9A9A9A999999969696969696969696969696959595959595959595949494
            9494949494949494949494949494949494949494949595959595959595959696
            969696969797979898989999999999999A9A9A9B9B9B9B9B9B9C9C9C9E9E9E9D
            9D9D9D9D9D9D9D9D9E9E9D9E9E9B9E9E9B9C9C9C9C9C9C9C9C9C9D9D9D9D9D9C
            9D9D9A9D9D9B9E9E9E9D9D9D9C9C9C9D9D9D9D9D9D9C9C9C9C9C9C9D9D9D9D9D
            9D9D9D9D9D9D9D9C9C9C9B9B9B9B9B9B9A9A9A98989898989898989898989898
            98989898989999999A9A9A9A9A9A9C9C9C9D9D9D9C9C9C9C9C9C9C9C9C9B9B9B
            9A9A9A9A9A9A9A9A9A9898989898989898989999999A9A9A9A9A9A9A9A9A9A9A
            9A9A9A9A9B9B9B9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9B9B9B9D9D9D9F
            9F9F9F9F9F9F9F9F9D9D9D9D9D9D9E9E9E9E9E9E9E9E9E9D9D9D9D9D9DA0A09D
            A0A09D9F9F9F9E9E9E9C9C9C9C9C9C9D9D9D9E9E9E9E9E9E9E9E9E9E9E9E9E9E
            9E9D9D9D9C9C9C9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9D9D9D9D9D9D9B9B9B9B
            9B9B9A9A9A9999999999999999979898959797979797979999999999999A9A9A
            9A9A9A9A9A9A949494929292A9A9A9B3B3B3BDBDBDC6C6C6CDCDCDDEDEDED9D9
            D9F0F0F0EEEEEEEDEDEDF6F6F6FEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFFFFFE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF0000FF0000FF
            1414E85A5A926060625E5E5D7474747676767676767575757070709595959797
            97A1A1A1AAAAAAB9B9B9C3C3C3DCDCDCECECECEEEEEEEBEBEBF0F0F0FFFFFFF2
            F2F2D4D4D49B9B9B9494948787878585858686867F7F7F707070717171717171
            7171717171717171717676768787878585858585858585858585858585858787
            878E8E8E8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8E8E8E87878785858585
            85858585858686868383837979797A7A7A7B7B7B7373737070706D6D6D6A6A6A
            5E5E5E5F5F5F5F5F5F5F5F5E5F5F645E5E7E6161796E6E6B7070707373736363
            625F5F645E5E7E5E5E765E5E5C6A6A6A6E6E6E6161616161616E6E6E6B6B6B62
            62626060605F5F5F6161616565657272727171717070707878787A7A7A7A7A7A
            7A7A7A7A7A7A7979797575756F6F6F6D6D6D6363636060606363636363636262
            626A6A6A6D6D6D7070707272727B7B7B7A7A7A7B7B7B74747471717171717171
            71717171717070706C6C6C7070707171717171717171717171717272726D6D6D
            6565656262626262626262626363636363635F5F5F5F5F5F5F5F5F6262616363
            635D5D7E5D5D7B62625F6868686E6E6E6767676262625F5F5F5F5F5F5F5F5F5F
            5F5F5E5E5E6767676D6D6D5E5E5E5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            73737371717171717171717171716F72728572729783837F8181817070707171
            717171717171716D6D6DB2B2B2ACACACAAAAAAA8A8A8A6A6A6B0B0B0B7B7B7E0
            E0E0D9D9D9F0F0F0EEEEEEEDEDEDF6F6F6FEFEFEFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF
            FFFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FF2121D467677F6E6E526C6C4D78787478787878787877777772727299
            99999A9A9AA3A3A3ACACACBCBCBCC5C5C5DEDEDEECECECEEEEEEEDEDEDF2F2F2
            FFFFFFEEEEEEC9C9C99090908A8A8A7E7E7E7D7D7D8080807A7A7A6D6D6D6F6F
            6F6F6F6F6F6F6F6F6F6F6E6E6E7373738383837F7F7F7F7F7F7E7E7E7E7E7E7D
            7D7D7F7F7F8686868585858585858686868686868585858585858686867F7F7F
            7D7D7D7D7D7D7D7D7D7D7D7D7B7B7B7373737575757777777070706E6E6E6D6D
            6D6A6A6A5F5F5F60606060606060605F5F5F645E5E7E6060786B6B696E6E6E71
            71716262615E5E635C5C7C5C5C745C5C5A6868686C6C6C5F5F5F6060606D6D6D
            6A6A6A6262626060605F5F5F6161616565657272727171716E6E6E7575757676
            767676767676767676767676767373736E6E6E6D6D6D64646462626265656564
            64646363636A6A6A6C6C6C6F6F6F6F6F6F7777777676767777777070706D6D6D
            6E6E6E6F6F6F7171717070706B6B6B6F6F6F6F6F6F6F6F6F6F6F6F7070707171
            716D6D6D6666666262626363636464646464646464646060606060605F5F5F62
            62626464645E5E7E5E5E7B62625F6868686D6D6D6666666161615D5D5D5D5D5D
            5D5D5D5D5D5D5C5C5C6565656B6B6B5C5C5C5D5D5D5D5D5D5E5E5E5E5E5E5F5F
            5F5F5F5F7373737171717070706F6F6F6F6F6D70708370709480807D7F7F7F6D
            6D6D7070707070707070706D6D6DB0B0B0AAAAAAAAAAAAA8A8A8A6A6A6B0B0B0
            B7B7B7E0E0E0D9D9D9F0F0F0EEEEEEEDEDEDF6F6F6FEFEFEFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFFFFFEFFFFFE6262FE3333FE0000FE0000FE0000FE3333FE3030
            FE2C2CFE4A4AFE6F6FFE6A6AFE6363FEA7A7FEA6A6FEA2A2FEC0C0FEE5E5FEE2
            E2FEE2E2FEE5E5FEDFDFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
            FFFFFEAFAFFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FF0000FF0000FF0000FF5D5D6D656561626262696969
            757575848484848484949494A1A1A1B8B8B8BCBCBCC8C8C8ECECECEFEFEFEDED
            EDF2F2F2FFFFFFFBFBFBF0F0F0F7F7F7FBFBFBE8E8E8E1E1E1D4D4D4CDCDCDB7
            B7B7B0B0B0B0B0B0B0B0B0B0B0B0AFAFAFB4B4B4C1C1C1D3D3D3D4D4D4DCDCDC
            E0E0E0E8E8E8E7E7E7E6E6E6E6E6E6E7E7E7DDDDDDDEDEDEE7E7E7E6E6E6E6E6
            E6E6E6E6E6E6E6E6E6E6E6E6E6E7E7E7E3E3E3D6D6D6C6C6C6C3C3C3B4B4B4AD
            ADAD9D9D9D9D9D9D9393939494949393939C9C9C9F9F9E9E9E9BA2A29FB3B3B3
            B0B0B0B1B1B1A7A7A7A6A6A5B3B3B0B2B2B0B2B2B2B1B1B1B1B1B1B2B2B2B0B0
            B0A5A5A5A4A4A49D9D9D9F9F9F9F9F9F9F9F9F9E9E9E9D9D9D9F9F9FB0B0B0BE
            BEBEC4C4C4C2C2C2C2C2C2C3C3C3C1C1C1AFAFAFA2A2A29E9E9E9191918B8B8B
            8E8E8E8F8F8F9393939C9C9C9F9F9FABABABB3B3B3C5C5C5C3C3C3C3C3C3C4C4
            C4C6C6C6B7B7B7AEAEAE9C9C9C9F9F9FA6A6A6AEAEAEB1B1B1B0B0B0B0B0B0A4
            A4A4A5A5A59D9D9D9E9E9E9F9F9F9898989393939494949494949393939B9B9B
            A0A0A0979797929292A0A09D9F9F9CA1A1A1A5A5A5A7A7A7A7A7A7A8A8A8B3B3
            B3B2B2B2B2B2B2B2B2B2B2B2B2B1B1B1B0B0B0B1B1B1B1B1B1AFAFAFA8A8A8A5
            A5A5A2A2A29E9E9E9D9D9D9D9D9DABABABAEAEAEB1B1B1B1B1AFB1B1ADAEAEB1
            AEAEB1B3B1B3ABA9ABA5A2A5A5A3A5A4A1A4ABABABAAAAAAA8A8A8B4B4B4BDBD
            BDC6C6C6CDCDCDDEDEDED9D9D9F0F0F0EDEDEDECECECF5F5F5FEFEFEFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEB0B0FE8383FE4444FE5858FE6464FE81
            81FE7F7FFE7E7EFE8A8AFE9999FEA4A4FEB0B0FECCCCFECBCBFECACAFED6D6FE
            E6E6FEE5E5FEE7E7FECACAFEC8C8FEE6E6FEE5E5FEE5E5FEE5E5FEE5E5FEE5E5
            FEE5E5FEF0F0FE8A8AFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000F70000FF61616C6969656C6C
            6C6F6F6F757575848484848484969696A0A0A0B1B1B1B8B8B8CBCBCBE3E3E3E4
            E4E4ECECECF0F0F0F9F9F9F7F7F7F5F5F5EEEEEEEFEFEFDEDEDED7D7D7CBCBCB
            C6C6C6B5B5B5AAAAAAAAAAAAA6A6A6A6A6A6A9A9A9AEAEAEBBBBBBC5C5C5C7C7
            C7CECECED1D1D1D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4CFCFCFD1D1D1D6D6D6D5
            D5D5D3D3D3DADADADCDCDCDCDCDCDCDCDCDCDCDCD7D7D7C6C6C6BDBDBDBCBCBC
            A9A9A9A1A1A19292929393938E8E8E8F8F8F8E8E8E9696969999999C9C9C9D9D
            9DA4A4A4A8A8A8AAAAAAA5A5A5A4A4A4AAAAAAAAAAAAAAAAAAAAAAAAA9A9A9AD
            ADADACACACA4A4A4A4A4A49C9C9C9999999898989999999999999898989A9A9A
            AAAAAAB2B2B2B4B4B4B9B9B9BABABAB4B4B4B3B3B3AAAAAA9D9D9D9999998D8D
            8D8787878989898989898B8B8B969696999999A4A4A4ABABABB6B6B6B5B5B5B5
            B5B5B3B3B3B3B3B3ACACACA9A9A9A1A1A1A2A2A2A0A0A0A4A4A4A5A5A5A8A8A8
            AAAAAAA5A5A5A5A5A59797979999999999999191918B8B8B8C8C8C8C8C8C8E8E
            8E9595959999999595959393939A9A9A9999999A9A9A9F9F9FA1A1A1A0A0A0A1
            A1A1ABABABAAAAAAA9A9A9ABABABACACACACACACACACACB3B3B3B3B3B3A7A7A7
            A5A5A5A5A5A59D9D9D9898989898989898989E9E9EA0A0A0A1A1A1A1A1A1A0A0
            A2ACAC95ACAB9696A99894A59492A39292A39290A290ACAAACAAAAAAA8A8A8B3
            B3B3BABABAC4C4C4CBCBCBDEDEDED9D9D9EFEFEFF2F2F2F6F6F6FAFAFAFEFEFE
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFED9D9FE9898FEC1C1FE
            E8E8FEE2E2FEE2E2FEE2E2FEE0E0FEDCDCFEF8F8FEFFFFFEFFFFFEFFFFFEFFFF
            FEFFFFFEFFFFFEFFFFFEFFFFFED6D6FED8D8FED5D5FED5D5FED5D5FED5D5FED5
            D5FED5D5FED5D5FEE0E0FE8080FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF6666656F
            6F617474747373737575758383838282829898989F9F9FA9A9A9B4B4B4CECECE
            D9D9D9D9D9D9ECECECEEEEEEF1F1F1F8F7F9FFFFFFFAF7FDFBF8FEE8E5ECE1DE
            E4D4D1D8CECCD1BCBCBCACACACABABABA1A1A1A3A3A3ABABABAFAFAFBCBCBCC2
            C2C2C2C2C2CBCBCBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDCDCD
            CFCFCFCECECECACACADBD9DBE0DDE0E4E1E7E6E3E9E7E4EAE0DDE3C9C6CDC5C1
            C8C5C2C8ACA9AFA29FA5928F959491979491979491979390979C999FA09DA3A6
            A3A9A5A2A9A4A0A7AEABB1B1AEB5B1AEB5B2AEB5B1AEB4B1AEB4B1AEB4B1AEB4
            B0ADB3B8B5BCB9B5BCB1AEB4B0ADB2A6A3A69C9B9C9898989999999999999898
            989A9A9AACACACB0AEB2B2B0B5BFBBC2C2BFC5B4B1B8B5B2B8B2AFB5A29FA39E
            9B9E8F8E8D878786868689868688898989949494989898A9A7ABB2AFB5B6B3B9
            B6B2B9B6B3B9B2AFB5B0ACB3ACABAEABABABACACACACACADA6A3AAA7A4AAA6A3
            A9AEABB1B1AEB5B2AFB5B1AEB49D9AA09F9CA2A09DA39592988E8B918F8B928F
            8C939491979B989E9F9CA39F9CA29F9CA2A19EA5A19EA4A19DA4A6A2A9A8A4AB
            A7A4AAA8A4ABB2AFB5B1AEB4B1ADB4B4B1B8B7B4BAB6B3BAB6B3BAC6C3C9C4C1
            C7A7A7A7A9A9A9AAAAAA9E9E9E9797979999999999999999999999999999999A
            989A9A989CB6B286B5B18884AB8C89AC8C89AC8C89AC8C86AC89AEAAAEAAAAAA
            A7A7A7B2B2B2B9B9B9C3C3C3CACACADCDCDCD8D8D8EFEFEFF6F6F6FFFFFFFEFE
            FEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFECFCFFE9595
            FE8282FE6262FE6666FE6666FE6666FE6666FE6464FE7171FE8080FE7F7FFE7F
            7FFE7F7FFE7F7FFE7F7FFE7F7FFE8181FE6464FE6565FE6666FE6666FE6666FE
            6666FE6666FE6666FE6666FE6B6BFE3D3DFE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF
            2E2EB24646957070666E6E6E7373737C7C7C7B7B7B8E8E8E989898AAAAAAB2B2
            B2C3C3C3DADADADADADAECECECEEEEEEF3F2F4D6DDCF90AB7590AA7791AA7788
            A26F859E6B7C97628EA07BBBB8BDA7A7A7A5A5A5A1A1A1A1A1A1A0A0A0A5A5A5
            B3B3B3B9B9B9B9B9B9C2C2C2C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3BFBF
            BFC0C0C0C5C5C5C4C4C4C3C1C3BFD0BFC3D8C690A97B859F6B87A16E849E6B7A
            936077915E78915E6C855267814E607946617A47617A47617A47607A47647E4B
            667F4C69824F69824F68824F6D86536E88556E88556E88556E88556E88556E88
            556E88556E8754718B58718B586D87536F8859778D799196919A999A95959594
            9494999999999999A4A3A68B9C7B849B6C7A9361768F5C708956708A576D8752
            72896B73897380868C86859491917A8F8F7E8484869292929B989D7A8C686D87
            52718A57718A57718A576F88556A854E919989A3A2A4A2A2A29FA09D637F476A
            83506983506D86536E88556E88556E8754657E4B667F4C66804D617A475E7744
            5E77445E7845607A47647D4A667F4C667F4C657F4C67804D67804D66804D6982
            4F6A83506983506A83506F88556E88556E8754708956718A57708A57708A5776
            8F5D748E5AB9B6BCB2B2B2B3B3B3A8A8A8A1A1A19898989999998F8F8F909090
            9190918690877F90816D883A7089415A86435C87435C87435C864255833AB3AE
            B6A8A8A8B2B2B2BBBBBBC3C3C3CCCCCCD2D2D2E7E7E7E3E3E3EEEEEEF6F6F6FF
            FFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFECA
            CAFE8E8EFE3D3DFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FF0000FE1D1DC56E6E53696965727272747474737373838383939393AE
            AEAEAFAFAFB5B5B5D9D9D9DADADAECECECEEEEEEF5F3F7B3C3A4154E00275D00
            275D00285E00285E00245C004D7525BAB5BEA2A2A2A0A0A0A1A1A19F9F9F9696
            969C9C9CA9A9A9AFAFAFB0B0B0B9B9B9BBBBBBBBBBBBBBBBBBBCBCBCBCBCBCBE
            BEBEB3B3B3B5B5B5BEBEBEBDBDBDBEBABEA6CFA6ACDDB13E720F255B00285E00
            285F002A60002A60002A60002B61002C62002D63002D63002D63002D63002D63
            002C63002C62002C62002C62002C62002B61002B61002B61002B61002B61002B
            61002B61002B61002B61002B61002B61002A61003065034C79578690889B9A9B
            9090908F8F8F9B9B9B9A9A9A9E9AA2698C47598928376B03295F002B61002B61
            0029600045743B4D7A53717C908382A39C9C6798986F7D7D818E8E8E9D99A14B
            7126275F002B61002B61002B61002B6100235D007587649C9A9F9A999B939590
            1F5A002C61002C62002B61002B61002B61002B61002C62002C62002C62002D63
            002D63002D63002D63002D63002C63002C62002C62002C62002C62002C62002C
            62002C62002C62002C62002C62002B61002B61002B61002B61002B61002B6100
            2B6100275D00265C00DDD1E9C2BFC4BBBBBBB0B0B0AAAAAA9595959797978383
            8386868889878D76887B698B71255D002B61002D61002D61002D61002D610024
            5B00B6B0BCA5A5A5BDBDBDC4C4C4CBCBCBD2D2D2D9D9D9F1F1F1EFEFEFEBEBEB
            F5F5F5FFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFFFFFEFFFFFEDFDFFEA5A5FEACACFEACACFEA9A9FEC5C5FEE9E9FEE5E5
            FEDFDFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
            FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEF0F0FE
            B6B6FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FF1C1CDE5D5D9260608D73736E757575747474858585
            8D8D8D969696A8A8A8D0D0D0DADADADADADAECECECEEEEEEF5F3F7B7C6AA235A
            003366003366003366003366002E630054792EBBB6BFA3A3A3A0A0A09E9E9E9D
            9D9D9797979D9D9DABABABAEAEAEAEAEAEADADADADADADADADADACACACA8A8A8
            9F9F9F9D9D9D9E9E9E9C9C9C9696969A9A9AAEAEAE797579756B7A3D66113165
            0033660033660033660033660033660033660033660033660033660033660033
            6600336600336600336600336600336600336600336600336600336600336600
            336600336600336600336600336600336600336600336600326500255E008593
            76A7A5A99393938E8E8E8D8D8D8D8D8D95919A486E202A600031640033660033
            6600336600336600306400265F007D8B699F9D9F99999D99999D9C9C9C969696
            9D98A150742D2E64003366003366003366003366002B620075856598969B9695
            978F918C28610033660033660033660033660033660033660033660033660033
            6600336600336600336600336600336600336600336600336600336600336600
            3366003366003366003366003366003366003366003366003366003366003366
            00336600336600336600326500155100859D6ED8D6DBB9B9B9A8A8A8ACACACAD
            ADAD9595978E8E788D8966547223286000336600336600336600336600336600
            326500285F00CDC7D3BDBDBDB8B8B8CDCDCDDEDEDEE7E7E7F1F1F1EEEEEEECEC
            ECFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFFFFFECACAFE8585FEABABFEACACFEA9A9FEC5C5FEE9
            E9FEE5E5FEDFDFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
            FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
            FEF0F0FEB6B6FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FF2020D76A6A8168688173736E7575757474
            748585858D8D8D989898A9A9A9CECECEDADADADADADAECECECEEEEEEF5F3F7B7
            C6AA235A003366003366003366003366002E630054792EBAB6BFA3A3A3A1A1A1
            9F9F9F9D9D9D9797979C9C9CABABABAEAEAEAFAFAFAFAFAFAFAFAFAFAFAFAEAE
            AEAAAAAAA1A1A19F9F9FA1A1A1A0A0A09A9A9A9E9E9EB2B2B27F7F7F7A767F3E
            6913316500336600336600336600336600336600336600336600336600336600
            3366003366003366003366003366003366003366003366003366003366003366
            0033660033660033660033660033660033660033660033660033660033660029
            6000859379A6A4A89393938E8E8E8F8F8F929093A298AD4F732A2F6400336600
            3366003366003366003366003366002A6100858E7AA7A0AE9696969696969797
            979494949C98A04F742D2E64003366003366003366003366002B62007686669B
            989D98979991938E286100336600336600336600336600336600336600336600
            3366003366003366003366003366003366003366003366003366003366003366
            0033660033660033660033660033660033660033660033660033660033660033
            6600336600336600336600336600336600265C0096A786E9E0F2C0BDC3A7A7A7
            AAAAAAABABAB95959B949184978D775C76322E64003366003366003366003366
            00336600306300235B00CBC5D1BBBBBBB6B6B6CBCBCBDCDCDCE5E5E5EFEFEFEC
            ECECEAEAEAFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFFFFFE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FD0000FF1E1ECF7B7B6875
            75757474748585858D8D8D989898A9A9A9CFCFCFDADADADADADAECECECEEEEEE
            F4F2F6B7C6A92157003366003366003366003366002E6300557A2FBEBAC2A2A2
            A49F9FA299999B9A9A9DA0A0A2A2A2A4ABABADAFAFB2B0B0B2AFAFB2AEAEB1A9
            A9ABA9A9ACAAAAACABABAEADADB09B9B9C9797979999999898989A9A9A7B7B7B
            7B76803E69133165003366003366003366002F63002E62002D62002C63002D63
            002D63002C63002D63002E64002D63002C63002B60002B60002C62002B61002B
            61002B61002B62002A5F002A5E002A6000306400336600336600336600336600
            336600296000859379A6A4A89393938E8E8E88878B7A80761A56002E62003366
            00336600336600336600336600336600336600336600276000326700B8B3C0AC
            ACAEACACAC9D9D9D9F9AA351742D2E63003366003366003366003366002C6300
            6C7C5C8A888C87878882847F2962003366003366003366003366003366003265
            002D63002D63002D63002D63002D63002D63002D63002D63002C63002C62002C
            62002C62002C62002C6300275B002A5F002B62002B61002B6100295E00295E00
            295F002D6300306700326600336600336600336600336600285E001653007990
            62C2BCC8ACAAACAFACB08D8665537226235F002E640033660033660033660033
            66002D6100275B00437513538621C6C1CCB8B8B8D0D0D0D5D5D5DBDBDBE5E5E5
            EDEDEDFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFE3E3EFE4E4E
            FE3131FE3232FE3131FE3E3EFE4B4BFE6767FE6666FE6666FE6666FE6464FE70
            70FE8080FE7F7FFE7F7FFE7F7FFE7F7FFE7F7FFE7F7FFE7F7FFE7F7FFE7F7FFE
            7F7FFE7F7FFE7F7FFE7F7FFE7F7FFE7F7FFE8D8DFE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE2B2BFE8E8EFE5454FE0000FE0000FE0000FE0000FE0000FB0000FD2222CB
            73735F7575757474748585858D8D8D989898A6A6A6C4C4C4DADADADADADAECEC
            ECF0F0F0FEFCFFBDCCAF2258003366003366003366003366002D6200567B31C4
            C0CB9B9B8B9797849494829696849C9C899D9D8AA1A18EA3A390A3A390AAAA95
            AAAA95A8A893A8A893A9A994A2A28FA2A28D9A9A989797989393939595959C9C
            9C7B7B7B7B76803E69133165003366003366002F63004D7B2F52813A627F4965
            7D4B5D77445F7946657E4A5C754F597252637D4D66804C657E4C657E4C68824F
            6D86536E88556E88556E88556D86546F88567E9566426F153064003366003366
            00336600336600296000859379A7A5A89191918A8A888988777E8369285F0032
            65003366003366003366003366003366003366003366003366003064003D6C0C
            B4AFA2A9A995B4B4B6ACACACB3AFB7567A332D63003366003366003366003366
            002C63006B7B5B8A878C89888A83868129620033660033660033660033660032
            6500346602667C4F617A47617A475E78455D76435D76435D7744617A47647D4A
            667F4C667F4C667F4C657F4C667F4C6881516C85536E88556E87546E87547790
            5E768E5D849E6C5B7535425A123A62083266003366003366003366003366002E
            6300577B32748B5B92A59691A4935A732B456D16306500336600336600326400
            3265002F6400486D255C73456B8354748D5CC3C0C5B9B9B9C3C3C3D0D0D0DCDC
            DCE5E5E5EEEEEEF7F7F7F6F6F6F5F5F5FAFAFAFEFEFEFEFEFEFDFDFDFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFE8E
            8EFE9B9BFE6262FE6666FE6363FE8080FEA0A0FEE7E7FEE5E5FEDFDFFEDFDFFE
            DCDCFEF8F8FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
            FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE5C5CFEFFFFFEAFAFFE0000FE0000FE0000FE0000FE0000FE0000
            FF1F1FCD6A6A557373737272728585858D8D8D969696A2A2A2B9B9B9D9D9D9DA
            DADAEBEBEBF2F2F2FFFFFFC4D3B52259003366003366003366003366002D6200
            587D33CDC8D59D987D9993749A94769E9778A69F7FA59E7EA49E7DA49E7DA39C
            7CB2AC87B5AF89B5AE89B5AE89B6B08AA7A07FA49D799B9A969696978D8D8D91
            91919D9D9D7C7C7C7D78823F69133165003366003366002C61006B936576A07B
            989C9B9D98A08F8892938D969F9C9F8B87AC8380B19A97A6A09DA29E9BA19F9C
            A2A5A2A8AEABB2B1AEB5B1AEB4B0ADB4AEABB2B3AFB6D1C9D9537A2E2E630033
            6600336600336600336600296000859379A7A5A98E8E8F878782908F6A83885D
            2A62003366003366003366003366003366003366003366003366003366003064
            00406D0BC1B68FB4AF87BCBCC0BCBCBCC8C4CC5C80392D620033660033660033
            66003366002C63006A7A5889878889898A838681296200336600336600336600
            3366003165003567059D94A6958F9897909A918C948C89908D8A908D8A909491
            979B989E9F9CA39F9CA29F9CA29D9AA09D9AA1A8A5ABAEABB1B1AEB5B0ACB3AE
            ABB1C5C2C8C2BFC5E0DDE6837C67493C173D570B316600336600336600336600
            3366003366002C6100275C0081A78D7BA383265D003065003366003366003366
            00316300316300255D005F75478F89959491979A989DBFBFBFBBBBBBB7B7B7CC
            CCCCDEDEDEE7E7E7F1F1F1EDEDEDEDEDEDEAEAEAF4F4F4FFFFFFFEFEFEFDFDFD
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFFFFFEFFFFFE9494FA9C9CFB9F9FFE9C9CFE9F9FFE5757FE5252FE9494
            FE9393FE9292FE8F8FFE8C8CFE8C8CFE8686FEC8C8FEC6C6FEC5C5FEC5C5FEC5
            C5FEC5C5FEC5C5FEC5C5FEC5C5FEC5C5FEC5C5FEC5C5FEC5C5FED1D1FE7575FE
            4545FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE5757FEFFFFFEBCBCFE2E2EFE0303FE0000FE0000FE00
            00FE0000FF2525D17A7A66848484858585868686939393AEAEAEB0B0B0B8B8B8
            D9D9D9DADADAEBEBEBF2F2F2FFFFFFC3D2B42259003366003366003366003366
            002E630054782EC2B8CB366807245F00276000276000265F00265F00265F0026
            5F00265F00245E00245D00245D00245D00245D00255F001C5A0087908099979A
            8D8D8D9191919E9E9E6F6F6F6B66703C66103165003366003366002C61006891
            5F729C74939893949A9479A1797D9C7D878487888885878783929291979797A0
            A0A09F9F9F9E9E9EA7A7A7AAAAAAA9A9A9ADADADBEBEBEBCBCBCC7C2CB51792A
            2E6300336600336600336600336600296000859379A6A4A89494968787814A49
            1A4C52202F670033660033660033660033660033660033660033660033660033
            66003366002F63021B4F252E5E32E0DBE0C1C1C1C5C1C95B7F382D6200336600
            3366003366003366002D640060706778769C8B8A898386812962003366003366
            00336600336600316500366704A79FAD869D8679A179838F8388878887878788
            88888F8F8F959595999999989898989898AAAAAAA8A8A8A7A7A7A9A9A9A8A8A8
            B5B5B5BDBDBDBABABABABABAD0CCD0C2E0C5C2F7CB6A9C4D2C5F003366003366
            003366003366003366003366003265002A5F002B5F0033660033660033660033
            66003366003163002E62006E8E7A8594889E9C9E999999969696BFBFBFBBBBBB
            B9B9B9C3C3C3CACACAD1D1D1D8D8D8F0F0F0ECECECFFFFFFFFFFFFFEFEFEFEFE
            FEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFFFFFE8D8DFA9E9EFBACACFEACACFEB2B2FE7070FE6C
            6CFEAEAEFEACACFEACACFEACACFEACACFEA6A6FE9F9FFEE1E1FEDFDFFEDFDFFE
            DFDFFEDFDFFED9D9FED8D8FED2D2FED2D2FED2D2FED2D2FED2D2FED2D2FEDDDD
            FE6060FE2C2CFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE4343FEFFFFFEB0B0FE0F0FFE0000FE0000FE
            0000FE0000FE0000FF2525D07A7A63828282848484858585929292ACACACAEAE
            AEB6B6B6D9D9D9DADADAEBEBEBF2F2F2FFFFFFC3D2B422590033660033660033
            66003366002E630054782FC4BACD406D12306400336600336600336600336600
            3366003366003366003366003366003366003366003366003366002961008D95
            8A9C9AA18D8D8D9191919E9E9E7070706C67713C66103165003366003366002C
            61006E966A7AA3829F9FA5A0A0A784A68B89A18F938A9A928C99918B979E98A4
            A49EAAADA7B3ACA6B2ABA5B1B0ABB1B1ACB1ABAAABACACACBCBCBCBBBBBBC7C2
            CB51792A2E6300336600336600336600336600296000859379A6A4A89C98A292
            8C91554D2755562A2F67003366003366003366003165002861002A6200336600
            3366003366003366003264052957353D6643F1E6F7C5C3C7C3BFC75A7E372D62
            003366003366003366003366002D640060706678769C8B8A898386812A620033
            6600336600336600336600316500386707B3A4BF91A29885A78B8E9494938B99
            928C98938C999A94A0A19BA7A69FACA59FACA59FABB7B0BDB4AEBAABA7ABABA9
            ABA8A8A8B4B4B4BBBBBBBABABABABABAD0CCD0B8D6B8B2E6B55A8D371D52002E
            68002E6700336600336600336600336600336600336600336600336600336600
            336600336600326600245C00215B006187677E907E9C9A9C989898969696C1C1
            C1BDBDBDBCBCBCC5C5C5CCCCCCD4D4D4DADADAF0F0F0ECECECFFFFFFFEFEFEFE
            FEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFFFFFEFFFFFEA0A0FE4D4DFE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE2828FE2626FE1D1DFE1C1C
            FE1C1CFE1C1CFE1616FE5959FE5353FE9696FE9696FE9595FE9595FE9595FE95
            95FE9090FEDADAFEE1E1FEEBEBFED2D2FEB9B9FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE2D2DFE1A1AFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE4141
            FE3838FE0202FE0000FE0000FF1F1FD6686875818183848483848484929292AB
            ABABB5B5B5CFCFCFD9D9D9D9D9D9EBEBEBF2F2F2FFFFFFC3D1B4205600336600
            3366003366003366002E630053772EBFB6C93F6D123064003366003366003366
            003366003366003366003366003366003366003366003366003366003366002C
            64006B723B7D7B5A918F959291929F9F9F71716F6D68703C6610316500336600
            3366003366002B5E00295D00265D00255D00285C00285D00275F00275F00275F
            00255E00255D00245C00245B001B53005D8A516A996C9BA59BAFADAFBDBDBDBB
            BBBBC7C2CB51792A2E630033660033660033660033660029600086947AB0AAB6
            446C1B225A002E68002F67003366003366003366002A5F003461099B8EA78585
            85205C002F6300336600336600336600336700306500114E009BAB8AE5DCEB63
            86402C61003366003366003366003366002C63006D7D5A8C8A8B89888A838681
            285F00336400336600336600336600336600316500265F00285F00295F002860
            00286100286100286100276000266000265F00265F00265F00235D00245D007D
            A38396A596ABA9ABB4B4B4BCBCBCBABABABABABACDCDCDD9D5D9E6DDE6CDE8D2
            BCEFC4493D18554D282F68003366003366003366003366003366003366003366
            003366003366002B5F00215800B1A5BDA49EAA9E9A9E9A989A97979797979797
            9797A9A9A9A7A7A7A5A5A5BBBBBBCECECED5D5D5DBDBDBF1F1F1EDEDEDFFFFFF
            FFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFFFFFEE3E3FEF4F4FE6060FE4343FE1414FE1919
            FE1919FE1919FE1919FE1919FE1919FE1919FE1919FE1616FE3434FE3030FE4D
            4DFE4C4CFE4C4CFE4C4CFE4949FE6666FE6363FE8080FE7F7FFE7F7FFE7F7FFE
            7F7FFE7F7FFE7979FEB2B2FEB3B3FEB3B3FEA9A9FE9F9FFE4C4CFE4B4BFE4B4B
            FE5555FE6767FE6666FE6363FE7E7EFE7474FEE2E2FEE6E6FEE5E5FEE5E5FEF5
            F5FE5353FE5252FE0303FE0000FE0000FF2020D56969748383858585858E8E8E
            989898AAAAAAB4B4B4CCCCCCE3E3E3E4E4E4ECECECF2F2F2FFFFFFC3D1B42056
            003366003366003366003366002E630053772EC0B6C93F6D1230640033660033
            6600336600336600336600336600336600336600336600336600336600336600
            3366002C64006E75427D7F5F87998A8996899998986E6E796A657E3C66123165
            0033660033660033660032640032650032650032650032650032650032650032
            65003265003265003265003265003264002B5E00668F5B719B739DA69DADABAD
            B3B3B3B3B3B3C8C3CC51792A2E63003366003366003366003366002A61007C89
            70A09AA74A6F252E62003366003366003366003265002E62005676366B80579E
            9BA1969994839D6948741C2F6300336600336600336600336600285D0087A678
            BACEC05781332D62003366003366003366003366002C63006C7C5C8B888D8988
            8A83868129610033650033660033660033660033660033660033660033660033
            6600336600336600336600336600336600336600336600336600336600326500
            32650089968E9AA19AABAAABB2B2B2B9B9B9BBBBBBBABABACBCBCBD0D0D0D6D4
            D6C7D5C7BED6BF85826D8E8C79255B0D32640933660033660033660033660033
            66003366003366002F630052772F6C8554A7A4AAA1A1A1A1A1A1A1A1A1A1A1A1
            A1A1A1A1A1A1ABABABAAAAAAA8A8A8B7B7B7C3C3C3CCCCCCD2D2D2E7E7E7E2E2
            E2F8F8F8F6F6F6F5F5F5FAFAFAFEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFECECEFEE4E4FE2424FE3333FE39
            39FE3939FE3939FE3939FE3939FE3939FE3939FE3939FE3939FE3939FE3636FE
            3030FE7171FE6F6FFE6F6FFE6F6FFE6F6FFE6C6CFE6C6CFE6969FE6767FE6666
            FE6666FE6666FE6363FE5D5DFE9898FE9999FE9999FE9A9AFE9C9CFEA1A1FEA2
            A2FEA0A0FEB6B6FEDCDCFED8D8FED8D8FED5D5FED5D5FEC7C7FEC5C5FEC5C5FE
            C5C5FED0D0FE6C6CFE7272FE0505FE0000FE0000FF2020D56868748585878686
            859797979F9F9FA8A8A8B3B3B3CACACAECECECEFEFEFECECECF1F1F1FFFFFFC3
            D1B42057003366003366003366003366002E630053772DBFB5C8396A09286000
            2C62002C62002C62002C62002C62002B62002B61002E62003063003366003366
            003366003366002C64006E75437A815D7BA37E7F9B7F9390906B6B8468638D3B
            6615316600336600336600336600336600336600336600336600336600336600
            3366003366003366003366003366003366003366002D610067905B719B739EA6
            9EABAAABA8A8A8ACACACC8C4CD51792A2E63003366003366003366003366002B
            630076806B968C9F4A6E242F65003366003366003366002E6400245D007F8B74
            A39EA7ACACACAFAFB0E5DEED5D8238295E003265003366003366003366002B5F
            0071A36497C7A14E7F2A2F62003366003366003366003366002C63006C7C5C8A
            888D888789828580296200336600336600336600336600336600336600336600
            3366003366003366003366003366003366003366003366003366003366003366
            003265003265008F88959D9C9DABABABB0B0B0B6B6B6BBBBBBBABABACBCBCBCA
            CACACBCBCBCDCBCDCFCCCFC8C8CBCECCD11C4E26306115336600336600336600
            3366003366003366003366002A61007D906ABFB6C7A8A8A8A9A9A9AAAAAAAAAA
            AAAAAAAAAAAAAAABABABAAAAAAAAAAAAA8A8A8B2B2B2BABABAC3C3C3CBCBCBDC
            DCDCD8D8D8EFEFEFEDEDEDECECECF6F6F6FFFFFFFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFE7575FE8B8BFE1111FE
            1919FE1919FE1919FE1919FE1919FE1919FE1919FE1919FE1919FE1919FE1919
            FE1919FE1616FE3434FE3333FE3333FE3333FE3333FE3333FE3333FE3131FE3C
            3CFE4E4EFE4C4CFE4949FE6666FE6363FE7F7FFE7F7FFE7F7FFE7F7FFE7C7CFE
            9999FE9999FE9696FEABABFECFCFFECCCCFECCCCFECCCCFEC9C9FEE4E4FEE5E5
            FEE5E5FEE5E5FEF2F2FE6B6BFE6E6EFE0404FE0000FE0000FF2323D372726D8E
            8E8F909090979797A1A1A1B3B3B3BCBCBCD4D4D4ECECECEDEDEDF4F4F4F8F8F8
            FFFFFFC3D1B41F55003265003366003366003366002D6300557A30C4BDCB758C
            5F6D875366804D657F4C667F4C667F4C657E4B6C85526F875657813F4A792A30
            63003366003366003366002C64006E75427E81608C9E908D998D9997976D6D78
            68647C3B66123166003366003366003366003366003366003366003366003366
            003366003264003265003265003265003265003265003265002C6000668F5B70
            9A729EA69EABAAABA9A9A9ACACACC8C4CD51782A2D6100336500336600336600
            3366002F640053723362794C3D6A113165003366003366003065004C6C1D506A
            1F8D9380A6A5A7B3B3B3B5B5B5DCD8DE70955E497E31396C0E31630033660033
            66002F620051833064944E4072143164003366003366003366003366002B6200
            7283629492969291938B8E892861003366003366003366003366003366003366
            0033660033660033660033660033660033660033660033660033660033660033
            66003366003265003265008F89949C9C9CABABABACACACAFAFAFBCBCBCBABABA
            C2C2C2C8C8C8CDCDCDC7C7C7C3C3C3AAAAABB1AFB22157073264093366003366
            003366003366003366003366003366002F630053782E6C8553C4C1C7BBBBBBB1
            B1B1B2B2B2B3B3B3ADADADA9A9A9AAAAAAAAAAAAA9A9A9B2B2B2B9B9B9BEBEBE
            C1C1C1DFDFDFD9D9D9F0F0F0EEEEEEEDEDEDF2F2F2F5F5F5FFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFE2020FE3434
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE1A1AFE1616FE1010FE5252FE5353FE5050FE4F4FFE4F4FFE4F4F
            FE4A4AFE8B8BFE8D8DFE8989FEA1A1FEC9C9FEC5C5FEC5C5FEC5C5FEC0C0FEFE
            FEFEFFFFFEFFFFFEFFFFFEFFFFFE7171FE7474FE0505FE0000FE0000FF2525D0
            7A7A649797979A9A9A959595A2A2A2BBBBBBC4C4C4DDDDDDECECECECECECFEFE
            FEFFFFFFFFFFFFC2D0B41E52003165003366003366003366002D6200587D32C9
            C5CDB1AFB4B2AFB6A19EA49F9BA29F9CA29F9CA29E9AA1ADAAB0B5AEB881A086
            648E5A2D61003366003366003366002C64006D75428280639C9AA09998999E9E
            9E6D6D6C67626A3B65103166003366003366003366003366003366002F63002E
            62002E62002E62002C5F002D5F002D5F002D5F002D5F002D5F002D5F00275A00
            618C596B99719CA59EABAAABA9A9A9ADADADCBC6CF52782B2C60003364003366
            003366003366003366002F64002D63003165003366003366003366002D640065
            70377570469B9A8FACACAEBBBBBBBCBCBCDBD6DB7AA37C58935F3C70182F6100
            3366003366003366002F62002D60003164003366003366003366003366003366
            002A61007989699E9CA09B9A9C95979228600033660033660033660033660033
            66003266002D66002E67002E68002E68002E68002E68002E68002E68002E6800
            2E68002E68002E68002D67002E67008F89949C9C9CABABABA9A9A9A8A8A8BFBF
            BFBCBCBCB8B8B8C6C6C6D0D0D0C3C3C6BCBCC1A099A7A69EAD27600033660033
            66003366003366003366003366003366003366003366002C6100205900E4DEEA
            D2D2D2B7B7B7BABABABCBCBCB1B1B1A7A7A7AAAAAAAAAAAAA9A9A9B0B0B0B6B6
            B6B6B6B6B5B5B5E0E0E0D9D9D9F0F0F0EEEEEEEEEEEEECECECE8E8E8FFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFE00
            00FE0000FE0000FE0000FE0000FE1919FE3535FE7575FE6D6DFEAEAEFEACACFE
            ACACFEACACFEACACFEACACFEA6A6FEE7E7FEE5E5FEE2E2FEFCFCFEFFFFFEFFFF
            FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
            FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
            FFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFE3535FE2E2EFE0101FE0000FE0000
            FF2D2DD993937E999999979797A8A8A8B7B7B7D0D0D0D1D1D1DBDBDBECECECEE
            EEEEEBEBEBF0F0F0FFFFFFC3D2B42259003366003366003366003366002D6200
            577D32C8C4CCABABABABABAB9A9A9A9898989999999999999999999797979A97
            9A7B9D7D638D572D61003366003366003366002C64006D7541838266A7A7AAA1
            A1A19B9B9B7D7D7D7D78823F691331650033660033660033660033662F2F633B
            5683335E8B315D8A315D8A315D8A315D8A315D8A315D8A315D8A315D8A315D8A
            3158882B9096659E9870A7A59EAAAAABAAAAAAA9A9A9B2AEB74E74262E630033
            6600336600336600336600336600336600336600336600336600336600336600
            2860008E9C84B3B1BAB9B9BBBFBFBFCFCFCFCFCFCFDDDDDDF4F0F4FFFFFF6D8E
            492A5E0033660033660033660033660033660033660033660033660033660033
            66003366002A61007888689D9B9F9A999B949691286000336600336600336600
            3366003266003565026C603B5E58325953305A54305A54305A54305A54305A54
            305A54305A54305A54305A543059532F5A542F8B8B909C9C9CABABABAAAAAAA9
            A9A9A7A7A7A7A7A7BDBDBDB9B9B9BABABDADAC91A6A575175500255D00336600
            3366003366003366003366003366003366003366003366003366003265002B61
            00B3ADB9A3A3A3D3D3D3C7C7C7C0C0C0BEBEBEBDBDBDA8A8A8AAAAAAA8A8A8B3
            B3B3BBBBBBC5C5C5CDCDCDDEDEDED9D9D9F0F0F0EEEEEEEDEDEDF7F7F7FFFFFF
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FFFFFE0000FE0000FE0000FE0000FE0000FE0505FE2F2FFE7474FE6D6DFEAEAE
            FEACACFEACACFEACACFEACACFEACACFEA6A6FEE7E7FEE5E5FEE2E2FEFCFCFEFF
            FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
            FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
            FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE4444FE3B3BFE0303FE00
            00FE0000FF2C2CD891917C969696959595A6A6A6B5B5B5CECECECFCFCFD9D9D9
            ECECECEEEEEEEDEDEDF2F2F2FFFFFFC3D2B42259003366003366003366003366
            002D6200577C31C6C1CAA9A9A9A9A9A997979795959595959595959596969696
            96969A969A7B9C7D638D572D61003366003366003366002C64006D7541838165
            A5A5A89E9E9E9797977A7A7A7B76803E69133165003366003366003366002B5F
            23255A2B46771C4D7F194D801A4D801A4D801A4E811B4E811C4E811C4E811C4E
            811C4E811C497F1587925A979669A3A39AA8A8A9A7A7A7A7A7A7B2AEB74E7426
            2E63003366003366003366003366003366003366003366003366003366003366
            00326500235B00879578ABA9ADB4B4B4BBBBBBCBCBCBCBCBCBD9D9D9E8E8E8FE
            FAFF63863B245800336600336600336600336600336600336600336600336600
            3366003366003366002A610076866699979C96959790938E2860003366003366
            003366003366003266003363005B56244D4D1B4848184949194A4A194A4A194A
            4A194B4B1B4B4B1B4B4B1B4B4B1B4B4B1B4A4A1A4C4C1B86868B9A9A9AAAAAAA
            A8A8A8A7A7A7A7A7A7A7A7A7BABABABEBBBEC3BEC6BBB4A3B6AF8C245C003163
            0033660033660033660033660033660033660033660033660033660033660032
            65002C6100C6BAD3B6AFBCE4DEEACDCACFBCBCBCBABABAB9B9B9A3A3A3A5A5A5
            A6A6A6B2B2B2BABABAC4C4C4CBCBCBDEDEDED9D9D9F0F0F0EEEEEEEDEDEDF6F6
            F6FEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFFFFFE0000FE0000FE0000FE7777FEFFFFFEB5B5FE2B2BFE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE1010FE1212FE2222FE0000FE0000FE
            0000FE0000FE0000FF2B2BD78E8E79A8A8A8ABABABA7A7A7B3B3B3CCCCCCD7D7
            D7F3F3F3EDEDEDEDEDEDECECECF1F1F1FFFFFFC3D2B422590033660033660033
            66003366002D62005D8238E1D9E5C2BFC2C1BEC1BBB9BBBBB9BBBCB9BCB9B6B9
            AEABAEAFACAFB4ADB47FA083648E592D61003366003366003366002C64006C74
            41858466ACACB0AEAEAEC6C6C681818179747E3E68123165003366003364002A
            5C007AA67487B48BC8CACDD4CADAC1B9C7C3BAC8C4BCCAB9B1BFB6AEBCB6AEBC
            B6AEBCB6AEBCB6AEBCB6AEBCB0ACB5ADAAB2BCB9BDC0BEC0BCBCBCBCBCBCC8C3
            CC51792B2E630033660033660033660033660033660033660033660033660033
            6600326500376A0A53875EA1ADA3BDBBBDC8C8C8CFCFCFDEDEDEDEDEDEF2F2F2
            EEEEEEF8F4F889AF8E578E582D61003366003366003366003366003366003366
            00336600336600336600336600285F008C9D7CBDBBBFC1C0C2B6B9B4245C0033
            6600336600336600336600306400396A07D8CFE3CAC7CFCBC8D0C6C3CBC4C1C9
            C3C1C9C3C1C9B5B3BAB7B4BCB7B4BCB6B4BCB6B3BBB6B4BCB6B4BBAFADAFB4B3
            B4B4B4B4B9B9B9BCBCBCC0C0C3BFBFC2DAD6DC9FBCA27EB085497D2A215A0033
            66003366003366003366003366002B6000275B00285E00285E002F6200316400
            336600336600326500245D00245E00104A008DA376F5EFFBDCDBDFD1D1D4CFCF
            CFD1D1D1B8B8B8B9B9B9B7B7B7C2C2C2CACACADCDCDCD8D8D8F0F0F0EDEDEDEC
            ECECF5F5F5FEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFFFFFE2323FE2828FE7D7DFEB8B8FEFFFFFEA4A4FE2828FE
            1818FE1616FE3434FE3333FE3333FE3333FE3333FE3333FE3030FE4D4DFE4C4C
            FE4C4CFE4C4CFE4949FE6666FE6666FE6666FE6666FE6666FE6666FE7171FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE7D7DFE8080FE
            7F7FFE7F7FFE7F7FFE7F7FFE7F7FFE7D7DFE8787FEA0A0FE6D6DFE1212FE0101
            FE0000FE0000FE0000FE0000FF2E2EDA989884B0B0B0B3B3B3B1B1B1BCBCBCD5
            D5D5DCDCDCEFEFEFF5F5F5F6F6F6F5F5F5F8F8F8FFFFFFC3D2B4225900336600
            3366003366003365002D6100527E2EB7CCBB9EB49E9DB39D9DAF9D9CAD9C97AD
            9796AB9692A79292A79296A9996E945B59853A2E62003366003366003366002B
            63007279448F8E6EC0C0C3BDBDBDCACACA8A8A8A847F89406A15306500336600
            3365002C5F006696496E9F549EBA99A8BEA89FB69F9EB69E9AAF9A96AB9694AA
            9495AA9595AA9595AA9595AA9595AA9595AA9594AA9498AE98A1B3A1C7C5C7C3
            C3C3D0CBD5537B2C2D6200336600336600336600336600336600336600336600
            3366003366003063003E6D1097AE9DBCC2BCCCCCCCD1D1D1D5D5D5E6E6E6E5E5
            E5EEEEEEF3F3F3FCFAFCC7D8C8A3BF9E255A0032640033660033660033660033
            6600336600336600336600336600336600275E0093A383C7C4C9C6C5C7BCBEBA
            235B00336600336600336600336600316400366804AFC3B4A3BAA3A3BBA39BB1
            9B97AC979EAE9E9DAE9D97A89794A79491A69197AD979AB19A97A89798A99894
            A794B1B7B1C2C1C2C3C3C3C4C4C49C9C83A0A089AFAC99799560588940427319
            3064003366003366003366003366002D610063873F8BA37488A16E8AA272467C
            103D700A3164003366003366003366003366002B5F0060843C89A27199A481A7
            A68ED9D9DBD5D5D5CACACACBCBCBCACACAD0D0D0D2D2D2E7E7E7E3E3E3EEEEEE
            F2F2F2F6F6F6FAFAFAFEFEFEFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFFFFFE5757FE4F4FFEFFFFFEFFFFFEFFFFFEACAC
            FE2828FE3939FE3333FE7575FE7373FE7272FE7272FE7272FE7272FE6C6CFEAB
            ABFEA9A9FEA8A8FEA8A8FEA3A3FEE3E3FEE2E2FEDFDFFEDFDFFEDFDFFEDFDFFE
            F6F6FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FEFFFF
            FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEB7B7FE00
            00FE0000FE0000FE0000FE0000FF0000FF2C2CE1A1A18DB9B9B9BBBBBBB8B8B8
            C3C3C3DDDDDDE1E1E1EDEDEDFDFDFDFFFFFFFFFFFFFEFEFEFFFFFFC3D2B42259
            003366003366003366003364002E60004A7C2795C59C82B08580AE8387AC8B85
            AA887AA77E7CA87F7CA87F7CA87F7FAB875F8C374F7E1E2F6300336600336600
            3366002A6200787F48999875D3D3D7CCCCCCD2D2D29393938E8993416B173065
            003366003366002E61005C8F2763972985B77E8EBE938EBE918BBC8E80AD8382
            AF8582AF8582AF8582AF8582AF8582AF8582AF8582AF8582AF857AA87D87AD8A
            D3CFD3CCCCCCD9D4DD557D2E2D62003366003366003366003366003366003366
            00336600336600316500255B003E6B0EDFD7E4D9D9D9DDDDDDDBDBDBDDDDDDF1
            F1F1EEEEEEEBEBEBFAFAFAFFFFFFFFFFFFF2F4ED134A00295B00336600336600
            336600336600336600336600336600336600336600265D009BAB8BD2CFD4CDCC
            CEC4C6C1225B0033660033660033660033660031640036680497C79F8DBE908E
            BF9181B0857BA67E89AB8C88AB8B89AC8D80A9837AA77E88B68B8EBF9188AA8B
            88AC8C83A986B3BFB4CFCECFCCCCCDCDCDCD7F7C4B8784588C865D516E1D2960
            003064003366003366003366003366002C61001B550094A980EEE8F4E6E2E9EA
            E5F054911842760C2A5D003063003366003366003366003366002C6100215A00
            5A7129847E51E6E6EBDBDBDBDCDCDCDCDCDCDCDCDCDCDCDCD9D9D9F1F1F1EFEF
            EFEDEDEDF6F6F6FFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEACACFEA8A8FEFFFFFED0D0FE98
            98FE6060FE1010FE1919FE1616FE3434FE3333FE3333FE3333FE3333FE3333FE
            2D2DFE6868FE6666FE6666FE6666FE6363FE8080FE7C7CFE9999FE9999FE9999
            FE9999FEA1A1FE4B4BFE4B4BFE4B4BFE5555FE6969FE5C5CFE4747FE6666FE58
            58FEE3E3FEE6E6FEE3E3FEEDEDFEFFFFFEFEFEFEFEFEFEFFFFFEDBDBFE9797FE
            6464FE0000FE0000FE0000FE0000FF1515EF4141CF6060C1A5A59AC1C1C1C3C3
            C3CACACAD3D3D3E6E6E6E7E7E7EDEDEDFCFCFCFEFEFEFEFEFEFEFEFEFFFFFFC3
            D2B42259003366003366003366003365003063003E701263934C5A894059883F
            5C87425B864156853D57853D57853D57853D58874148781B41720F3164003366
            003366003366002A6200777E489A9877DADADED4D4D4DEDEDE9C9C9C97929C42
            6D17306400336600336600306300477A144A7D155B8C3D5F90465F8F455D8E44
            59873F5988405988405988405988405988405988405988405988405988405383
            39699054E0DBE2D4D4D4E6E1EA587F312D620033660033660033660033660033
            66003366003366003164003B6B0B7A916382986CE6E4E9E2E2E2E5E5E5E4E4E4
            E5E5E5EEEEEEEEEEEEF6F6F6FBFBFBFEFEFEFFFFFFF2F7F072AA5778AA5C2B5E
            00336600336600336600336600336600336600336600336600255C00A7B797E4
            E2E6DFDFE0D4D7D220590033660033660033660033660032650034670163944D
            5F8F455F904659894056843D5D87435C87435C874358853F56843C5C8B425F8F
            455C86425C8743538138A6B69DDAD7DBD5D5D5D5D5D64E6B195C762C5F772F43
            6C113065003366003366003366003366002C6100698D458FA975C1CBB6E9E8EB
            E5E5E5E7E6E9A9C48D83AB6A64994C487B212F62003366003366003366003265
            002F6300486D17536E1FF5F2FBE5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E3E3E3EF
            EFEFEEEEEEEDEDEDF6F6F6FFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFFFFFEFFFFFE
            9D9DFE1B1BFE1414FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE3535FE3333FE3333FE3333FE3333FE3030FE2929FE6D6DFE6C
            6CFE6C6CFE6C6CFE6666FEB3B3FEB6B6FEB3B3FECCCCFEF8F8FEDBDBFEACACFE
            F1F1FEF2F2FEDEDEFEDEDEFEE0E0FEF7F7FEFFFFFEFFFFFEFFFFFEFFFFFEC5C5
            FE1F1FFE1D1DFE0000FE0000FE0000FE0000FF2C2CDE8F8F979191A1A8A8A5CA
            CACACBCBCBDCDCDCE3E3E3F0F0F0EEEEEEEAEAEAFBFBFBFEFEFEFEFEFEFEFEFE
            FFFFFFC3D2B42259003366003366003366003366003366003164002D60002E61
            002E61002D61002E61002E62002E62002E62002E62002E620030630031640033
            66003366003366003366002B6300767E479B9978E2E2E6DCDCDCE9E9E9A7A7A7
            A39EA8456F193064003366003366003366003063002F62002E61002D60002D60
            002D61002E61002E61002E61002E61002E61002E61002E61002E61002E61002E
            6100285D0048731BEBE6F0DBDBDBF2EDF65A82332C6100336600336600336600
            3366003366003366003366002860003B6D0AC9C1D1C3C0C5F5F5F5EFEFEFEFEF
            EFEFEFEFEEEEEEEBEBEBEEEEEEFFFFFFFEFEFEFEFEFEFFFEFFF9FFFACCFFD0BF
            F7BB1649002E6100336600336600336600336600336600336600336600235B00
            B4C4A4F8F6FAF3F2F4E6E9E41E57003366003366003366003366003366003265
            002D60002D60002D60002E61002E62002D61002D61002D61002E62002E62002D
            61002D60002D61002D610021590097AC84E3E0E5DCDCDDDCDDDE1A56002D6400
            2D64003065003366003366003366003366003165001552009FB58BFFFDFFF3F2
            F5EFEFEFEFEFEFEFEEEFFFFBFFBFDEC292CE985A90402C5D0033660033660033
            66003366003366002F64001E5900FFFFFFEEEEEEEFEFEFEFEFEFEFEFEFEFEFEF
            EFEFEFEEEEEEEEEEEEEBEBEBF5F5F5FFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFFFFFEA3A3FE2626FE1B1BFE0000FE7878FE7F7FFE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE2020FE0B0BFE0000FE0000FE0000FE0000FE0000FE1A
            1AFE1010FE0000FE0000FE0000FE0000FE0000FE0000FF3232DDA6A68EA6A6A3
            BEBEBECCCCCCCACACADADADAE1E1E1EEEEEEF2F2F2FFFFFFFEFEFEFEFEFEFEFE
            FEFEFEFEFFFFFFC3D2B422590033660033660033660033660033660033660033
            6600336600336600336600336600336600336600336600336600336600336600
            336600336600336600336600316300296000767D47A09E7DF9F9FDF0F0F0F9F9
            F99696968B8690406B1630650033660033660033660033660033660033660033
            6600336600336600336600336600336600336600336600336600336600336600
            3366003366002D6200507B25FFFDFFF0F0F0FFFBFF5E84362C61003366003366
            003366003366003366003366002B630077806FA19AA8FEFEFEF3F3F3EEEEEEEE
            EEEEEEEEEEEDEDEDF0F0F0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFEFF
            FFFFFFFCFCFDA3DCAE5588342E61003366003366003366003366003366003366
            00235B00B2C3A2F6F4F8F1F0F2E4E7E21E570033660033660033660033660033
            6600336600336600336600336600336600336600336600336600336600336600
            336600336600336600336600336600255B00A7BB95F9F7FCF2F1F2F3F2F31D56
            003366003366003366003366003366003366003165002E6300D5C9A4DFDCCCF0
            F0F3EEEEEEEEEEEEEEEEEEEEEEEEECECECFEFAFEFFFFFF91A974265B00336600
            336600336600336600336600326500225A00FFFFFFF3F3F3EDEDEDEEEEEEEEEE
            EEEEEEEEEEEEEEEEEEEEECECECFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFFFFFEA3A3FE2626FE0F0FFE0000FE5959FE5F5FFE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE2525FE1919FE0000FE0000FE0000FE0000FE
            0000FE3939FE2626FE0000FE0000FE0000FE0000FE0000FE0000FF2A2AE0A1A1
            8DA1A1A1B9B9B9C9C9C9C8C8C8D8D8D8E0E0E0EEEEEEF2F2F2FFFFFFFEFEFEFE
            FEFEFEFEFEFEFEFEFFFFFFC3D2B4225900336600336600336600336600336600
            3366003366003366003366003366003366003366003366003366003366003366
            003366003366003366003366003366003163002960006C733895946FF5F5F9EC
            ECECF7F7F78C8C8C7E79833E6813306500336600336600336600336600336600
            3366003366003366003366003366003366003366003366003366003366003366
            003366003366003366002D6200507A24FFFBFFEEEEEEFEFAFF5E84362C610033
            66003366003366003366003366003366002B63006573588B898DF8F8F8EDEDED
            ECECECECECECECECECEBEBEBEEEEEEFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFFFFFFF3F9F38AC98E4C81292E610033660033660033660033660033
            6600336600235B00B1C1A1F4F2F6EFEEF0E2E5E01A5900316600336600336600
            3366003366003366003366003366003366003366003366003366003366003366
            00336600336600336600336600336600336600255B00A5B992F5F2F8EFEEEFF1
            F0F11D56003366003366003366003366003366003165001E58001B5600BEB886
            D3D3BEEEEEF1ECECECECECECECECECECECECEAEAEAF6F6F6FFFFFF7D9C5D0D48
            002C60002D6000336600336600336600326500225A00FFFFFFF1F1F1EBEBEBEC
            ECECECECECECECECECECECECECECEAEAEAFFFFFFFEFEFEFEFEFEFEFEFEFDFDFD
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFFFFFE9E9EFE1313FE7B7BFEE7E7FEFFFFFEFFFFFE0000
            FE0000FE0000FE1919FE4040FE3C3CFE3636FE7575FE8F8FFEB6B6FEB2B2FEAC
            ACFEEFEFFEEFEFFEECECFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
            FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEB9B9FE6E6EFE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF4E4ECE73
            73BEB0B0A6B5B5B5CECECEDCDCDCDBDBDBEDEDEDEEEEEEECECECF1F1F1FFFFFF
            FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFBFCFAF155000255900255900265C00265C
            00265C00265C00265C00265C00265C00265C00265C00265C00265C00265C0025
            5900255900265C00265B00255A00255A00255A00255A00124C00D8E0D4FFFDFF
            FFFFFFFCFCFCEAEAEAFFFFFFFFFFFF4E7A21205800265C00265C00265C00265C
            00265C00265C00265C00265C00265C00265C00255B00255A00255A0025590026
            5C00265C00255900255A00255A001F5600447117FFFAFFEDEDEDFDF9FF537C2A
            1E5500265B00265C00265C00265C00265C00255B00134C00D2DFC4FFFFFFEBEB
            EBEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF6A8E451D5600265C00265C00265C00
            265C00265C00265C00155000BACBA8FFFFFFFFFFFFF7F6F440360F345501245D
            00265C00265C00265C00265C00265C00265C00265C00265C00265C00265C0026
            5C00265C00265C00265C00265C00265C00265C00265C00175100ADC097FFFFFF
            F7F6F7EDEDEE0F4A00255900265C00265C00265C00245B00235B00EDE1F9D9D3
            DFF6F6FCFAFAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFF
            FFFFFFFFFF4F8C13659B2E205600265C00265C00255B00165000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFE
            FEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEC5C5FE7171FEACACFEF2F2FEAEAEFEC6
            C6FE0000FE0000FE0000FE0A0AFE1B1BFE1919FE1313FE4D4DFE5757FE6767FE
            6666FE6363FE8080FE7F7FFE7C7CFE9393FEB5B5FEB2B2FEB2B2FEB2B2FEB2B2
            FEB2B2FEB2B2FEB2B2FEB2B2FEAFAFFECBCBFED9D9FE5151FE2F2FFE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000F70000FD
            7676BF9191B7B5B5B0BDBDBDD4D4D4E4E4E4E3E3E3F5F5F5F6F6F6F5F5F5F8F8
            F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFE0E8D990AB7497B07F97B07F98
            B27F98B27F98B27F98B27F98B27F98B27F98B27F98B27F98B27F98B27F98B27F
            98B27F97B07F97B07F98B27F98B17F97B07F98B17F98B17F98B17F8EAA73E7EB
            E4FAF9FAFFFFFFFCFCFCF4F4F4FCFCFCFFFFFFA9BE9495AF7B98B27F98B27F98
            B27F98B27F98B27F98B27F98B27F98B27F98B27F98B27F97B17F98B07F98B17F
            97B07F98B27F98B27F97B07F98B17F98B17F95AF7BA6BB91FFFCFFF6F6F6FEFC
            FFADC09A94AE7A98B17F98B27F98B27F98B27F98B27F97B17F8FAA73E4EBDEFF
            FFFFF5F5F5F6F6F6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFB6C8A494AE7998B27F98B2
            7F98B27F98B27F98B27F98B27F90AB74DDE5D5FFFFFFFFFFFFFAFAF9A2A08A9E
            AF8697B27E98B27F98B27F98B27F98B27F98B27F98B27F98B27F98B27F98B27F
            98B27F98B27F98B27F98B27F98B27F98B27F98B27F98B27F98B27F90AC75D7E0
            CDFFFFFFFAFAFAF6F6F78DA97197B07F98B27F98B27F98B27F97B17E95B07BED
            EAF0E4E4E4F7F7F7FAFAFAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFFFFFFA8C58CB3CC9995AF7C98B27F98B27F98B17E90AB74FFFF
            FFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEEAEAFECCCCFEE7E7FEFFFFFE
            5757FE6A6AFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE3434FE3232
            FE2F2FFE2F2FFE2F2FFE2C2CFE2C2CFE2A2AFE4141FE6666FE6262FE6262FE62
            62FE6262FE6262FE6262FE6262FE6262FE5D5DFE9B9BFEADADFE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF0000
            F60000FDA4A4AAB5B5ACBABABAC5C5C5DCDCDCECECECECECECFFFFFFFFFFFFFF
            FFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFEFEFEFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEF2F2FEE1E1FEF0F0
            FEFFFFFE4141FE5454FE0000FE0000FE0000FE3535FE8787FE7F7FFE8A8AFE15
            15FE1818FE1919FE1919FE1919FE1919FE1919FE1818FE2323FE3434FE3333FE
            3333FE3333FE3333FE3333FE3333FE3333FE3333FE3030FE4C4CFE5555FE0101
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0707F710
            10EC4A4AC64242C6ADADB2B9B9B7C3C3C3CECECEE5E5E5F5F5F5F6F6F6F5F5F5
            F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFF
            FFFEFFFFFEFFFFFE1C1CFE2E2EFE0000FE0000FE0000FE6060FEFFFFFEFFFFFE
            FFFFFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF
            0909F11313DC9898959E9E8CB8B8B6BFBFBFCACACAD6D6D6F0F0F0FEFEFEFFFF
            FFEBEBEBF1F1F1FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFFFFFE6060FE6262FEA2A2FEDADAFEFFFFFEFFFFFEFEFE
            FEFEFEFEFFFFFEA9A9FE5D5DFE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FF3D3DE1C7C79DADADAAA7A7A7CBCBCBD3D3D3DDDDDDE1E1E1EDEDEDFD
            FDFDFEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFE7777FE7575FECCCCFEE1E1FEFFFFFEFE
            FEFEFEFEFEFEFEFEFFFFFED1D1FE8C8CFE2A2AFE1E1EFE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0707F70F0FEB4747D4B4B4A4B2B2B2AFAFAFC9C9C9D4D4D4E6E6E6E7E7E7
            EDEDEDFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFE8F8FFE8989FEFFFFFEFFFFFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEC2C2FE5D5DFE3B3BFE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FF0C0CF02222D55050C7B1B1A3BABABAB9B9B9C9C9C9D6D6D6F1F1
            F1EEEEEEEBEBEBFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEC8C8FEC5C5FEFFFF
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEDEDEFEB6B6FE6969FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FF2424E96E6EBB8282BBB6B6AFC3C3C3C1C1C1D2D2D2DC
            DCDCEFEFEFF0F0F0F5F5F5FDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFF
            FFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFFFFFE
            8E8EFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FF3333E8BCBC9DB2B2ABB9B9B9CACACAC9C9C9
            D9D9D9DFDFDFECECECF2F2F2FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFFFFFEFFFFFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FF7D7D8A999998C1C1BFC2C2C2CDCDCDDDDD
            DDDCDCDCEFEFEFF6F6F6FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFFFFFE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FF0000FF6969948A8A9DBDBDBBBEBEBEC9
            C9C9D9D9D9D8D8D8ECECECF3F3F3FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEDFDFFEF9F9FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FF2828D51B1BD7A8A8AABCBCB7D0D0D0
            D3D3D3DDDDDDF0F0F0F0F0F0ECECECF2F2F2FFFFFFFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEE4E4FEFFFFFE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FB0000FD5757C25151C1AEAEB1BCBC
            BBCDCDCDD1D1D1DBDBDBEDEDEDEDEDEDF5F5F5F8F8F8FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFFFFFE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FA0000FA8787AA8888A5B9
            B9B9C0C0C0CBCBCBD0D0D0DADADAECECECEBEBEBFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFFFFFE6767FE3C3CFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF2121EF5D5DD6A0A0B4
            9F9FB1C1C1C2C9C9C9D4D4D4DADADAE4E4E4F5F5F5F5F5F5FDFDFDFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFFFFFEDBDBFE7979FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF0000FF3B3BE7D2D2
            B0BDBDB9BABAB7CACAC9D0D0D0DBDBDBE1E1E1ECECECFEFEFEFFFFFFFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFFFFFECBCBFE6C6CFE4545FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF3A3AEAA6A6C1AE
            AEC9D3D3CECECECECCCCCCDCDCDCE4E4E4F0F0F0F5F5F5FFFFFFFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEBABAFE4D4DFE2828FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF2F2FEB
            8A8AC69C9CCACECECACACACAC8C8C8D8D8D8E1E1E1EEEEEEF3F3F3FFFFFFFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFFFFFEFEFEFE
            F5F5FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000
            FF4C4CF2F5F5DAE1E1DCDCDCDCDCDCDCDADADAEFEFEFEFEFEFEDEDEDF3F3F3FF
            FFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
            FEF4F4FEFDFDFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE3E3EF78181F0F1F1E3E5E5E5E5E5E5E5E5E5E4E4E4EDEDEDEEEEEEEDEDED
            F3F3F3FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFFFFFEFFFFFE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FF8A8AEEB5B5EEF6F6EFEFEFEFEFEFEFEFEFEFEFEFEFEEEEEEEDED
            EDECECECF2F2F2FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFFFFFE7D7DFE8B8BFE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FFB9B9EFD2D2EEF1F1EDEEEEEEEEEEEEEEEEEEEEEEEEED
            EDEDF0F0F0F6F6F6F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFF
            FFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFFFFFE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FFEBEBECF2F2EBECECECECECECECECECECECEC
            ECECECEBEBEBF2F2F2FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD
            FFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEB1B1FE
            6A6AFE0000FE0000FE0000FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
            FE9595FE5454FE0000FE0000FE0000FEF9F9FEFFFFFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFFFFFEB5B5FE1515FE7171FEE8E8FEFFFFFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFFFFFED7D7FE8D8DFEB5B5FEE7E7FEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFEFFFFFEFFFFFEFFFFFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF00FEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFF
            FF00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFF
            FFFFFFFFFF00}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.574830000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'R.F.C. PEP-920716-7XA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 113.385900000000000000
          Top = 49.133889999999990000
          Width = 623.622450000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FOLIO: [frdsSalidas."Serie"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CIUDAD DEL CARMEN, CAMPECHE')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SUBDIRECCION REGION MARINA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 64.252010000000000000
          Width = 740.787457720000000000
          Height = 166.299320000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 83.149660000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'EMBARQUE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 336.378170000000000000
          Top = 83.149660000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESEMBARQUE')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 607.504330000000000000
          Top = 83.149660000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 188.976500000000000000
          Top = 83.149660000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 98.267780000000000000
          Width = 740.787880000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 102.047310000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'LUGAR Y FECHA:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 117.165430000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            #193'REA DESTINATARIA:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'DESTINO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 147.401670000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'VIA:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 162.519790000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'ACTIVO:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'PROPIO')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 94.488250000000000000
          Top = 117.165430000000000000
          Width = 257.008040000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frdsSalidas."AreaDestinataria"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 49.133890000000000000
          Top = 132.283550000000000000
          Width = 302.362400000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 34.015770000000000000
          Top = 147.401670000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 45.354360000000000000
          Top = 162.519790000000000000
          Width = 162.519790000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frdsSalidas."ClaveActivo"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 355.275820000000000000
          Top = 102.047310000000000000
          Width = 245.669450000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'HOJA [Page#] DE [TotalPages#]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 404.409710000000000000
          Top = 124.724490000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'EMBARCADOR RESPONSABLE:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 347.716760000000000000
          Top = 154.960730000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'C. COSTO:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 283.464750000000000000
          Top = 170.078850000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'C. GESTOR:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 283.464750000000000000
          Top = 185.196970000000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'POS. FINANCIERA:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 283.464750000000000000
          Top = 200.315090000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'CTA. MAYOR:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 283.464750000000000000
          Top = 215.433210000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'FONDO:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 75.590600000000000000
          Top = 102.047310000000000000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CIUDAD DEL CARMEN, CAMP.  [CADENAFECHA]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 404.409710000000000000
          Top = 139.842610000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'NOMBRE: [frdsSalidas."NombreEmbarcador"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 393.071120000000000000
          Top = 154.960730000000000000
          Width = 340.157700000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frdsSalidas."CCostoEmbarcador"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 343.937230000000000000
          Top = 200.315090000000000000
          Width = 389.291590000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frdsSalidas."CuentaMayorEmbarcador"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 321.260050000000000000
          Top = 215.433210000000000000
          Width = 411.968770000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frdsSalidas."FondoEmbarcador"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 362.834880000000000000
          Top = 185.196970000000000000
          Width = 370.393940000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frdsSalidas."PFinancieraEmbarcador"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 336.378170000000000000
          Top = 170.078850000000000000
          Width = 396.850650000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        Condition = 'frdsSalidasDetalle."IdSalida"'
        PrintChildIfInvisible = True
        object Memo37: TfrxMemoView
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 68.031540000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 120.944960000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 604.724800000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8W = (
            'FACT/REQUISICION')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 351.496290000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frdsSalidasDetalle
        DataSetName = 'frdsSalidasDetalle'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo42: TfrxMemoView
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsSalidas
          DataSetName = 'frdsSalidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Cantidad'
          DataSet = frdsSalidasDetalle
          DataSetName = 'frdsSalidasDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsSalidasDetalle."Cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 68.031540000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoUnidad'
          DataSet = frdsSalidasDetalle
          DataSetName = 'frdsSalidasDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsSalidasDetalle."CodigoUnidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 120.944960000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloArticulo'
          DataSet = frdsSalidasDetalle
          DataSetName = 'frdsSalidasDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frdsSalidasDetalle."TituloArticulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 604.724800000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        Child = frxReport1.Child1
      end
      object PageFooter1: TfrxPageFooter
        Height = 313.700990000000000000
        Top = 495.118430000000000000
        Width = 740.409927000000000000
        object Memo50: TfrxMemoView
          Left = 604.724800000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDouble
          Memo.UTF8W = (
            'PESO TOTAL ==')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 143.622140000000000000
          Width = 461.102660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTO APROXIMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Top = 22.677179999999910000
          Width = 230.551330000000000000
          Height = 136.063080000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.BottomLine.Style = fsSolid
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 230.551330000000000000
          Top = 22.677179999999910000
          Width = 249.448980000000000000
          Height = 136.063080000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.LeftLine.Style = fsSolid
          Frame.LeftLine.Width = 1.500000000000000000
          Frame.BottomLine.Style = fsSolid
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 480.000310000000000000
          Top = 22.677179999999910000
          Width = 260.787570000000000000
          Height = 136.063080000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsSolid
          Frame.LeftLine.Width = 1.500000000000000000
          Frame.BottomLine.Style = fsSolid
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Top = 34.015769999999970000
          Width = 211.653680000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'AUTORIZO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000040000
          Width = 207.874150000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOMBRE: ING. MIGUEL RAMIREZ CASTA'#209'EDA'
            ''
            ''
            'SUPERITENDENTE DEL CENTRO DE '
            'PROCESAMIENTO DE GAS AKAL C7/C8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 207.874150000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 3.779530000000000000
          Top = 128.504020000000000000
          Width = 207.874150000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FICHA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 3.779530000000000000
          Top = 139.842610000000000000
          Width = 207.874150000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EXT:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 230.551330000000000000
          Top = 34.015769999999970000
          Width = 241.889920000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VO. BO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 234.330860000000000000
          Top = 64.252010000000040000
          Width = 238.110390000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ING. LUIS ALBERTO LOPEZ ARROYO'
            'SUPERVISOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 234.330860000000000000
          Top = 120.944960000000000000
          Width = 238.110390000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA: 340812')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 234.330860000000000000
          Top = 132.283550000000000000
          Width = 238.110390000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'EXT: 33309')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 483.779840000000000000
          Top = 34.015769999999970000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'EMBARCACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 483.779840000000000000
          Top = 68.031539999999950000
          Width = 132.283550000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CAPITAN:'
            'FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 498.897960000000000000
          Top = 105.826840000000000000
          Width = 132.283550000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RECIBI PARA SU TRANSPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Top = 158.740260000000000000
          Width = 230.551330000000000000
          Height = 136.063080000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 230.551330000000000000
          Top = 158.740260000000000000
          Width = 249.448980000000000000
          Height = 136.063080000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.LeftLine.Style = fsSolid
          Frame.LeftLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 480.000310000000000000
          Top = 158.740260000000000000
          Width = 260.787570000000000000
          Height = 136.063080000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.LeftLine.Style = fsSolid
          Frame.LeftLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 3.779530000000000000
          Top = 181.417440000000100000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RECEPCION DE MATERIALES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 3.779530000000000000
          Top = 207.874150000000000000
          Width = 132.283550000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOMBRE:'
            'CARGO:'
            'FICHA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 30.236240000000000000
          Top = 253.228510000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SUPERVISOR DE LOG'#205'STICA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 483.779840000000000000
          Top = 181.417440000000100000
          Width = 162.519790000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PLATAFORMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 483.779840000000000000
          Top = 207.874150000000000000
          Width = 132.283550000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOMBRE:'
            'CARGO:'
            'FICHA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 510.236550000000000000
          Top = 253.228510000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SUPERVISOR DE LOG'#205'STICA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        Height = 18.897650000000000000
        Top = 415.748300000000000000
        Width = 740.409927000000000000
        object Memo27: TfrxMemoView
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsSalidas
          DataSetName = 'frdsSalidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsSalidas
          DataSetName = 'frdsSalidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 68.031540000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsSalidas
          DataSetName = 'frdsSalidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 120.944960000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsSalidas
          DataSetName = 'frdsSalidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 604.724800000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsSalidas
          DataSetName = 'frdsSalidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dsSalidas: TDataSource
    DataSet = cdSalidasRp
    Left = 88
    Top = 240
  end
  object frdsSalidas: TfrxDBDataset
    UserName = 'frdsSalidas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdSalida=IdSalida'
      'IdOrganizacion=IdOrganizacion'
      'IdTIpoMovimiento=IdTipoMovimiento'
      'NombreTipoMovimiento=NombreTipoMovimiento'
      'TipoEmbarque=TipoEmbarque'
      'IdAlmacen=IdAlmacen'
      'TituloAlmacen=TituloAlmacen'
      'Fecha=Fecha'
      'IdCiudad=IdCiudad'
      'TituloCiudad=TituloCiudad'
      'TituloEstado=TituloEstado'
      'TituloPais=TituloPais'
      'AreaDestinataria=AreaDestinataria'
      'TituloViaEmbarque=TituloViaEmbarque'
      'ClaveActivo=ClaveActivo'
      'Comentarios=Comentarios'
      'Periodo=Periodo'
      'Consecutivo=Consecutivo'
      'Serie=Serie'
      'Referencia=Referencia'
      'NombreEmbarcador=NombreEmbarcador'
      'CCostoEmbarcador=CCostoEmbarcador'
      'CGerstorEmbarcador=CGestorEmbarcador'
      'PFinancieraEmbarcador=PFinancieraEmbarcador'
      'CuentaMayorEmbarcador=CuentaMayorEmbarcador'
      'FondoEmbarcador=FondoEmbarcador'
      'Embarcacion=Embarcacion'
      'PesoTotal=PesoTotal'
      'CostoTotal=CostoTotal'
      'NombreUsuario=NombreUsuario'
      'Estado=Estado'
      'FirmaTitulo=FirmaTitulo'
      'FirmaNombre=FirmaNombre'
      'FirmaPuesto=FirmaPuesto'
      'FirmaDepto=FirmaDepto')
    DataSet = cdSalidasRp
    BCDToCurrency = False
    Left = 88
    Top = 287
  end
  object cdSalidasRp: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 86
    Top = 336
  end
  object cdSalidasDetalleRp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdSalida'
    MasterFields = 'IdSalida'
    MasterSource = dsSalidas
    PacketRecords = 0
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 174
    Top = 336
  end
  object frdsSalidasDetalle: TfrxDBDataset
    UserName = 'frdsSalidasDetalle'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdSalida=IdSalida'
      'IdSalidaDetalle=IdSalidaDetalle'
      'IdOCDetalle=IdOCDetalle'
      'IdEntradaDetalle=IdEntradaDetalle'
      'IdArticulo=IdArticulo'
      'CodigoArticulo=CodigoArticulo'
      'TituloArticulo=TituloArticulo'
      'Descripcion=Descripcion'
      'CodigoUnidad=CodigoUnidad'
      'TituloDisciplina=TituloDisciplina'
      'Cantidad=Cantidad'
      'Comentarios=Comentarios')
    DataSet = cdSalidasDetalleRp
    BCDToCurrency = False
    Left = 176
    Top = 287
  end
end
