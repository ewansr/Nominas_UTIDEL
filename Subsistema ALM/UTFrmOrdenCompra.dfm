inherited FrmOrdenCompra: TFrmOrdenCompra
  Caption = 'Orden de Compra'
  ClientWidth = 933
  ExplicitTop = -173
  ExplicitWidth = 949
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 933
    ExplicitWidth = 933
    inherited LbFiltros: TJvLabel
      Width = 925
      ExplicitWidth = 925
    end
    inherited GroupBoxFiltro: TGroupBox
      Width = 856
      ExplicitWidth = 856
      inherited BtnSearch: TAdvShapeButton
        Left = 813
        TabOrder = 4
        OnClick = BtnSearchClick
        ExplicitLeft = 813
      end
      inherited chkUsuario: TAdvOfficeCheckBox
        Left = 726
        TabOrder = 6
        ExplicitLeft = 726
      end
      inherited cmbConvenio: TDBLookupComboBox
        TabOrder = 5
      end
      object cmbFiltroEstado: TAdvComboBox
        Left = 579
        Top = 17
        Width = 111
        Height = 21
        Color = clWindow
        Version = '1.3.2.2'
        Visible = True
        ButtonWidth = 18
        DropWidth = 0
        Enabled = True
        ItemIndex = 0
        Items.Strings = (
          'Activo'
          'Enviado'
          'Cancelado')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 2
        Text = 'Activo'
      end
      object grpFiltroFecha: TGroupBox
        Left = 304
        Top = 7
        Width = 269
        Height = 39
        Caption = 'Fecha'
        TabOrder = 1
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
      object edtFiltroFolio: TAdvEdit
        Left = 144
        Top = 17
        Width = 154
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
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 933
    ExplicitWidth = 933
    inherited DBGridPrincipal: TNextDBGrid
      Width = 931
      ExplicitWidth = 931
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 127
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
        Width = 127
        FieldName = 'serie'
      end
      object NxDBDateColumn1: TNxDBDateColumn
        DefaultValue = '03/04/2012'
        DefaultWidth = 81
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
        Width = 81
        FieldName = 'fecha'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 126
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Periodo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 126
        FieldName = 'periodo'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 227
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Proveedor'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 227
        FieldName = 'proveedor'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 194
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Referencia'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        Width = 194
        FieldName = 'referencia'
      end
      object NxDBTextColumn5: TNxDBTextColumn
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
        FieldName = 'estado'
      end
    end
    inherited PanelBarra: TPanel
      Width = 931
      ExplicitWidth = 931
      inherited Panel1: TPanel
        Width = 798
        ExplicitWidth = 798
        inherited PanelAdd: TPanel
          Width = 100
          ExplicitWidth = 100
          inherited BtnAdd: TAdvShapeButton
            Visible = False
          end
        end
        inherited PanelEdit: TPanel
          Left = 100
          ExplicitLeft = 100
        end
        inherited PanelDelete: TPanel
          Left = 214
          Width = 56
          Visible = False
          ExplicitLeft = 214
          ExplicitWidth = 56
          inherited BtnDelete: TAdvShapeButton
            Visible = False
          end
        end
        inherited PanelRefresh: TPanel
          Left = 157
          ExplicitLeft = 157
          inherited BtnRefresh: TAdvShapeButton
            Left = 6
            ExplicitLeft = 6
          end
        end
        inherited PanelPrint: TPanel
          Left = 270
          ExplicitLeft = 270
          inherited BtnPrint: TAdvShapeButton
            Left = 6
            OnClick = BtnPrintClick
            ExplicitLeft = 6
          end
        end
        inherited PanelExport: TPanel
          Left = 327
          Visible = False
          ExplicitLeft = 327
          inherited BtnExport: TAdvShapeButton
            Left = 6
            ExplicitLeft = 6
          end
        end
        inherited PanelImport: TPanel
          Left = 384
          ExplicitLeft = 384
          inherited btnImportar: TAdvShapeButton
            Width = 67
            ExplicitWidth = 67
          end
        end
        inherited PanelSelect: TPanel
          Left = 441
          Width = 61
          ExplicitLeft = 441
          ExplicitWidth = 61
          inherited BtnSelect: TAdvShapeButton
            Left = 6
            Width = 57
            ExplicitLeft = 6
            ExplicitWidth = 57
          end
        end
        object btnEntrada: TAdvShapeButton
          Left = 5
          Top = 3
          Width = 89
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
            1DC2000000097048597300002E2200002E2201AAE2DD92000009694944415458
            47BD977B5053D91DC7A3BB9DCEB4B51DD7B6FB573BDD713AB5D5057555D65144
            41B402EAF8D6EAEAAA5B2D0828A2F250405C1421BC441EA2C00AF8A855090163
            90C8A20809104220802B21221020082C8F3CEE4D08C9E9F7A4C1B2CA5A3BDB69
            663E73CE3DE7DCF3FBFE7EE7DCF33B99C299F0B39ACD2B3853A76EE74C993273
            62FBFFB06EC25C228EC17073EAB4692FBF332FB158CE13AB95FC3F7E6366734B
            4F47C727AF04582D96E871C396B131EBD824D0F6C9C060EB7F89CD94A6BBBB53
            5A51319363B55A97D106A8B28C8E8E8E51CC1398AC8DF663E0F7827ECBF781F7
            2C70640CF6488D44728B0AB84505188D4676D4647A93D151162258B3791C33EA
            7646478D3034293061C47B26CCF90A5AC5B3CD4BEA844422317010FE5228222C
            CB8E40C42B4CA8E3851183C1C068B53AA07D8391112D3BA2D5B2E87B83816FBF
            650D7ABD1E73E85E6134EA31AF1E22F4705C5F2591101A01A191652C06834E03
            011A0CD0E0050D44F63006C3406F6FAF55A57A4E5A5B5536687D9C56DA6E7F1E
            EF572A5B494B8B929494949056A552CB304C3FE6EB83D1BE51A3B10FF3F7A3DE
            0FBB83E28A0A0B1520D0EB740678D102832D2CC3D830B1EC33AD76A45DD9DA6A
            ADAEA921124915A9AC1493F2271593F204ED62B18488E15505C6E5E5E591CA8A
            0A5DDFCB975D10D136811710F10276D535D5D52C5D82A2A1A1A1BEE1A1A12A46
            AF97C0B80D23CB8A47868715DF3C7B66A18685C5C5E4EAD5AB2433337352B2D0
            CEE3F108155256F68864656593529168B8A7BBFB198CCB30A71D431D22218380
            26B94C36C8C1D6E70FF4F73F8788220828C4604A11F6047F7878F871F3D3A763
            E5E54F482E3CCACECE621E08857D25C5C51A1B0F1E684476E8F3E3B24723D535
            5222123D24E9E99748B140D0D7D5D555857D54C218F4250C831220022510F0A4
            B9B1B18B831D99DFABD1D40F0E0E66C37026F601250B7BE00A4415281A1BC7BE
            864757E0616E4ECE90A2A1A1BA5BAD2ED2F4F4F0E15D614F4F4F212D351A4DC1
            8B172F14F2FA0644EB0149BE904C8A0AF9EA8EF6F66244F31A054E5DA72002D7
            20A040A554B6704659F64E975AFD58A7D5C65ACCE6B3F8C4BEA4582C964888CA
            ACAF6F308B1E9692B4B474929191D1D7A85014B006430CC69E339B4CD1181B8D
            7A3496320A624A64B23A52744F40B85C2EB973FBB60AA2AE613F71B111FF05CB
            C6E11D2E045C86B83A0ED6E62ED622696060C01D8DFBF0FD1E417918F86009CE
            D7D5C947A947494917484A727237C6E620424731CE1F1CB643DFF1EDECECBA53
            23AD25BC023E898A8A22D7AF5D6B562A95C91843C7075210D96338398F62FC59
            7567672587D5EBF3259595A7E8B98CF3E867E898033CC0364420AC5626331515
            09486C2C97C473B99D5562712A6B327D8EFE9D60979DCF506EEFE8E8C8954240
            7E3E8F84874790ECAC2C794B4BCB19F4ED1907223E8780DD783E86A5FBDA26A0
            A6AA2A02F6A78E270708790F0366A8D5EA4D151595261E8F4FCE45479398E8E8
            0E71797912F6CA76F46FB0B316A517588DFD72F9FA8D9B2432F20CF1F5F52319
            E9E95285421182BE8DAFB11ECF07B18F4A260A78EFF5B42B140A67F3F885CC85
            E414B26FFF17E490B777AB502088C401E78909286BE1CDB6319DEE2F5693696B
            7B5B5B447666667554E46935E8BD7AE5CAA37A998C869B0AA442C75983FA7E6C
            FE076F15505A5AEA789757C09C8FE192D5ABFF4C962D59D27032387827BC9A8E
            284DD70FBD9CDBD6DA2A97496B7B11454D7D5D5D97BCAE4E535B53A34D4F49D5
            9F8B3CCDABADAEDE0A630BC17CE080F76681DFA2FE29366DD17F14905FC06762
            B9F1C4C3C393AC7071510406046C47A4DEA7D1AABB7FEB57386CBA33B3AF9280
            C040B2EBB3DD367682858B9CC86A777741584888734444846DFCC41F44FCAE1B
            9FF23B0BF0F4F0B009387EF4E80E3F3FBF1FD3C99E4BF81FDE1708DAC22322C9
            9CD9B39985731D9F7EE2F0B17C81E31C99F36227F9AEAD5B8B027C7C3CB66CD9
            F2C6F22202331181771310C78D23930A78C8FF50785FD0762E3A86ECDDB397C9
            4C4B5514E5DF7E7CE7FAF5B2D0007FBECF5FF7EDF3F5F59D8508BCDAE0E35178
            6701F8A6997808F058B386B8383B37041E39B21593D83CEA2E2BFC2536655B42
            5232F1F33F42028E0692B0B070DB7238393969776FD9B223383878C66477CA77
            1650505000015CB279D326B2D2D5B5F15840C0AEDCDCDC9F620DDFEF6A6CFCCD
            C39292E711A7CF1047070776E1BC79AAF9580647478766E7258BE53E070E9C0B
            0C0CFCE80709E043405C4C0C09090A22A7C3C30DB76EFD432914164B8E9F08AA
            8A0C0B0B16953C68A502DC5DDD46CE9E0CE1A7C5C7C467C473CF26469D8E3EEE
            737087B7B7F7F41F2440201030490909840B11172FA690ECAF7248E8A930327F
            DE7C8BDFC1FD19F7EFDDEB4DC4124442C48DBC3C164B325C7CFFFE50E8891343
            AB972F3B7C3E28E8171030E57511FF5E0286C9C777FB9D93707C704ECE8D7951
            67CF926DDBB6918D1B36920D1B3791B5EBD6933FCCFA235D8EA633A14197C343
            43073D3DBD88BBFB2AE2E9E585FE75C46BED3AE2E0E04856B92E179C3C1AB494
            F3B6AF00198A87BC7C5E2C167F00553FB7330D6BFC93A4A4F4DFAF5AB92A6FD1
            82054D9F3A39758076A7458BDA5D96B9A8FCFEE67337E458C0AEF5EE6E3ECB97
            2EE5AF725D215DB9DCA5C615B82D7796AE7173ABDDBB6BE7DDC0C387D7641C38
            F0A3C92240533ABD0F14B6A95499F8A3B000C61D71A43AA2FC18CCA1A756737D
            BDD3E5D454BFE48484B0E4F8F85328431363634F26C4C51D1289440BADACF5A3
            DB376F7A5DBA7871EFA5B4B43D69172FEE494B4ADA939A98B83B312E6EC78D9C
            9C053A9DEED734B7D8F980263D3057D3D5554CAF64C2FEDEDE22DDE020CD6CDB
            71B653E8F1B9992610B3D1B81117C6CDDAA1A14D4303031BC186C1FEFEF5FA91
            114FFC955B05DC811B72BCAB99655720DDBA8065A30CE38CA4B514732CA6C72E
            58643F92A9A30E609D4AA52AE3C0D8715C4AE4B8549C476314047D09CEE0AFDA
            69F485A3ED14A0192D081C07C7004D3001E8A7D0BB801F3804BCC141787700E5
            17603FFAF781BD608F2D0D8F8DD1D4BD0D9C2C7FF4E8EFF4563C038D42941220
            A0975450887A014A1EB80BEE80DBE016B8096E80EB200FE4821CF015C80299E0
            32C8C01CE92015A48064B45D409948696E6ABA9B9595E565DB1B58230723C3D4
            9B188645671FE8065D406DA71365076807F44ADD66478592D20A94A0053C03DF
            80A7A019348146A0A0E0EAA784E76D2929298113EF209C9EF6F63FE1C2595827
            951A1AE47252575BFB4EC8304E2695BE955A7BFF439188645CBAF4D4DFDF7FFF
            B8F17F02B470EB646FF8AC030000000049454E44AE426082}
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
            1DC2000000097048597300002E2200002E2201AAE2DD920000097F4944415458
            47BD970B5894551AC70F0C6E664149A9DD30DD6A3343B49BB5BB955B6AA56517
            BC51828218AC8A602899869A205E51086953124D142F4FA25C0581D214B92372
            5560442EC30C32C46D66BE6F66BE99F3EEFF2370ADD4EDB2CF7ECFF37BCEF9CE
            FBCE79FFE73D67CE399F0DBBEEE192F40AB3B5756336368F5CDFFE3FAC9BD057
            1633180ED9DADB5FFD49BF64B56E22CEE9FFF15824A946DDD8F8CC3501DC6ADD
            D81FD86AB170CB0D90DB6F049CF96FA43794A6A5A5A92827E711C6397F596E80
            2AABD96CB6C848D771A336D90EC79B02BBF566E077560CC48278549897774416
            70441660341A45B3C9F40B24B3245ACC966B58258BD80FDA8D37835BB811E24D
            E8F31A7215EFBDA39407919797676048FFB75044A2287643C4354CA89B4CC6EE
            6E43B7A0ED69BB095745D87E8A4E2BB6A1ADA1BD41D4E9757A48D021F08F188D
            7A1988D063E0FAFCBC3C9233906E1405ABC1A0D34080060E1A386B2052DD63E8
            69AF68ADE099CA4C4A579EA00C653A655CBE05B2BD2E9D526B5329262B86CEAB
            CA7B74924E8B81B421689BD9686C43FF5AD4B588DB919B93639505A4E9753A43
            4F4F4F8D6030D48882D08B59345DD2F6681B4ED665F0E8C2688AC8DF4691B9DB
            29F2CCCD88801DE4837311141E1F4E098DA9BA2B66954A100CF58220F4730522
            AE206E73614181284F414A6767675B576767BEA0D7E721782F26D198DBD675B5
            3CF95292754BEE665A9F1142A171A114BA773D857E7D03F6A12D3994369E0DA3
            0DA75187DF9E2B87BB2E99949710BC047DF661388F4C9440406569494907C3D2
            4F6AD76A2F43440A0424C35926C5249A92345D9AEF8F55275842CF865070DC2A
            0ACB0817A235716DBB9AE335BB9A0F6A6254F13F8277B9FCF2E2EEEEA882CF69
            4DF66A0A8E09A69DF5716DE5A6DA7C83C1902918F499C8442FC84026049CADAA
            A85031ACC863AD1ACD858E8E8E3D08BC1BEB402616ABFF2B55A72AF170C561CB
            EA53C11414B38C42CF867726F0AC82527E31A58AD726555A6B9265AA785D7235
            BF9C78467BAE3CB6349656647C4C41D14114797977F3794B5586281A0E1845F1
            00167ABC0C327000021295B5B535CC2C8A4755CDCDDFEB7A7AB65825294C92A4
            50196EE5EB1A3B9A77EF2FDB2F05652F27BF2F16D3AAECD0B6147E2AD1601237
            5B4DD60D9249DA689591AC1BB9C4D75F505DC8DC55B29302529690DF363F0AAB
            8B52E6F3B203C8E6562CEC1F11C570F4BF1502621A1B1ACE33CC4D02E622B2BD
            BD7D321AE7638B588A32002C6AEC6ADCB4B7748FD93F63092D88F0A6A519AB5A
            0EF213FB74162110FF737FF806A00CE8FD8D85FB1534151CDD511445BEC73FA4
            051B17D0A7359BAB4EF3C2286C9681F05926837FD772EC9C81E83FACB9A9E91C
            13F5FA6379E7CE05CBFB32F6A33B61700653C1ECFA8EFAD55F95C4987C537DC8
            7DF31CF2495DDA14C38F7EA127BD27EC73807B1F1E28DDCE369E8D8B28DA4EF3
            8E7990FB3A775A7AF1B3D2133C2704B679FD40842704CCC5FB72754BCB77BD02
            0AF3F3D722BE6DFFE100210A38DC93D39C333DFCDC16937BE21C9A1D3693BC52
            FC1AA3F9E1C82EAE7383FDBD3EA6A17C0BBC7EA8223EC6F7A00FB97EF62EB9FA
            BB926FF527454779D64AD85C7FC63B78F7D5A8D599D70B50FCFCD85D94BEE849
            AF244F61C48EE1F467AF91F4B73D6FD4ADE251EB7EE0DD6FA2039969268B69B6
            56D07EA033E966653664AE5D9C1050E011F761F3AC439EADDEAA4F4E1FE127E5
            74CB0265A1FD4C41DD1B8BFFE42D05ACF876C5D8B9C73D04FB2D83884D66C4D6
            39940DE44FCF89A7D4C1C8D2E09ACE9A715997334BA38B77B46E2DDCA4D97121
            4AB5BD2242135A1DD6F3F6BE77F4D3523D8E7FCD936621D873E069E082DF8D02
            C3517F41AD56A7FC5701F312E70A83C31DC8F60D0808752C67FC3137D4ECE46C
            799DF01AB222FBE396E7F63E4DC30287D07D6E43E87EB76174FFACA174FBD83F
            91DDA6216903F9F897184DE8F5BFFE8188112D6A75D2EF1030FA7DC61FBD4DEE
            6C659EFF30DF131FD6DFB7E65E627F67025B39B09A2D5394B240BB12166C5FCA
            0A1F4A81E0A910FC8BE945061E4106FE9800FF6CFF610B4FFCB3DE69C303A408
            B0135C6A27944FD77A7F3FB961C6A941690F26B1EE47E733721E0501D716787F
            167EBB80D7D14D886319E34FCCEA1F516071E0BDB280E1910FD2003F053DEE8B
            85BA7C3C39FB8E22C50B8A1E56F430B235EA9E1BDD297FB500CFFE35F01EC2AE
            BFABC2963BBBBBF36577600EEDF654843B7D94E97FD969ED0398021B9105DEAE
            647EB6D56CA1A28A850D2E65BAC73730EE32F28F0BD8E240762B6C68D8D6FB0C
            B34F7E50BB30CB27EFE1E54EF9A3C39D3F5992ED57E7B406023C14DD0EE67149
            8FF1D7B68DE26F84398A4F6D64ADC8008D19FCBB05047F1B3C7641DA7CC131C2
            81066CB1A5A19F3BD293B18FD388954E64FB0F3BEB1D457FD9E5F99D57EB4311
            F7D3A09081F4EAE15744EF34AFAEF9A99E9DC3839C3A99AF5D00A34977217736
            3F17F19F29108463C585853FD909FB9D271E9CF8D498F5CE3460BA2DD94E6364
            03D814F028F8D7BD9503B973CCC890111D03A6284831D186EC5F1F44774FBD93
            1CA6DE41B64FC267AB631AA3D12FDEF25F8013EA38CEE54DB9B9B98E50E5D087
            3DE678D0A42F273DA6F8E0F6FD363EF69536010E8DCCDFA181F9D937B0758395
            4C7C2261A0C5D99D2DBC6D115BE798C4A28616B108C742B6FDEE4216715711DB
            E158CC2E8E4C50F031539E219F0137CA00B6E224F93E905CAF54EEC687C2B308
            3E969B4C63518E01CEF2AEF50D3FF3FC04BE60890B9FB97A2C9F113C86CF5C35
            86BB7E3A9EBB2D8EE47B9ED37071E4BB3CE8ADE7F95CAF17B8C7BC71DCAD1717
            3E6BEE383EF3FDF97CD5B33AAE1B2A9F2D7D38CA871E18A751A932E42B59BAB6
            B53545D7D1219F6C6E38A964E4ED73867C8018B9D1F52A6F9FA1E657A73773B5
            6B93D4F25EA3D4FA4E9BF4C39BF8947B0D4C0613252EBE2A49E22B662E4C002F
            9BCDC24B825978117DFC55DE76C1F8BE2D591EA80B785BA9549E620816844B49
            292E239BD0B81E827019B186E053ED33D8D6E09C0F062BC10A1004709E73F93E
            F011EC32F25D6009580C16025FB2900FCA05C01BF6F9C00BCCEB3D862D16F9E8
            9E0D3E3D73FAF461F9567C0F1AD351E68134F9920A92514F44791C2480A3E01B
            70041C0207413CD80FE2C03EB017C482DD2006EC421F5F822F40348842DBE728
            2364AA2A2B13626363DFEA5D1B3A9DCEC52808174C8220C2D8065A800A34F7D1
            84B2113400F94A5DDF8712A54C1DA80535E012B808AA4115A80415A05C0657BF
            5A8CBC3E3A3A7AD9F57710A66E68185D5E56967CBEA8C850565A4AE78B8B7F15
            25F02B292ABA25C57DF6ECAC2CDAB57367B5BFBFBF777FF07F03309B776B639C
            94F70000000049454E44AE426082}
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
            1DC2000000097048597300002E2200002E2201AAE2DD920000094B4944415458
            47BD97095054471AC77B40A3256AE21135A5BBF158ABD4A8B01AD7B534BA8931
            59EF5B89E20178A3888AEB8278818807C4C18007CA7AEB528A5C5146BC501110
            84512EE5661898D119E59A99F798AB7BFF8D608CA26B76B776AA7EF5F5EBAF5F
            7FFFFEBA5F778F84BCF6A366F3D7C4C6C69148247D5EAFFF1F968DE8EB1A3118
            CEDBB46BF7EC57FD32AB7537A394FD3F7E16B3395FA5500C7D25805AAD014D81
            AD160BB53403AF6F0E34A6BF918650EACACAF2F4A4A43E84523A9A574095D564
            325938E6D768AE8EFBD1F09DC06F7D1778CF8A8158108FA5A5A4447001115C40
            7D7DBD68321ADFC66C12114A34374F3DEA9B0579A9877823FA7C052FE2B96194
            7C102929290682F4DF8022268A622D44BCC2883247A8AD15741A2DD0BC45DD33
            8D58F74C2BC2D7082F6B51A7115F942944834EA747741D02BFA4BE5ECF81083D
            06AE4F4D49613C03F1F5A2603518746A0850A3811A8DD510A9126AEA9E3FCBCA
            A6C557AFB1A2CBB2068ADFC515F841E195ABAC20EE32BB76E428ABCCCCAC33D7
            D66AD1A7064135265894B5286B11B72A3929C9CA055CD6EB7486BABABA7CC160
            C81705A101887852A7D59615C65FA569074259EA3E294B0E0C667702A5CD1304
            7F50304B05F7C0D9BD814C1119A933979454A0DF1241109A28858852C455A6DD
            BF2FF22988ABAEAED6D45457A70A7A7D0A8237806C24D73E7B96F52426CE9A1C
            B08FC976F8B353BE3BD97170A2194EA22E16DCDDB99B25FA0634B42B3D7EBCC6
            9497F704FD65FC82211399C880801C79464615C1D28F79AED51643441C04C442
            29274E341A636AD4EADB7917A32C77B723B8B70F93F9EF12D4A1A11AE59130B5
            32AC91A347D54A50011E1F3C5C7B5F1AC2AE6FDECEC2366F61C5870E6B8CD959
            A9C8408260D02708022C40061220E06E6E767605C18ABCF454AD7E585555F50F
            043E869173C2B14C8F5657A8A2B3CF45586E796F65611B36B2BBBE7ED53432F2
            3E95CBE3686E6E8C3527279683722CCDCB8BD6DEB99B253F7A9CC93CBD5888E7
            DF58B154AA346566CAEA45F10C070BFD2C0719380301D1450505F9C4248A172B
            94CADBBABABABD56B3D9DF6C36FB71AC94EEA852288E3D3A75D67C7DFD2616BA
            6A0DBBEEEDADA17171D14683618FD16ADD65349B036003CC1C4A7756C81F2664
            1C0A63716EEB5890DB1A56B86B57114D4D3D6314C57D58532F11C540F4BF0F02
            C21465659904731389B9903E7FFE7C1C2A5DB04578C0AE05AB6A4A15BBE5E127
            4CB2551E6CBFCB5226F3F0A8A4E7CF9FB4E874EBF19DBBA3ED5AD8B5FC1DD8D5
            E5F7D32FA60787B228D7952CC075297BB279732E4D4C3C00FF7AB08183AFCB13
            3BE77AF4EFAF2C2FBF4744BDFE52CABD7B3E7C5FC67ED4168E816002985B5554
            B225E3C831E3CFE870CFBC05ECE765CBCA69787828D3EB17C33F1F3835B200D6
            517137E9543ABE804BF39D992FDAE77978C8A94CE60BDFA226206231042CC4B3
            A7AAB2F2668380B4D4D46D886FD3743840882D1A74522625CDBCB727C818EDB8
            88F9CF7664312E2E0A7AF0A094D6D438C23FBD91C9B093C0F759A7CF879D5BB2
            926D9F3A93B94F9FC972962F4FA7172F7AC137E30DA6E279B95AA54A785D80ED
            9BC76EFC128F2F6216B80A3F75EFC39C7BFE81858F1C5948BDBD77D0172F26A2
            03CE646A34CEB568B5F3A84E37A75C96B02D6AD59AFB67162C5446CC9EF3B472
            C992441A11C1D3CD0572A14D8C47D9158BFFEA7B05DCD8E4631F35DF59D8DBEA
            13360E33B4959047B475EBF9ECECD90EC852077D7EBE4399EC9A3C2338E4E983
            5D81EA47D2908ABCC06075FE76FFBA3313A7EAAF4C9E12454F9C988360C3C010
            3018EFF503BF47F9CF2A952AEEDF0A8876721102ED3AB3BF121BB69D902C4A88
            E32D425AF06C65CE72FEF4E606AFCAE3F6C3D9BACE9F31C74F3F6373BB746773
            807DAB366C6F8B169721F82BD6D8FEF50C4344CF4A952AE603057462E38984F9
            BD14F0430121AD7867C5EE5E5D135C56946CEDD89D8D2244F022246F2321F20D
            84646C814D25240EED2740C05BD38B0CF441063E4CC08F769DD884770958E656
            E2DFF573E6216929940EB0CFAA9E36FB76E537DFDDBADEAA4D4C2D212EF584F4
            8380570BBC290BBF49C07EBB8E980209F3E56B8090394D23AA5CBFADB30C02A4
            DD7AB2D592D66C79EFFECC73F828B6A2FF2036D2C6B62E1DD942FB4ECDDD293F
            5840AC93B3B0DFAE039B8935B093906C8B8D8D93DAC9C90E73D8A23030F47737
            566F28DED6E573369210711D21456E98861584E462BAE4C8C02E08E8F55F08D8
            64CF05FC0801DEA4050BEAD8CD70759663C155D795299E3D7AA74AFB0DFCFBCD
            15EE855BBBF6640B08A9B5B66D1F43FBF60DA2FD06F8D38E9D035E2003C85687
            FF5C808F8F7DFCE2A5C2014C411069C90E7CDC8D85F71DCCBC7AF4617F91D858
            33EDDA1D49747279BA1F19F06BD98E5D18F5AD285BB4AC267EC1926AAFEEBDAB
            3D08590B011F03C99B227E990241B8F4202DED573B6153E373A3C7FED1BFBF03
            9B65F3119B8A2998426CF13510D617FC44480EFDA875987F8F5E55E36D5BB1B1
            9296EC7BBBF66C42BB0E6C42DB4FD817125B1648C865041FF5DEAF00275414CE
            E5DDC9C9C91DA1AA7D23ED30C76D0E7D3BB1EF3C498BD34B8924670D91284099
            1BD84624457A8924D26267E784795FE52721312184A4071392B61F4851C6F383
            C78444525BDBF16CE8D096CD65005B710CBF0FC49614151DC31F852F11DC1E5B
            AB3DEC203090EF5AF4C285E174CC9835D4C1610BB5B7F7A1831CBCE9A0419BE9
            88116E542A1D46D5EA5E74DAB44974F870673A6CD8223A64C84B1C1C16821F4C
            2E2E5F629BEEC2CF96463AF2430F38A82B2A64FC4A16AF7DFA344E5755C54F36
            479C541CBE7DCE6A38400C861954A59A4595CA99B4B47406984E158AA954A399
            88BF72DF8171602C15C56FC0D75410C680D1E02B2608A3A8C934826FBBE04F8D
            5B321FE86030A5A8A8E81641B08DB894C87119D98DCA9D10E4077CF1576D3B7C
            5B51E703F889B6096C049E801F30EBE0E7F0FBC31AE0065682E518DD32D825C0
            15B8A08D3358D4700C5B2CFCE89E0B36DF494CFC27BF157742653C6C0AB8CC2F
            A92016E568D82810092E820B20029C07E7C059701A9C0227C171100E8E813070
            047D1C02A120041C405D30EC7E4E6E4E4E647878F8A486B5A1D3E906D70BC243
            A32088706A4025A800CA46CA6115A00CF02B75492345B09C425000F2C113F018
            E4815C9003B241160757BF028CBC2424240447C66B5BB4AAAC6C40D6A347B199
            E9E986477239CB7CF0E083C840BB8CF4F4F7F2A0D17FFDDA3576E4F0E13C7777
            77D7A6E0FF02B8676C1CB0A312520000000049454E44AE426082}
          ParentFont = False
          TabOrder = 8
          Text = 'Generar entrada'
          Version = '5.0.1.4'
          OnClick = btnEntradaClick
        end
      end
      inherited Panel2: TPanel
        Left = 801
        ExplicitLeft = 801
      end
    end
    inherited PnlPro: TPanel
      Width = 931
      ExplicitWidth = 931
      inherited PBPaginacion: TAdvProgressBar
        Width = 860
        ExplicitWidth = 860
      end
      inherited PnlNum: TPanel
        Left = 861
        ExplicitLeft = 861
      end
    end
  end
  inherited cdDatos: TClientDataSet
    Top = 120
  end
  inherited dsDatos: TDataSource
    Left = 384
    Top = 136
  end
  inherited qGrabar: TClientDataSet
    Left = 632
    Top = 128
  end
  inherited mdDeposito: TClientDataSet
    Left = 568
    Top = 120
  end
  object frxDBOC: TfrxDBDataset
    UserName = 'frdsOC'
    CloseDataSource = False
    DataSet = cdOC
    BCDToCurrency = False
    Left = 120
    Top = 240
  end
  object cdOC: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 110
    Top = 288
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
    ReportOptions.LastChange = 41185.919081527780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  LocCuenta: Integer;'
      ''
      'procedure GroupFooter2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  while Engine.FreeSpace - (Child1.Height + GroupFooter1.Height)' +
        ' > Child1.Height do'
      '  begin'
      '    Child1.Visible := True;'
      '    Engine.ShowBand(Child1);'
      '  end;'
      '    '
      '  if Engine.FreeSpace - GroupFooter1.Height > 0 then'
      '  begin'
      '    Child1.Visible := True;'
      '    Engine.ShowBand(Child1);'
      
        '    Memo68.Height := Engine.FreeSpace - GroupFooter1.Height - 1;' +
        '    '
      
        '//    Memo69.Height := Engine.FreeSpace - GroupFooter1.Height - ' +
        '1;                                              '
      
        '//    Memo70.Height := Engine.FreeSpace - GroupFooter1.Height - ' +
        '1;                                              '
      
        '    Memo71.Height := Engine.FreeSpace - GroupFooter1.Height - 1;' +
        '                                              '
      '    Memo72.Height := Engine.FreeSpace - GroupFooter1.Height - 1;'
      '    Memo73.Height := Engine.FreeSpace - GroupFooter1.Height - 1;'
      '    Memo74.Height := Engine.FreeSpace - GroupFooter1.Height - 1;'
      '    Memo75.Height := Engine.FreeSpace - GroupFooter1.Height - 1;'
      
        '    Memo76.Height := Engine.FreeSpace - GroupFooter1.Height - 1;' +
        '        '
      
        '    Child1.Height := Engine.FreeSpace - GroupFooter1.Height - 1;' +
        '                                                                ' +
        '            '
      '  end;  '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Inc(LocCuenta);'
      '  Memo43.Text := IntToStr(LocCuenta);'
      '//  Memo51.Text := IntToStr(LocCuenta);  '
      'end;'
      ''
      'begin'
      '  LocCuenta := 0;  '
      'end.')
    Left = 240
    Top = 320
    Datasets = <
      item
        DataSet = frxDBOC
        DataSetName = 'frdsOC'
      end
      item
        DataSet = frdsOCdetalle
        DataSetName = 'frdsOCdetalles'
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
        Name = 'elaboronombre'
        Value = Null
      end
      item
        Name = 'elaboropuesto'
        Value = Null
      end
      item
        Name = 'rfc'
        Value = Null
      end
      item
        Name = 'domiciliofiscalorg'
        Value = Null
      end
      item
        Name = 'domicilioorg'
        Value = Null
      end
      item
        Name = 'telefono1'
        Value = Null
      end
      item
        Name = 'numerotexto'
        Value = Null
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
      object ReportTitle1: TfrxReportTitle
        Height = 257.008040000000000000
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
        object Memo19: TfrxMemoView
          Top = 117.165430000000000000
          Width = 370.393940000000000000
          Height = 136.063080000000000000
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
        object Memo20: TfrxMemoView
          Left = 370.393940000000000000
          Top = 117.165430000000000000
          Width = 370.393940000000000000
          Height = 136.063080000000000000
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
        object Memo2: TfrxMemoView
          Top = 128.504020000000000000
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
          Top = 147.401670000000000000
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
          Top = 166.299320000000000000
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
          Top = 195.196970000000000000
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
        object Memo6: TfrxMemoView
          Top = 215.094620000000000000
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
          Top = 233.551330000000000000
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
        object Memo8: TfrxMemoView
          Left = 370.393940000000000000
          Top = 118.504020000000000000
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
          Top = 146.401670000000000000
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
          Top = 166.299320000000000000
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
          Left = 370.393940000000000000
          Top = 185.196970000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
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
        object Memo12: TfrxMemoView
          Left = 370.393940000000000000
          Top = 212.874150000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
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
        object Memo16: TfrxMemoView
          Left = -3.779530000000000000
          Top = 98.267780000000000000
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
          Left = 98.267780000000000000
          Top = 75.590600000000000000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COTIZACION No. [frdsOC."seriecotizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 94.488250000000000000
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
            '[tituloorganizacion]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 94.488250000000000000
          Top = 164.299320000000000000
          Width = 275.905690000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frdsOC."domicilioproveedor"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 94.488250000000000000
          Top = 215.094620000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frdsOC."cotizacionreferencia"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 94.488250000000000000
          Top = 235.551330000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frdsOC."fecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 514.016080000000000000
          Top = 119.504020000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[organizacion] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 514.016080000000000000
          Top = 136.063080000000000000
          Width = 226.771800000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[domiciliofiscalorg] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 514.016080000000000000
          Top = 166.299320000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rfc] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 517.795610000000000000
          Top = 183.417440000000000000
          Width = 219.212740000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[domicilioorg] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 523.575140000000000000
          Top = 214.874150000000000000
          Width = 215.433210000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[telefono1] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 94.488250000000000000
          Top = 128.504020000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ' [frdsOC."razonsocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 94.488250000000000000
          Top = 147.401670000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ' [frdsOC."contacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 94.488250000000000000
          Top = 195.196970000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ' [frdsOC."telefonoproveedor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 370.393940000000000000
          Top = 181.417440000000000000
          Width = 370.393940000000000000
          ShowHint = False
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
        object Memo42: TfrxMemoView
          Left = 370.393940000000000000
          Top = 230.551330000000000000
          Width = 177.637910000000000000
          Height = 22.677180000000000000
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
            'NO. DE [Uppercase(<nivel>)] :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 548.031850000000000000
          Top = 230.551330000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
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
            ' [Contrato]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 159.181200000000000000
        Top = 510.236550000000000000
        Width = 740.409927000000000000
        object Memo63: TfrxMemoView
          Left = 597.165740000000000000
          Top = 132.724490000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.TopLine.Style = fsSolid
          Frame.BottomLine.Style = fsSolid
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 668.976810000000000000
          Top = 132.724490000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.TopLine.Style = fsSolid
          Frame.BottomLine.Style = fsSolid
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frdsOCdetalles."costo">,MasterData1)+SUM(<frdsOCdetalles."' +
              'costo">*(<frdsOCdetalles."tasa">/100),MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 597.165740000000000000
          Top = 113.826840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frdsOCdetalles."codigoimpuesto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 668.976810000000000000
          Top = 113.826840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frdsOCdetalles."costo">*(<frdsOCdetalles."tasa">/100),Mast' +
              'erData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 597.165740000000000000
          Top = 94.929189999999900000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'SUMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 668.976810000000000000
          Top = 94.929189999999900000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdsOCdetalles."costo">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Top = 38.236240000000010000
          Width = 597.165740000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Style = fsDouble
          Frame.RightLine.Style = fsDouble
          Memo.UTF8W = (
            'Nota:  [frdsOC."nota1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Top = 94.929190000000120000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          Frame.RightLine.Style = fsSolid
          Frame.BottomLine.Style = fsSolid
          Memo.UTF8W = (
            'Aplicado:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Top = 132.724490000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.RightLine.Style = fsSolid
          Frame.BottomLine.Style = fsSolid
          Memo.UTF8W = (
            'Son:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 75.590600000000000000
          Top = 72.252009999999990000
          Width = 521.575140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            ' [frdsOC."condicionpago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 75.590600000000000000
          Top = 94.929190000000000000
          Width = 521.575140000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            ' [frdsOC."aplicado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 75.590600000000000000
          Top = 132.724490000000000000
          Width = 521.575140000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          HAlign = haCenter
          Memo.UTF8W = (
            ' [numerotexto]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 597.165740000000000000
          Top = 38.236240000000010000
          Width = 143.622140000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Style = fsDouble
          Frame.RightLine.Style = fsDouble
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 597.165740000000000000
          Top = 72.252010000000220000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Top = 19.118119999999920000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
        object Memo88: TfrxMemoView
          Left = 49.133890000000000000
          Top = 19.118119999999920000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.BottomLine.Style = fsSolid
          Memo.UTF8W = (
            'Garantia:  [frdsOC."garantia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 393.071120000000000000
          Top = 19.118119999999920000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
        object Memo90: TfrxMemoView
          Left = 461.102660000000000000
          Top = 19.118119999999920000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
        object Memo91: TfrxMemoView
          Left = 532.913730000000000000
          Top = 19.118119999999920000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
        object Memo92: TfrxMemoView
          Left = 597.165740000000000000
          Top = 19.118119999999920000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
        object Memo93: TfrxMemoView
          Left = 668.976810000000000000
          Top = 19.118119999999920000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
        object Memo94: TfrxMemoView
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Style = fsDouble
          Frame.RightLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 49.133890000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Factura:  [frdsOC."factura"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 393.071120000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 461.102660000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 532.913730000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 597.165740000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 668.976810000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Style = fsDouble
          Frame.RightLine.Style = fsDouble
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Top = 71.811070000000030000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
          DataSetName = 'frdsCotizacionDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          Frame.RightLine.Style = fsSolid
          Frame.BottomLine.Style = fsSolid
          Memo.UTF8W = (
            'Condicion Pago:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 294.803340000000000000
        Top = 729.449290000000000000
        Width = 740.409927000000000000
        object Memo33: TfrxMemoView
          Top = 98.267780000000010000
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
        object Memo32: TfrxMemoView
          Width = 740.787880000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Top = 113.385900000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 192.756030000000000000
          Top = 113.385900000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ELABORA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 2.000000000000000000
          Top = 2.000000000000000000
          Width = 529.134200000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IMPORTANTE: CONDICIONES PARA EFECTUAR NUESTRO PAGO'
            
              'ACOMPA'#209'AR LA ENTREGA DEL MATERIAL ESPECIFICANDO EN CUERPO DE FAC' +
              'TURA Y EN CARTA GARNTIA'
            
              '1)ORIGEN DE FABRICACION, SI ES NACIONAL O EXTRANJERA EN ESTE CAS' +
              'O ANEXAR EL CERTIFICADO DE ORIGEN.'
            '2) QUE EL PRODUCTO ENTREGADO ES NUEVO, NO USADO NI REHABILITADO.'
            
              '3) ACOMPA'#209'AR EL CERTIFICADO DE CALIDAD EXPEDIDO POR EL FABRICANT' +
              'E.'
            
              '4) EL TIEMPO DE GARANTIA, DETALLANDOLO, QUE GOZARA EL PRODUCTO E' +
              'N SU USO.'
            
              '5) LOS CATALOGOS Y  MANUALES DE INSTALACION Y MANTENIMIENTO DEL ' +
              'EQUIPO.'
            
              '6) DEBERA ESPECIFICAR LA MARCA Y/O MODELO DEL PRODUCTO SUMINISTR' +
              'ADO.'
            
              '7) INDEPENDIENTEMENTE Y COMO COMPLEMENTO DE LOS PUNTOS ANTERIORE' +
              'S, EL MATERIAL Y DOCUMENTACION AQUI SOLICITADO.'
            ''
            
              'ESTARA SUJETO A LA INSPECCION Y VERIFICACION DE NUESTRO DEPARTAM' +
              'ENTO DE INGENIERIA.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Top = 275.905690000001000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Forma No 9 / No. de [NameCase(<nivel>)] : [Contrato]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 548.031850000000000000
          Top = 275.905690000001000000
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
          Left = 60.472480000000000000
          Top = 287.244280000000000000
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
        object Memo77: TfrxMemoView
          Left = 393.071120000000000000
          Top = 113.385900000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AUTORIZA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 589.606680000000000000
          Top = 98.267780000000010000
          Width = 151.181200000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 604.724800000000000000
          Top = 105.826840000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'POR EL VENDEDOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 604.724800000000000000
          Top = 147.401670000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '________________________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '_______________________________'
            '[frdsOC."usuario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 7.559060000000000000
          Top = 173.858380000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CARGO:  [frdsOC."cargousuario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 200.315090000000000000
          Top = 173.858380000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CARGO: [frdsOC."validocargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 200.315090000000000000
          Top = 147.401670000000000000
          Width = 177.637910000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '________________________________'
            '[frdsOC."validonombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 400.630180000000000000
          Top = 173.858380000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CARGO: [frdsOC."autorizocargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 400.630180000000000000
          Top = 147.401670000000000000
          Width = 185.196970000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '__________________________________'
            '[frdsOC."autorizonombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 30.236240000000000000
        Top = 359.055350000000000000
        Width = 740.409927000000000000
        Condition = 'frdsOC."idoc"'
        PrintChildIfInvisible = True
        object Memo41: TfrxMemoView
          Width = 49.133890000000000000
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
          Left = 49.133890000000000000
          Width = 343.937230000000000000
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
          Left = 393.071120000000000000
          Width = 68.031540000000000000
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
          Left = 461.102660000000000000
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
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 532.913730000000000000
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
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 336.378170000000000000
        Width = 740.409927000000000000
        Condition = 'frdsOC."idoc"'
      end
      object GroupFooter2: TfrxGroupFooter
        Top = 449.764070000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'GroupFooter2OnAfterPrint'
      end
      object Child1: TfrxChild
        Height = 15.118120000000000000
        Top = 472.441250000000000000
        Width = 740.409927000000000000
        object Memo68: TfrxMemoView
          Width = 49.133890000000000000
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
          Left = 49.133890000000000000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 393.071120000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
        object Memo73: TfrxMemoView
          Left = 461.102660000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
          Left = 532.913730000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
          Left = 597.165740000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
          Left = 668.976810000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
        Top = 411.968770000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frdsOCdetalle
        DataSetName = 'frdsOCdetalles'
        RowCount = 0
        Stretched = True
        object Memo43: TfrxMemoView
          Width = 49.133890000000000000
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
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 49.133890000000000000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
          Memo.UTF8W = (
            '[frdsOCdetalles."tituloarticulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 393.071120000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
            '[frdsOCdetalles."cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 461.102660000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
            '[frdsOCdetalles."codigounidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 532.913730000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
            '[frdsOCdetalles."tiempoentrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 597.165740000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
          Memo.UTF8W = (
            '[frdsOCdetalles."precio"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 668.976810000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmCotizaciones.frdsCotizacionDetalle
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
          Memo.UTF8W = (
            '[frdsOCdetalles."costo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
  object CdOCdetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 334
    Top = 304
  end
  object frdsOCdetalle: TfrxDBDataset
    UserName = 'frdsOCdetalles'
    CloseDataSource = False
    DataSet = CdOCdetalle
    BCDToCurrency = False
    Left = 312
    Top = 240
  end
end
