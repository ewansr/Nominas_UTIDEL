inherited FrmPersonal: TFrmPersonal
  Caption = 'FrmPersonal'
  ClientHeight = 443
  ClientWidth = 868
  ExplicitWidth = 876
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 868
    ExplicitWidth = 868
    inherited LbFiltros: TJvLabel
      Width = 860
      ExplicitWidth = 866
    end
    inherited GroupBoxFiltro: TGroupBox
      Width = 608
      ExplicitWidth = 608
      inherited BtnSearch: TAdvShapeButton
        Left = 565
        Top = 8
        OnClick = BtnSearchClick
        ExplicitLeft = 565
        ExplicitTop = 8
      end
      object edtFPuesto: TAdvEdit
        Left = 13
        Top = 17
        Width = 116
        Height = 21
        EmptyText = 'Puesto'
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
      object edtFCodigo: TAdvEdit
        Left = 135
        Top = 17
        Width = 116
        Height = 21
        EmptyText = 'C'#243'digo'
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
        Version = '2.9.0.0'
      end
      object edtFDepartamento: TAdvEdit
        Left = 257
        Top = 17
        Width = 138
        Height = 21
        EmptyText = 'Departamento'
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
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 868
    Height = 362
    ExplicitWidth = 868
    ExplicitHeight = 362
    inherited DBGridPrincipal: TNextDBGrid
      Width = 466
      Height = 305
      OnClick = DBGridPrincipalClick
      ExplicitWidth = 466
      ExplicitHeight = 305
      object NxDBTextColumn1: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Codigo Personal'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'codigopersonal'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nombres'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 100
        FieldName = 'nombres'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Apellidos'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 100
        FieldName = 'apellidos'
      end
    end
    inherited PanelBarra: TPanel
      Top = 306
      Width = 866
      ExplicitTop = 306
      ExplicitWidth = 866
      inherited Panel1: TPanel
        Width = 733
        ExplicitWidth = 733
      end
      inherited Panel2: TPanel
        Left = 736
        ExplicitLeft = 736
      end
    end
    object AdvToolPanelTab1: TAdvToolPanelTab
      Left = 467
      Top = 1
      Width = 400
      Height = 305
      Color = clWhite
      ColorTo = 16248798
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = ppRight
      SlideSpeed = ssInstant
      TabBorderColor = 9841920
      TabColor = 16572875
      TabColorTo = 14722429
      TabHoverColor = 14483455
      TabHoverColorTo = 6013175
      Version = '1.5.4.1'
      object AdvToolPanel1: TAdvToolPanel
        Left = 0
        Top = 0
        Width = 377
        Height = 305
        BackgroundTransparent = False
        BackGroundPosition = bpTopLeft
        Button3D = False
        HoverButtonColor = 14483455
        HoverButtonColorTo = 6013175
        DownButtonColor = 557032
        DownButtonColorTo = 8182519
        CaptionButton = False
        ColorTo = 13007698
        GradientDirection = gdVertical
        DockDots = True
        Caption = 'AdvToolPanel1'
        CaptionGradientDirection = gdVertical
        FocusCaptionFontColor = clBlack
        FocusCaptionColor = 9758459
        FocusCaptionColorTo = 1414638
        NoFocusCaptionFontColor = clWhite
        NoFocusCaptionColor = 14059353
        NoFocusCaptionColorTo = 9648131
        OpenWidth = 400
        CloseHint = 'Close panel'
        LockHint = 'Lock panel'
        UnlockHint = 'Unlock panel'
        Sections = <>
        SectionLayout.CaptionColor = 16244422
        SectionLayout.CaptionColorTo = 14060643
        SectionLayout.CaptionFontColor = 8661248
        SectionLayout.CaptionRounded = False
        SectionLayout.Corners = scRectangle
        SectionLayout.BackGroundColor = 16248798
        SectionLayout.BackGroundColorTo = 16242365
        SectionLayout.BorderColor = clWhite
        SectionLayout.BorderWidth = 1
        SectionLayout.BackGroundGradientDir = gdVertical
        SectionLayout.Indent = 4
        SectionLayout.Spacing = 4
        SectionLayout.ItemFontColor = 11876608
        SectionLayout.ItemHoverTextColor = 11876608
        SectionLayout.ItemHoverUnderline = True
        SectionLayout.UnderLineCaption = False
        ShowCaptionBorder = False
        ShowClose = False
        Version = '1.5.4.1'
        object AdvPanel1: TAdvPanel
          Left = 1
          Top = 24
          Width = 375
          Height = 280
          Align = alClient
          TabOrder = 0
          UseDockManager = True
          Version = '2.0.2.1'
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          FullHeight = 0
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 373
            Height = 278
            Align = alClient
            Caption = 'Descripcion del Personal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Padding.Left = 10
            Padding.Right = 10
            Padding.Bottom = 5
            ParentFont = False
            TabOrder = 0
            object DBInspectorBar1: TDBInspectorBar
              Left = 12
              Top = 109
              Width = 349
              Height = 162
              AcceptFiles = False
              AutoAdvance = False
              Align = alClient
              CheckTrue = 'True'
              CheckFalse = 'False'
              Ellipsis = False
              Flat = False
              HelpPanel.BevelInner = bvLowered
              HelpPanel.BevelOuter = bvNone
              HelpPanel.BevelWidth = 0
              HelpPanel.ColorTo = clBtnFace
              HelpPanel.Font.Charset = DEFAULT_CHARSET
              HelpPanel.Font.Color = clWindowText
              HelpPanel.Font.Height = -11
              HelpPanel.Font.Name = 'Tahoma'
              HelpPanel.Font.Style = []
              HelpPanel.Height = 0
              HelpPanel.Visible = False
              PanelCaption.ActiveFont.Charset = DEFAULT_CHARSET
              PanelCaption.ActiveFont.Color = clBlack
              PanelCaption.ActiveFont.Height = -11
              PanelCaption.ActiveFont.Name = 'Tahoma'
              PanelCaption.ActiveFont.Style = []
              PanelCaption.Button = False
              PanelCaption.Color = clBtnFace
              PanelCaption.ColorTo = clBtnFace
              PanelCaption.Font.Charset = DEFAULT_CHARSET
              PanelCaption.Font.Color = clWindowText
              PanelCaption.Font.Height = -11
              PanelCaption.Font.Name = 'Tahoma'
              PanelCaption.Font.Style = []
              PanelCaption.SideDisplay = False
              PanelCaption.SideWidth = 20
              PanelCaption.OpenClosePosition = ocpLeft
              PanelCaption.OpenCloseGraphic = ocgNone
              PanelCaption.ShadeGrain = 32
              PanelCaption.ShadeType = stNormal
              PanelCaption.VAlignment = vaTop
              Panels = <
                item
                  AllowResize = False
                  Background = pbSolid
                  ButtonDownColor = clWhite
                  Caption = 'Datos Personal Seleccionado'
                  CaptionWidth = 60
                  CaptionColor = clNone
                  CaptionFont.Charset = DEFAULT_CHARSET
                  CaptionFont.Color = clWindowText
                  CaptionFont.Height = -11
                  CaptionFont.Name = 'Tahoma'
                  CaptionFont.Style = [fsBold]
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  EditBorderColor = clNone
                  GradientDirection = gdVertical
                  GradientEnd = clBtnFace
                  GradientStart = clBtnFace
                  GradientSteps = 128
                  GridLineColor = clGray
                  GridLines = False
                  HoverCaption = False
                  HoverFullWidth = False
                  HoverIconColor = clSilver
                  HoverIconColorTo = clSilver
                  HoverIconBorderColor = clGray
                  HoverIconDownColor = clHighlight
                  HoverIconDownColorTo = clHighlight
                  ImageAlign = iaLeft
                  LabelEdit = False
                  ModifiedFont.Charset = DEFAULT_CHARSET
                  ModifiedFont.Color = clNavy
                  ModifiedFont.Height = -11
                  ModifiedFont.Name = 'Tahoma'
                  ModifiedFont.Style = [fsBold]
                  MultiPanelState = mpsOpen
                  ShortCut = 0
                  VariableItemHeight = False
                  ItemHeight = 24
                  Items = <
                    item
                      BoolValue = False
                      Caption = 'Nombres:'
                      ColorValue = clBlack
                      FontValue.Charset = DEFAULT_CHARSET
                      FontValue.Color = clBlack
                      FontValue.Height = -11
                      FontValue.Name = 'Tahoma'
                      FontValue.Style = []
                      Height = 48
                      Indent = 0
                      IntValue = 0
                      Level = 0
                      Modified = False
                      PropertyType = ptInteger
                      ReadOnly = False
                      ShortCut = 0
                      TextValue = '0'
                      DataField = 'nombres'
                      PictureField = False
                    end
                    item
                      BoolValue = False
                      Caption = 'Apellidos:'
                      ColorValue = clBlack
                      FontValue.Charset = DEFAULT_CHARSET
                      FontValue.Color = clWindowText
                      FontValue.Height = -11
                      FontValue.Name = 'Tahoma'
                      FontValue.Style = []
                      Height = 48
                      Indent = 0
                      IntValue = 0
                      Level = 0
                      Modified = False
                      PropertyType = ptInteger
                      ReadOnly = False
                      ShortCut = 0
                      TextValue = '0'
                      DataField = 'apellidos'
                      PictureField = False
                    end
                    item
                      BoolValue = False
                      Caption = 'No. Seguro Social: '
                      ColorValue = clBlack
                      FontValue.Charset = DEFAULT_CHARSET
                      FontValue.Color = clWindowText
                      FontValue.Height = -11
                      FontValue.Name = 'Tahoma'
                      FontValue.Style = []
                      Height = 48
                      Indent = 0
                      IntValue = 0
                      Level = 0
                      Modified = False
                      PropertyType = ptInteger
                      ReadOnly = False
                      ShortCut = 0
                      TextValue = '0'
                      DataField = 'numerosegurosocial'
                      PictureField = False
                    end
                    item
                      BoolValue = False
                      Caption = 'CURP: '
                      ColorValue = clBlack
                      FontValue.Charset = DEFAULT_CHARSET
                      FontValue.Color = clWindowText
                      FontValue.Height = -11
                      FontValue.Name = 'Tahoma'
                      FontValue.Style = []
                      Height = 48
                      Indent = 0
                      IntValue = 0
                      Level = 0
                      Modified = False
                      PropertyType = ptInteger
                      ReadOnly = False
                      ShortCut = 0
                      TextValue = '0'
                      PictureField = False
                    end>
                  ShowModified = False
                  Style = psProperties
                  Tag = 0
                  TopItem = 0
                  WordWrap = False
                  WordWrapCaption = False
                  SelectColor = clHighlight
                  SelectColorTo = clHighlight
                  SelectFontColor = clWhite
                  SelectDownColor = clSilver
                  SelectDownColorTo = clSilver
                  AllFields = False
                  DataSource = dsDatos
                  ShowNavigator = False
                end>
              ShowEditorAlways = False
              TabStop = True
              TabOrder = 0
              TopPanel = 0
              Version = '1.6.3.2'
              ColorTo = clCream
              DefaultGradientDirection = gdVertical
              Navigator.ButtonSize = 12
              Navigator.ButtonStyle = bsDefault
              Navigator.Hints.Strings = (
                'First record'
                'Prior record'
                'Next record'
                'Last record'
                'Insert record'
                'Delete record'
                'Edit record'
                'Post edit'
                'Cancel edit'
                'Refresh data')
              ShowMemoFields = False
              ShowPictureFields = False
            end
            object Panel3: TPanel
              Left = 12
              Top = 15
              Width = 349
              Height = 94
              Align = alTop
              BevelOuter = bvNone
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              TabOrder = 1
              object DBImage1: TDBImage
                Left = 0
                Top = 5
                Width = 112
                Height = 84
                Align = alLeft
                DataField = 'imagenpersonal'
                DataSource = dsDatos
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  inherited qGrabar: TClientDataSet
    Top = 104
  end
end
