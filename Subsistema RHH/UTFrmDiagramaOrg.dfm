object FrmDiagramaOrg: TFrmDiagramaOrg
  Left = 0
  Top = 0
  ActiveControl = stpHistorial
  Caption = 'Diagrama organizacional'
  ClientHeight = 402
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 51
    Width = 717
    Height = 351
    HorzScrollBar.Style = ssHotTrack
    HorzScrollBar.Tracking = True
    VertScrollBar.Style = ssHotTrack
    VertScrollBar.Tracking = True
    Align = alClient
    DoubleBuffered = True
    Color = clWhite
    ParentColor = False
    ParentDoubleBuffered = False
    TabOrder = 0
    object PanelDiag: TPanel
      Left = 3
      Top = 3
      Width = 614
      Height = 274
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      OnClick = PanelDiagClick
      OnMouseDown = PanelDiagMouseDown
      OnMouseMove = PanelDiagMouseMove
      OnMouseUp = PanelDiagMouseUp
      object ListaCargos: TAdvSmoothPanel
        Left = 315
        Top = 24
        Width = 288
        Height = 225
        Cursor = crDefault
        Caption.Text = ' Cat'#225'logo de Puestos'
        Caption.HTMLFont.Charset = DEFAULT_CHARSET
        Caption.HTMLFont.Color = clWindowText
        Caption.HTMLFont.Height = -11
        Caption.HTMLFont.Name = 'Tahoma'
        Caption.HTMLFont.Style = []
        Caption.Font.Charset = OEM_CHARSET
        Caption.Font.Color = clBlack
        Caption.Font.Height = -16
        Caption.Font.Name = 'Modern'
        Caption.Font.Style = [fsBold]
        Fill.Color = 13696508
        Fill.ColorTo = 13696508
        Fill.ColorMirror = 13696508
        Fill.ColorMirrorTo = clWhite
        Fill.GradientMirrorType = gtVertical
        Fill.BorderColor = 14922381
        Fill.Rounding = 10
        Fill.ShadowOffset = 10
        Fill.Glow = gmNone
        Version = '1.0.9.6'
        OnMouseEnter = ListaCargosMouseEnter
        OnMouseLeave = ListaCargosMouseLeave
        Visible = False
        TabOrder = 0
        object chkVerPersonal: TAdvOfficeCheckBox
          Left = 185
          Top = 189
          Width = 86
          Height = 20
          TabOrder = 0
          OnClick = chkVerPersonalClick
          Alignment = taLeftJustify
          Caption = 'Ver personal'
          ReturnIsTab = False
          Version = '1.3.2.0'
        end
        object scrlbxLista: TAdvScrollBox
          Left = 4
          Top = 21
          Width = 272
          Height = 158
          BorderStyle = bsNone
          DoubleBuffered = True
          Color = clInfoBk
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          TabOrder = 1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 51
    Align = alTop
    TabOrder = 1
    object pnl5: TPanel
      Left = 1
      Top = 1
      Width = 715
      Height = 49
      Align = alClient
      TabOrder = 0
      DesignSize = (
        715
        49)
      object stpHistorial: TAdvSmoothStepControl
        Left = 10
        Top = 6
        Width = 695
        Height = 39
        Fill.Color = clWhite
        Fill.ColorMirror = clNone
        Fill.ColorMirrorTo = clNone
        Fill.GradientType = gtSolid
        Fill.BorderColor = clGray
        Fill.Rounding = 0
        Fill.ShadowOffset = 0
        Fill.Glow = gmNone
        StepActions = <>
        Appearance.InActiveCaptionFont.Charset = DEFAULT_CHARSET
        Appearance.InActiveCaptionFont.Color = clWindowText
        Appearance.InActiveCaptionFont.Height = -11
        Appearance.InActiveCaptionFont.Name = 'Tahoma'
        Appearance.InActiveCaptionFont.Style = []
        Appearance.ActiveCaptionFont.Charset = DEFAULT_CHARSET
        Appearance.ActiveCaptionFont.Color = clWindowText
        Appearance.ActiveCaptionFont.Height = -11
        Appearance.ActiveCaptionFont.Name = 'Tahoma'
        Appearance.ActiveCaptionFont.Style = []
        Appearance.ProcessedCaptionFont.Charset = DEFAULT_CHARSET
        Appearance.ProcessedCaptionFont.Color = clWindowText
        Appearance.ProcessedCaptionFont.Height = -11
        Appearance.ProcessedCaptionFont.Name = 'Tahoma'
        Appearance.ProcessedCaptionFont.Style = []
        Appearance.InActiveDescriptionFont.Charset = DEFAULT_CHARSET
        Appearance.InActiveDescriptionFont.Color = clWindowText
        Appearance.InActiveDescriptionFont.Height = -11
        Appearance.InActiveDescriptionFont.Name = 'Tahoma'
        Appearance.InActiveDescriptionFont.Style = []
        Appearance.ActiveDescriptionFont.Charset = DEFAULT_CHARSET
        Appearance.ActiveDescriptionFont.Color = clWindowText
        Appearance.ActiveDescriptionFont.Height = -11
        Appearance.ActiveDescriptionFont.Name = 'Tahoma'
        Appearance.ActiveDescriptionFont.Style = []
        Appearance.ProcessedDescriptionFont.Charset = DEFAULT_CHARSET
        Appearance.ProcessedDescriptionFont.Color = clWindowText
        Appearance.ProcessedDescriptionFont.Height = -11
        Appearance.ProcessedDescriptionFont.Name = 'Tahoma'
        Appearance.ProcessedDescriptionFont.Style = []
        Appearance.ActiveAppearance.ShapeColor = 5294077
        Appearance.ActiveAppearance.DescriptionColor = clBlack
        Appearance.ActiveAppearance.BackGroundFill.Color = 16053492
        Appearance.ActiveAppearance.BackGroundFill.ColorTo = clNone
        Appearance.ActiveAppearance.BackGroundFill.ColorMirror = 14540253
        Appearance.ActiveAppearance.BackGroundFill.ColorMirrorTo = 13158600
        Appearance.ActiveAppearance.BackGroundFill.GradientType = gtSolid
        Appearance.ActiveAppearance.BackGroundFill.GradientMirrorType = gtVertical
        Appearance.ActiveAppearance.BackGroundFill.BorderColor = clGray
        Appearance.ActiveAppearance.BackGroundFill.Rounding = 0
        Appearance.ActiveAppearance.BackGroundFill.ShadowOffset = 0
        Appearance.ActiveAppearance.BackGroundFill.Glow = gmNone
        Appearance.InActiveAppearance.ShapeColor = 16053492
        Appearance.InActiveAppearance.DescriptionColor = clBlack
        Appearance.InActiveAppearance.BackGroundFill.Color = 5294077
        Appearance.InActiveAppearance.BackGroundFill.ColorTo = clNone
        Appearance.InActiveAppearance.BackGroundFill.ColorMirror = 3314943
        Appearance.InActiveAppearance.BackGroundFill.ColorMirrorTo = 749567
        Appearance.InActiveAppearance.BackGroundFill.GradientType = gtSolid
        Appearance.InActiveAppearance.BackGroundFill.GradientMirrorType = gtVertical
        Appearance.InActiveAppearance.BackGroundFill.BorderColor = clBlack
        Appearance.InActiveAppearance.BackGroundFill.Rounding = 0
        Appearance.InActiveAppearance.BackGroundFill.ShadowOffset = 0
        Appearance.InActiveAppearance.BackGroundFill.Glow = gmNone
        Appearance.ProcessedAppearance.ShapeColor = 16053492
        Appearance.ProcessedAppearance.DescriptionColor = clBlack
        Appearance.ProcessedAppearance.BackGroundFill.ColorMirror = clNone
        Appearance.ProcessedAppearance.BackGroundFill.ColorMirrorTo = clNone
        Appearance.ProcessedAppearance.BackGroundFill.BorderColor = clNone
        Appearance.ProcessedAppearance.BackGroundFill.Rounding = 0
        Appearance.ProcessedAppearance.BackGroundFill.ShadowOffset = 0
        Appearance.ProcessedAppearance.BackGroundFill.Glow = gmNone
        Appearance.ShapeStyle = sasNone
        Appearance.ProgressBackGround.Color = 5294077
        Appearance.ProgressBackGround.ColorTo = clNone
        Appearance.ProgressBackGround.ColorMirror = 3314943
        Appearance.ProgressBackGround.ColorMirrorTo = 749567
        Appearance.ProgressBackGround.GradientType = gtSolid
        Appearance.ProgressBackGround.GradientMirrorType = gtVertical
        Appearance.ProgressBackGround.BorderColor = clBlack
        Appearance.ProgressBackGround.Rounding = 0
        Appearance.ProgressBackGround.ShadowOffset = 0
        Appearance.ProgressBackGround.Glow = gmNone
        Appearance.Progress.Color = 16053492
        Appearance.Progress.ColorTo = clNone
        Appearance.Progress.ColorMirror = 14540253
        Appearance.Progress.ColorMirrorTo = 13158600
        Appearance.Progress.GradientType = gtSolid
        Appearance.Progress.GradientMirrorType = gtVertical
        Appearance.Progress.BorderColor = clGray
        Appearance.Progress.Rounding = 0
        Appearance.Progress.ShadowOffset = 0
        Appearance.Progress.Glow = gmNone
        Appearance.SeparatorFill.Color = 16053492
        Appearance.SeparatorFill.ColorTo = clNone
        Appearance.SeparatorFill.ColorMirror = 14540253
        Appearance.SeparatorFill.ColorMirrorTo = 13158600
        Appearance.SeparatorFill.GradientMirrorType = gtVertical
        Appearance.SeparatorFill.BorderColor = 16053492
        Appearance.SeparatorFill.Rounding = 0
        Appearance.SeparatorFill.ShadowOffset = 0
        Appearance.SeparatorFill.Glow = gmNone
        Appearance.SeparatorWidth = 3
        Appearance.DescriptionFill.Color = 16053492
        Appearance.DescriptionFill.ColorTo = clNone
        Appearance.DescriptionFill.ColorMirror = 14540253
        Appearance.DescriptionFill.ColorMirrorTo = 13158600
        Appearance.DescriptionFill.GradientType = gtSolid
        Appearance.DescriptionFill.GradientMirrorType = gtVertical
        Appearance.DescriptionFill.BorderColor = clGray
        Appearance.DescriptionFill.Rounding = 0
        Appearance.DescriptionFill.ShadowOffset = 0
        Appearance.DescriptionFill.Glow = gmNone
        OnStepClick = stpHistorialStepClick
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
    end
  end
  object cmbNiveles: TComboBox
    Left = 197
    Top = 9
    Width = 61
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    Visible = False
  end
  object AdvToolBarFantasyStyler1: TAdvToolBarFantasyStyler
    Style = bsAquaBlue
    ButtonAppearance.Color = 13664560
    ButtonAppearance.ColorTo = 16707966
    ButtonAppearance.ColorChecked = 16707966
    ButtonAppearance.ColorCheckedTo = 13664560
    ButtonAppearance.ColorDown = 15130800
    ButtonAppearance.ColorDownTo = 16383935
    ButtonAppearance.ColorHot = 15130800
    ButtonAppearance.ColorHotTo = 16383935
    ButtonAppearance.CaptionTextColorHot = 13664560
    ButtonAppearance.CaptionTextColorDown = 33023
    ButtonAppearance.CaptionTextColorChecked = 13664560
    ButtonAppearance.BorderDownColor = clNone
    ButtonAppearance.BorderHotColor = clNone
    ButtonAppearance.BorderCheckedColor = clNone
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = 15130800
    CaptionAppearance.CaptionColorTo = 15130800
    CaptionAppearance.CaptionTextColor = 13664560
    CaptionAppearance.CaptionBorderColor = 15130800
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = clMenu
    Color.ColorTo = clMenu
    Color.Direction = gdHorizontal
    Color.Mirror.Color = clWhite
    Color.Mirror.ColorTo = clBtnFace
    Color.Mirror.ColorMirror = 15587784
    Color.Mirror.ColorMirrorTo = 16774371
    ColorHot.Color = clNone
    ColorHot.ColorTo = clNone
    ColorHot.Direction = gdHorizontal
    ColorHot.Mirror.Color = clWhite
    ColorHot.Mirror.ColorTo = clBtnFace
    ColorHot.Mirror.ColorMirror = 15587784
    ColorHot.Mirror.ColorMirrorTo = 16774371
    CompactGlowButtonAppearance.ColorChecked = 16111818
    CompactGlowButtonAppearance.ColorCheckedTo = 16367008
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 16111818
    CompactGlowButtonAppearance.ColorDownTo = 16367008
    CompactGlowButtonAppearance.ColorHot = 16117985
    CompactGlowButtonAppearance.ColorHotTo = 16372402
    CompactGlowButtonAppearance.ColorMirrorHot = 16107693
    CompactGlowButtonAppearance.ColorMirrorHotTo = 16775412
    CompactGlowButtonAppearance.ColorMirrorDown = 16102556
    CompactGlowButtonAppearance.ColorMirrorDownTo = 16768988
    CompactGlowButtonAppearance.ColorMirrorChecked = 16102556
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 16768988
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    DockColor.Color = clWhite
    DockColor.ColorTo = clWhite
    DockColor.Direction = gdVertical
    DockColor.Steps = 128
    DragGripStyle = dsSingleLine
    FloatingWindowBorderColor = 7171437
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2535675
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    GlowButtonAppearance.ColorChecked = 16111818
    GlowButtonAppearance.ColorCheckedTo = 16367008
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 16111818
    GlowButtonAppearance.ColorDownTo = 16367008
    GlowButtonAppearance.ColorHot = 16117985
    GlowButtonAppearance.ColorHotTo = 16372402
    GlowButtonAppearance.ColorMirrorHot = 16107693
    GlowButtonAppearance.ColorMirrorHotTo = 16775412
    GlowButtonAppearance.ColorMirrorDown = 16102556
    GlowButtonAppearance.ColorMirrorDownTo = 16768988
    GlowButtonAppearance.ColorMirrorChecked = 16102556
    GlowButtonAppearance.ColorMirrorCheckedTo = 16768988
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GroupAppearance.BorderColor = 10729644
    GroupAppearance.Color = clWhite
    GroupAppearance.ColorTo = clWhite
    GroupAppearance.ColorMirror = clSilver
    GroupAppearance.ColorMirrorTo = clWhite
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -11
    GroupAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = clBlue
    GroupAppearance.CaptionAppearance.CaptionColor = clGray
    GroupAppearance.PageAppearance.BorderColor = clGray
    GroupAppearance.PageAppearance.Color = clWhite
    GroupAppearance.PageAppearance.ColorTo = clWhite
    GroupAppearance.PageAppearance.ColorMirror = clSilver
    GroupAppearance.PageAppearance.ColorMirrorTo = clWhite
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = 12888726
    GroupAppearance.PageAppearance.HighLightColor = 16644558
    GroupAppearance.TabAppearance.BorderColor = clBtnFace
    GroupAppearance.TabAppearance.BorderColorHot = clBlue
    GroupAppearance.TabAppearance.BorderColorSelected = clBtnFace
    GroupAppearance.TabAppearance.BorderColorSelectedHot = clNone
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = clWhite
    GroupAppearance.TabAppearance.ColorSelectedTo = clBtnFace
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = clYellow
    GroupAppearance.TabAppearance.ColorHotTo = clNone
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = clNone
    GroupAppearance.TabAppearance.ColorMirrorHotTo = clNone
    GroupAppearance.TabAppearance.ColorMirrorSelected = clWhite
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggVertical
    GroupAppearance.TabAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = clBlue
    GroupAppearance.TabAppearance.TextColorHot = clBlue
    GroupAppearance.TabAppearance.TextColorSelected = clBlue
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.TabAppearance.ShadowColor = 15255470
    GroupAppearance.TabAppearance.HighLightColor = 16775871
    GroupAppearance.TabAppearance.HighLightColorHot = 16643309
    GroupAppearance.TabAppearance.HighLightColorSelected = 6540536
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 12451839
    GroupAppearance.TabAppearance.HighLightColorDown = 16776144
    GroupAppearance.ToolBarAppearance.Color.Color = clWhite
    GroupAppearance.ToolBarAppearance.Color.ColorTo = clBtnFace
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = clNone
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = clNone
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = clGray
    PageAppearance.Color = clWhite
    PageAppearance.ColorTo = clWhite
    PageAppearance.ColorMirror = clSilver
    PageAppearance.ColorMirrorTo = clWhite
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = 12888726
    PageAppearance.HighLightColor = 16644558
    PagerCaption.BorderColor = clGray
    PagerCaption.Color = clWhite
    PagerCaption.ColorTo = clWhite
    PagerCaption.ColorMirror = clSilver
    PagerCaption.ColorMirrorTo = clWhite
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clBlue
    PagerCaption.TextColorExtended = clGray
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -11
    PagerCaption.Font.Name = 'Segoe UI'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = clGray
    QATAppearance.Color = clWhite
    QATAppearance.ColorTo = clSilver
    QATAppearance.FullSizeBorderColor = clBlack
    QATAppearance.FullSizeColor = 12951425
    QATAppearance.FullSizeColorTo = 14922381
    RightHandleColor = 13664560
    RightHandleColorTo = 16707966
    RightHandleColorHot = 15130800
    RightHandleColorHotTo = 16383935
    RightHandleColorDown = 15130800
    RightHandleColorDownTo = 16707966
    TabAppearance.BorderColor = clBtnFace
    TabAppearance.BorderColorHot = clBlue
    TabAppearance.BorderColorSelected = clBtnFace
    TabAppearance.BorderColorSelectedHot = clNone
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = clWhite
    TabAppearance.ColorSelectedTo = clBtnFace
    TabAppearance.ColorDisabled = clNone
    TabAppearance.ColorDisabledTo = clNone
    TabAppearance.ColorHot = clYellow
    TabAppearance.ColorHotTo = clNone
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = clNone
    TabAppearance.ColorMirrorHotTo = clNone
    TabAppearance.ColorMirrorSelected = clWhite
    TabAppearance.ColorMirrorSelectedTo = clWhite
    TabAppearance.ColorMirrorDisabled = clNone
    TabAppearance.ColorMirrorDisabledTo = clNone
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clBlue
    TabAppearance.TextColorHot = clBlue
    TabAppearance.TextColorSelected = clBlue
    TabAppearance.TextColorDisabled = clWhite
    TabAppearance.ShadowColor = 15255470
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16643309
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = clWhite
    TabAppearance.BackGround.ColorTo = clBtnFace
    TabAppearance.BackGround.Direction = gdHorizontal
    Left = 576
    Top = 328
  end
  object Timer1: TTimer
    Interval = 5
    OnTimer = Timer1Timer
    Left = 648
    Top = 48
  end
  object pmnuPanel: TAdvPopupMenu
    Version = '2.5.3.4'
    Left = 600
    Top = 48
    object Agregardepartamento1: TMenuItem
      Caption = 'Agregar departamento'
      OnClick = Agregardepartamento1Click
    end
    object Modificar1: TMenuItem
      Caption = 'Modificar departamento'
      OnClick = Modificar1Click
    end
    object Eliminar1: TMenuItem
      Caption = 'Eliminar departamento'
      OnClick = Eliminar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Imprimirdetalle1: TMenuItem
      Caption = 'Imprimir detalle'
      OnClick = Imprimirdetalle1Click
    end
  end
  object cdPlazas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 256
  end
  object TimerLeave: TTimer
    Enabled = False
    Interval = 900
    OnTimer = TimerLeaveTimer
    Left = 120
    Top = 312
  end
  object TimerShow: TTimer
    Enabled = False
    Interval = 1300
    OnTimer = TimerShowTimer
    Left = 192
    Top = 312
  end
  object TimerNodo: TTimer
    Enabled = False
    Left = 48
    Top = 312
  end
  object frxdsPlazas: TfrxDBDataset
    UserName = 'DatosPlazas'
    CloseDataSource = False
    DataSource = dsPlazas
    BCDToCurrency = False
    Left = 328
    Top = 176
  end
  object dsPlazas: TDataSource
    AutoEdit = False
    DataSet = mdPlazas
    Left = 456
    Top = 256
  end
  object mdPlazas: TJvMemoryData
    FieldDefs = <>
    Left = 392
    Top = 256
  end
  object pmnuLabelEmpl: TAdvPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    Version = '2.5.3.4'
    Left = 528
    Top = 48
    object Datospersonales1: TMenuItem
      Caption = 'Datos personales'
      OnClick = Datospersonales1Click
    end
    object Historial1: TMenuItem
      Caption = 'Historial'
      OnClick = Historial1Click
    end
    object Datosdelanomina1: TMenuItem
      Caption = 'Datos de la nomina'
      OnClick = Datosdelanomina1Click
    end
  end
  object pmnuLabelVacante: TAdvPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    Version = '2.5.3.4'
    Left = 440
    Top = 48
    object Verdocumentacinparacontratacin1: TMenuItem
      Caption = 'Ver documentaci'#243'n para contrataci'#243'n'
      OnClick = Verdocumentacinparacontratacin1Click
    end
    object Asignarpostulante1: TMenuItem
      Caption = 'Asignar postulantes al cargo seleccionado'
      OnClick = Asignarpostulante1Click
    end
    object AsignarAspirantesalDepartamento1: TMenuItem
      Caption = 'Asignar Aspirantes al Departamento'
      OnClick = AsignarAspirantesalDepartamento1Click
    end
    object Asignarempleado1: TMenuItem
      Caption = 'Reporte de postulantes'
      OnClick = Asignarempleado1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CambiaraNodisponible1: TMenuItem
      Caption = 'Cambiar a "No disponible"'
      OnClick = CambiaraNodisponible1Click
    end
    object CancelarVacante1: TMenuItem
      Caption = 'Cancelar Vacante'
      OnClick = CancelarVacante2Click
    end
  end
  object pmnuLabelVacanteND: TAdvPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    Version = '2.5.3.4'
    Left = 320
    Top = 48
    object MenuItem4: TMenuItem
      Caption = 'Cambiar a "Disponible"'
      OnClick = MenuItem4Click
    end
    object CancelarVacante2: TMenuItem
      Caption = 'Cancelar Vacante'
      OnClick = CancelarVacante2Click
    end
  end
  object frxdsReporte: TfrxDBDataset
    UserName = 'DatosReporte'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 544
    Top = 192
  end
  object frxrpReporte: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41251.401945162000000000
    ReportOptions.LastChange = 41254.432025381950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 616
    Top = 192
    Datasets = <
      item
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
        Height = 343.937230000000000000
        Top = 177.637910000000000000
        Width = 740.787880000000000000
        object Memo3: TfrxMemoView
          Left = 22.677180000000000000
          Top = 272.126160000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Top = 3.779529999999994000
          Width = 737.008350000000000000
          Height = 340.157700000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Top = 245.669450000000000000
          Width = 714.331170000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 22.677180000000000000
          Top = 174.078850000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 22.677180000000000000
          Top = 294.803339999999900000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 22.677180000000000000
          Top = 124.724490000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 22.677180000000000000
          Top = 98.267779999999990000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 90.708720000000000000
          Top = 56.692949999999990000
          Width = 646.299630000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 90.708720000000000000
          Top = 34.015770000000010000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDatos."NombreCompleto"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 90.708720000000000000
          Top = 64.252010000000010000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Curp:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 132.283550000000000000
          Top = 64.252010000000010000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."curp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 389.291590000000000000
          Top = 64.252010000000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RFC:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 427.086890000000000000
          Top = 64.252010000000010000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."rfc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 22.677180000000000000
          Top = 98.267779999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'No. IMSS:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 90.708720000000000000
          Top = 98.267779999999990000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[frxDBDatos."numerosegurosocial"]')
        end
        object Memo15: TfrxMemoView
          Left = 22.677180000000000000
          Top = 173.858380000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contacto:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 90.708720000000000000
          Top = 173.858380000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[frxDBDatos."contacto"]')
        end
        object Memo18: TfrxMemoView
          Left = 147.401670000000000000
          Top = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDatos."Gruposanguineo"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 22.677180000000000000
          Top = 124.724490000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Grupo Sanguineo:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 22.677180000000000000
          Top = 147.401670000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Correo Electronico:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 241.889920000000000000
          Top = 124.724490000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefono:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 306.141930000000000000
          Top = 124.724490000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDatos."telefono"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 154.960730000000000000
          Top = 147.401670000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDatos."correo"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 476.220780000000000000
          Top = 173.858380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tel: Contacto:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 570.709030000000000000
          Top = 173.858380000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."telefono"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 200.315090000000000000
          Width = 737.008350000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clSilver
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
          Left = 22.677165350000000000
          Top = 219.212740000000000000
          Width = 714.331170000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 90.708661420000000000
          Top = 11.338590000000010000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDatos."codigopersonal"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 374.173470000000000000
          Top = 98.488250000000030000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Reingreso:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 449.764070000000000000
          Top = 98.488250000000030000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[frxDBDatos."fechaalta"]')
        end
        object Memo38: TfrxMemoView
          Left = 22.677180000000000000
          Top = 249.669450000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cargo:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 75.590600000000000000
          Top = 249.669450000000000000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."TituloCargo"] ([frxDBDatos."CodigoCargo"])')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 22.677180000000000000
          Top = 223.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Departamento:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 124.724490000000000000
          Top = 223.212740000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxDBDatos."TituloDepartamento"] ([frxDBDatos."CodigoDepartamen' +
              'to"])')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 22.677180000000000000
          Top = 272.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Titulo Salario:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 117.165430000000000000
          Top = 272.126160000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."TituloSalario"]([frxDBDatos."CodigoSalario"])')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 22.677180000000000000
          Top = 294.803340000000100000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Salario:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 75.590600000000000000
          Top = 294.803339999999900000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."salario"]  :  ([frxDBDatos."TituloMoneda"])')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 22.677180000000000000
          Top = 7.559059999999988000
          Width = 60.472480000000000000
          Height = 79.370130000000000000
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
        object Picture2: TfrxPictureView
          Left = 26.456710000000000000
          Top = 11.338590000000010000
          Width = 52.913420000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'imagenpersonal'
          DataSetName = 'frxDBDatos'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo41: TfrxMemoView
          Top = 325.039580000000000000
          Width = 737.008350000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clSilver
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
      object ReportTitle1: TfrxReportTitle
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Picture1: TfrxPictureView
          Top = 7.559059999999999000
          Width = 98.267780000000000000
          Height = 120.944960000000000000
          ShowHint = False
          DataField = 'Imagen1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 105.826840000000000000
          Top = 57.036543639999990000
          Width = 631.181510000000400000
          Height = 38.482487270000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Datos de personal')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 105.826840000000000000
          Top = 7.559059999999999000
          Width = 631.181510000000400000
          Height = 49.477483640000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Reporte General')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 105.826840000000000000
          Top = 95.519030910000000000
          Width = 631.181510000000400000
          Height = 32.984989090000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd-mmm-yyyy'#39',Date)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 657.638220000000000000
        Width = 740.787880000000000000
        DataSetName = 'frxDBDocumento'
        RowCount = 0
        Stretched = True
        object Memo33: TfrxMemoView
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 26.456710000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '* [frxDBDocumento."nombredocumento"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 582.047620000000000000
        Width = 740.787880000000000000
        Condition = 'true'
        object Memo36: TfrxMemoView
          Top = 26.456710000000040000
          Width = 737.008350000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236239999999960000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Documentos:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 3.779530000000022000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'A continuaci'#243'n se muestran los documentos presentados por este e' +
              'mpleado')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 740.787880000000000000
        Width = 740.787880000000000000
        object Memo37: TfrxMemoView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
    end
  end
  object dsPersonal: TDataSource
    Left = 328
    Top = 336
  end
  object TimerPaint: TTimer
    Enabled = False
    Interval = 1
    Left = 216
    Top = 104
  end
  object frxrpDatosdelPersonal: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41251.401945162000000000
    ReportOptions.LastChange = 41256.462528935180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo5.Visible := <frxDBDocumentospostulante."Estado"> = '#39'Si'#39';' +
        '    '
      
        '   Memo45.Visible := <frxDBDocumentospostulante."Estado"> = '#39'Adi' +
        'cional'#39';'
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 72
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDatos
        DataSetName = 'frxDBDatos'
      end
      item
        DataSet = frxDBDocumentospostulante
        DataSetName = 'frxDBDocumentospostulante'
      end
      item
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
        Height = 343.937230000000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 22.677180000000000000
          Top = 272.126160000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Top = 3.779529999999994000
          Width = 737.008350000000000000
          Height = 340.157700000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Top = 245.669450000000000000
          Width = 714.331170000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 22.677180000000000000
          Top = 174.078850000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 22.677180000000000000
          Top = 294.803340000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 22.677180000000000000
          Top = 124.724490000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 22.677180000000000000
          Top = 98.267780000000040000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 90.708720000000000000
          Top = 56.692950000000000000
          Width = 646.299630000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 90.708720000000000000
          Top = 34.015770000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDatos."NombreCompleto"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 90.708720000000000000
          Top = 64.252010000000010000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Curp:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 132.283550000000000000
          Top = 64.252010000000010000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."curp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 389.291590000000000000
          Top = 64.252010000000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RFC:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 427.086890000000000000
          Top = 64.252010000000010000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."rfc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 22.677180000000000000
          Top = 98.267780000000040000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'No. IMSS:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 90.708720000000000000
          Top = 98.267780000000040000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[frxDBDatos."numerosegurosocial"]')
        end
        object Memo15: TfrxMemoView
          Left = 22.677180000000000000
          Top = 173.858380000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contacto:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 90.708720000000000000
          Top = 173.858380000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[frxDBDatos."contacto"]')
        end
        object Memo18: TfrxMemoView
          Left = 147.401670000000000000
          Top = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDatos."Gruposanguineo"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 22.677180000000000000
          Top = 124.724490000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Grupo Sanguineo:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 22.677180000000000000
          Top = 147.401670000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Correo Electronico:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 241.889920000000000000
          Top = 124.724490000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefono:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 306.141930000000000000
          Top = 124.724490000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDatos."telefono"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 154.960730000000000000
          Top = 147.401670000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDatos."correo"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 476.220780000000000000
          Top = 173.858380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tel: Contacto:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 570.709030000000000000
          Top = 173.858380000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."telefono"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 200.315090000000100000
          Width = 737.008350000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clSilver
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
          Left = 22.677165350000000000
          Top = 219.212740000000100000
          Width = 714.331170000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 90.708661420000000000
          Top = 11.338590000000010000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDatos."codigopersonal"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 374.173470000000000000
          Top = 98.488250000000030000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Reingreso:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 449.764070000000000000
          Top = 98.488250000000030000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[frxDBDatos."fechaalta"]')
        end
        object Memo38: TfrxMemoView
          Left = 22.677180000000000000
          Top = 249.669450000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cargo:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 75.590600000000000000
          Top = 249.669450000000000000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."TituloCargo"] ([frxDBDatos."CodigoCargo"])')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 22.677180000000000000
          Top = 223.212740000000100000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Departamento:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 124.724490000000000000
          Top = 223.212740000000100000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxDBDatos."TituloDepartamento"] ([frxDBDatos."CodigoDepartamen' +
              'to"])')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 22.677180000000000000
          Top = 272.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Titulo Salario:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 117.165430000000000000
          Top = 272.126160000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."TituloSalario"]([frxDBDatos."CodigoSalario"])')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 22.677180000000000000
          Top = 294.803340000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Salario:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 75.590600000000000000
          Top = 294.803340000000000000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatos."salario"]  :  ([frxDBDatos."TituloMoneda"])')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 22.677180000000000000
          Top = 7.559059999999988000
          Width = 60.472480000000000000
          Height = 79.370130000000000000
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
        object Picture2: TfrxPictureView
          Left = 26.456710000000000000
          Top = 11.338590000000010000
          Width = 52.913420000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'imagenpersonal'
          DataSet = frxDBDatos
          DataSetName = 'frxDBDatos'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo41: TfrxMemoView
          Top = 325.039580000000000000
          Width = 737.008350000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clSilver
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
      object ReportTitle1: TfrxReportTitle
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Top = 7.559059999999999000
          Width = 98.267780000000000000
          Height = 120.944960000000000000
          ShowHint = False
          DataField = 'Imagen1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 105.826840000000000000
          Top = 57.036543640000010000
          Width = 631.181510000000000000
          Height = 38.482487270000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Datos de personal')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 105.826840000000000000
          Top = 7.559059999999999000
          Width = 631.181510000000000000
          Height = 49.477483640000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Reporte General')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 105.826840000000000000
          Top = 95.519030910000000000
          Width = 631.181510000000000000
          Height = 32.984989090000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd-mmm-yyyy'#39',Date)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 657.638220000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDocumentospostulante
        DataSetName = 'frxDBDocumentospostulante'
        RowCount = 0
        Stretched = True
        object Memo33: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 64.252010000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Memo.UTF8W = (
            '- [frxDBDocumentospostulante."NombreGeneralDocumento"]')
        end
        object Memo5: TfrxMemoView
          Left = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Estado'
          DataSet = frxDBDocumentospostulante
          DataSetName = 'frxDBDocumentospostulante'
          Memo.UTF8W = (
            '[frxDBDocumentospostulante."Estado"]')
        end
        object Memo45: TfrxMemoView
          Left = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          DataSet = frxDBDocumentospostulante
          DataSetName = 'frxDBDocumentospostulante'
          Memo.UTF8W = (
            '**')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 582.047620000000100000
        Width = 740.409927000000000000
        Condition = 'true'
        object Memo36: TfrxMemoView
          Top = 26.456710000000040000
          Width = 737.008350000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236239999999950000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Documentos:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 3.779530000000022000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'A continuaci'#243'n se muestran los documentos presentados por este e' +
              'mpleado')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 782.362710000000000000
        Width = 740.409927000000000000
        object Memo37: TfrxMemoView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 699.213050000000000000
        Width = 740.409927000000000000
        object Memo46: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000022000
          Width = 687.874460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '** Documentos entregados por el Personal que no son requeridos p' +
              'or el Puesto que ocupa')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatos: TfrxDBDataset
    UserName = 'frxDBDatos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigopersonal=codigopersonal'
      'Nombres=Nombres'
      'codigopersonal=codigopersonal'
      'APaterno=APaterno'
      'AMaterno=AMaterno'
      'curp=curp'
      'rfc=rfc'
      'numerosegurosocial=numerosegurosocial'
      'imagenpersonal=imagenpersonal'
      'contacto=contacto'
      'Gruposanguineo=Gruposanguineo'
      'correo=correo'
      'telefono=telefono'
      'telefonocontacto=telefonocontacto'
      'fechaalta=fechaalta'
      'CodigoCargo=CodigoCargo'
      'TituloCargo=TituloCargo'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'CodigoSalario=CodigoSalario'
      'TituloSalario=TituloSalario'
      'salario=salario'
      'TituloMoneda=TituloMoneda'
      'NombreCompleto=NombreCompleto')
    DataSet = cdPersonal
    BCDToCurrency = False
    Left = 32
    Top = 184
  end
  object frxDBDocumentospostulante: TfrxDBDataset
    UserName = 'frxDBDocumentospostulante'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NombreGeneralDocumento=NombreGeneralDocumento'
      'Estado=Estado')
    DataSet = cddocumentosxpostulantes
    BCDToCurrency = False
    Left = 104
    Top = 184
  end
  object cddocumentosxpostulantes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 232
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 240
  end
end
