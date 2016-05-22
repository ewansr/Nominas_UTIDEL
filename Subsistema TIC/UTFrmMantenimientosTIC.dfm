object FrmMantenimientosTIC: TFrmMantenimientosTIC
  Left = 0
  Top = 0
  Caption = 'FrmMantenimientosTIC'
  ClientHeight = 529
  ClientWidth = 982
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 529
    Align = alClient
    Caption = 'Panel10'
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 525
      Width = 980
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 304
    end
    object Panel2: TPanel
      Left = 1
      Top = 284
      Width = 980
      Height = 241
      Align = alBottom
      TabOrder = 0
      object NxPageControl1: TNxPageControl
        Left = 1
        Top = 1
        Width = 978
        Height = 239
        ActivePage = NxTabSheet2
        ActivePageIndex = 1
        Align = alClient
        TabOrder = 0
        BackgroundColor = clSilver
        BackgroundKind = bkSolid
        Margin = 0
        Spacing = 0
        TabHeight = 17
        object NxTabSheet1: TNxTabSheet
          Caption = 'Proyeccion de Mantenimientos'
          PageIndex = 0
          ParentTabFont = False
          TabFont.Charset = DEFAULT_CHARSET
          TabFont.Color = clWindowText
          TabFont.Height = -11
          TabFont.Name = 'Tahoma'
          TabFont.Style = []
          ExplicitTop = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 978
            Height = 218
            Align = alClient
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object Panel5: TPanel
              Left = 6
              Top = 6
              Width = 966
              Height = 59
              Align = alTop
              TabOrder = 0
              object GroupBox2: TGroupBox
                Left = 1
                Top = 1
                Width = 964
                Height = 57
                Align = alClient
                Caption = 'Generar Proyeccion'
                TabOrder = 0
                object JvLabel1: TJvLabel
                  Left = 14
                  Top = 24
                  Width = 73
                  Height = 13
                  Caption = 'Inicio Periodo: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel2: TJvLabel
                  Left = 252
                  Top = 24
                  Width = 73
                  Height = 13
                  Caption = 'Inicio Periodo: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvDateEdit1: TJvDateEdit
                  Left = 87
                  Top = 21
                  Width = 121
                  Height = 21
                  TabOrder = 0
                end
                object JvDateEdit2: TJvDateEdit
                  Left = 328
                  Top = 19
                  Width = 121
                  Height = 21
                  TabOrder = 1
                end
                object NxButton2: TNxButton
                  Left = 675
                  Top = 15
                  Width = 144
                  Height = 40
                  Align = alRight
                  Caption = 'Generar Reporte'
                  TabOrder = 2
                end
                object NxButton1: TNxButton
                  Left = 819
                  Top = 15
                  Width = 143
                  Height = 40
                  Align = alRight
                  Caption = 'Generar Proyeccion'
                  TabOrder = 3
                  OnClick = NxButton1Click
                end
              end
            end
            object Panel7: TPanel
              Left = 6
              Top = 65
              Width = 966
              Height = 147
              Align = alClient
              Padding.Left = 5
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              TabOrder = 1
              object NextDBGrid3: TNextDBGrid
                Left = 6
                Top = 6
                Width = 954
                Height = 135
                Align = alClient
                TabOrder = 0
                TabStop = True
                DataSource = dsmemproyhorizontal
              end
            end
          end
        end
        object NxTabSheet2: TNxTabSheet
          Caption = 'Proximo Mantto Prev'
          PageIndex = 1
          ParentTabFont = False
          TabFont.Charset = DEFAULT_CHARSET
          TabFont.Color = clWindowText
          TabFont.Height = -11
          TabFont.Name = 'Tahoma'
          TabFont.Style = []
          TabVisible = False
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 978
            Height = 218
            Align = alClient
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object NextDBGrid2: TNextDBGrid
              Left = 6
              Top = 6
              Width = 966
              Height = 206
              Align = alClient
              TabOrder = 0
              TabStop = True
              DataSource = dssiguientemanttoprev
              object NxDBTextColumn6: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Codigo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 0
                SortType = stAlphabetic
                FieldName = 'codigo'
              end
              object NxDBTextColumn7: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Articulo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 1
                SortType = stAlphabetic
                FieldName = 'tituloarticulo'
              end
              object NxDBTextColumn8: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Fecha Especificacion'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 2
                SortType = stAlphabetic
                FieldName = 'fechaespecificacion'
              end
              object NxDBTextColumn9: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Recurrencia'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 3
                SortType = stAlphabetic
                FieldName = 'recurrencia'
              end
              object NxDBTextColumn10: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Proximo Mantto. Prev.'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 4
                SortType = stAlphabetic
                FieldName = 'proximomantto'
              end
            end
          end
        end
        object NxTabSheet3: TNxTabSheet
          Caption = 'Historial Manttos. Prev. por insumo'
          PageIndex = 2
          ParentTabFont = False
          TabFont.Charset = DEFAULT_CHARSET
          TabFont.Color = clWindowText
          TabFont.Height = -11
          TabFont.Name = 'Tahoma'
          TabFont.Style = []
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 978
            Height = 59
            Align = alTop
            TabOrder = 0
            object GroupBox3: TGroupBox
              Left = 1
              Top = 1
              Width = 976
              Height = 57
              Align = alClient
              Caption = 'Fecha del historial'
              TabOrder = 0
              object JvLabel3: TJvLabel
                Left = 32
                Top = 27
                Width = 61
                Height = 13
                Caption = 'Fecha Inicial'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel4: TJvLabel
                Left = 355
                Top = 27
                Width = 56
                Height = 13
                Caption = 'Fecha Final'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object DateTimePicker1: TDateTimePicker
                Left = 99
                Top = 23
                Width = 186
                Height = 21
                Date = 41151.775852395830000000
                Time = 41151.775852395830000000
                TabOrder = 0
              end
              object DateTimePicker2: TDateTimePicker
                Left = 417
                Top = 23
                Width = 186
                Height = 21
                Date = 41151.775852395830000000
                Time = 41151.775852395830000000
                TabOrder = 1
              end
              object NxButton5: TNxButton
                Left = 831
                Top = 15
                Width = 143
                Height = 40
                Align = alRight
                Caption = 'Actualizar Historial'
                TabOrder = 2
              end
            end
          end
          object Panel9: TPanel
            Left = 0
            Top = 59
            Width = 978
            Height = 159
            Align = alClient
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 1
            object NextDBGrid4: TNextDBGrid
              Left = 6
              Top = 6
              Width = 966
              Height = 147
              Align = alClient
              TabOrder = 0
              TabStop = True
            end
          end
        end
        object NxTabSheet4: TNxTabSheet
          Caption = 'Historial Manttos. Correctivos por insumo'
          PageIndex = 3
          ParentTabFont = False
          TabFont.Charset = DEFAULT_CHARSET
          TabFont.Color = clWindowText
          TabFont.Height = -11
          TabFont.Name = 'Tahoma'
          TabFont.Style = []
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 978
            Height = 59
            Align = alTop
            TabOrder = 0
            object GroupBox4: TGroupBox
              Left = 1
              Top = 1
              Width = 976
              Height = 57
              Align = alClient
              Caption = 'Fecha de Historial'
              TabOrder = 0
              object JvLabel5: TJvLabel
                Left = 22
                Top = 27
                Width = 61
                Height = 13
                Caption = 'Fecha Inicial'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel6: TJvLabel
                Left = 334
                Top = 27
                Width = 56
                Height = 13
                Caption = 'Fecha Final'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object DateTimePicker3: TDateTimePicker
                Left = 87
                Top = 24
                Width = 186
                Height = 21
                Date = 41152.448392696760000000
                Time = 41152.448392696760000000
                TabOrder = 0
              end
              object DateTimePicker4: TDateTimePicker
                Left = 394
                Top = 23
                Width = 186
                Height = 21
                Date = 41152.448492708330000000
                Time = 41152.448492708330000000
                TabOrder = 1
              end
              object NxButton6: TNxButton
                Left = 831
                Top = 15
                Width = 143
                Height = 40
                Align = alRight
                Caption = 'Actualizar Busqueda'
                TabOrder = 2
              end
            end
          end
          object Panel12: TPanel
            Left = 0
            Top = 59
            Width = 978
            Height = 159
            Align = alClient
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 1
            object NextDBGrid5: TNextDBGrid
              Left = 6
              Top = 6
              Width = 966
              Height = 147
              Align = alClient
              TabOrder = 0
              TabStop = True
            end
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 980
      Height = 283
      Align = alClient
      TabOrder = 1
      object AdvToolPanelTab1: TAdvToolPanelTab
        Left = 1
        Top = 1
        Width = 978
        Height = 184
        Color = clWhite
        ColorTo = 16248798
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = ppTop
        TabBorderColor = 9841920
        TabColor = 16572875
        TabColorTo = 14722429
        TabHoverColor = 14483455
        TabHoverColorTo = 6013175
        Version = '1.5.4.1'
        object AdvToolPanel1: TAdvToolPanel
          Left = 0
          Top = 23
          Width = 978
          Height = 161
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
          Caption = 'Busqueda por Detalle'
          CaptionGradientDirection = gdVertical
          FocusCaptionFontColor = clBlack
          FocusCaptionColor = 9758459
          FocusCaptionColorTo = 1414638
          NoFocusCaptionFontColor = clWhite
          NoFocusCaptionColor = 14059353
          NoFocusCaptionColorTo = 9648131
          OpenWidth = 175
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
          Version = '1.5.4.1'
          object JvLabel27: TJvLabel
            Left = 26
            Top = 28
            Width = 25
            Height = 13
            Caption = 'Area'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel28: TJvLabel
            Left = 25
            Top = 77
            Width = 36
            Height = 13
            Caption = 'Grupos'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel26: TJvLabel
            Left = 418
            Top = 78
            Width = 38
            Height = 13
            Caption = 'Articulo'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel29: TJvLabel
            Left = 418
            Top = 32
            Width = 53
            Height = 13
            Caption = 'Subgrupos'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object Edit1: TEdit
            Left = 25
            Top = 45
            Width = 369
            Height = 21
            TabOrder = 0
          end
          object NxButton9: TNxButton
            Left = 365
            Top = 27
            Width = 26
            Height = 15
            Caption = '...'
            TabOrder = 1
            OnClick = NxButton9Click
          end
          object Edit2: TEdit
            Left = 25
            Top = 92
            Width = 369
            Height = 21
            TabOrder = 2
          end
          object NxButton10: TNxButton
            Left = 366
            Top = 75
            Width = 26
            Height = 15
            Caption = '...'
            TabOrder = 3
            OnClick = NxButton10Click
          end
          object NxButton12: TNxButton
            Left = 26
            Top = 119
            Width = 368
            Height = 45
            Caption = 'Buscar'
            TabOrder = 4
            OnClick = NxButton12Click
          end
          object Edit6: TEdit
            Left = 418
            Top = 92
            Width = 367
            Height = 21
            TabOrder = 5
          end
          object NxButton13: TNxButton
            Left = 760
            Top = 75
            Width = 26
            Height = 15
            Caption = '...'
            TabOrder = 6
            OnClick = NxButton13Click
          end
          object Edit3: TEdit
            Left = 418
            Top = 45
            Width = 368
            Height = 21
            TabOrder = 7
          end
          object NxButton11: TNxButton
            Left = 758
            Top = 27
            Width = 26
            Height = 15
            Caption = '...'
            TabOrder = 8
            OnClick = NxButton11Click
          end
        end
        object AdvToolPanel2: TAdvToolPanel
          Left = 0
          Top = 23
          Width = 0
          Height = 0
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
          Caption = 'Busqeuda por Criterio'
          CaptionGradientDirection = gdVertical
          FocusCaptionFontColor = clBlack
          FocusCaptionColor = 9758459
          FocusCaptionColorTo = 1414638
          NoFocusCaptionFontColor = clWhite
          NoFocusCaptionColor = 14059353
          NoFocusCaptionColorTo = 9648131
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
          Version = '1.5.4.1'
          object JvLabel32: TJvLabel
            Left = 17
            Top = 26
            Width = 111
            Height = 13
            Caption = 'Busqueda por Criterios'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 16
            Top = 45
            Width = 722
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = cl3DDkShadow
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'idcriteriostic'
            ListField = 'cadbuscar'
            ListSource = dscriterios
            ParentFont = False
            TabOrder = 0
          end
          object NxButton14: TNxButton
            Left = 17
            Top = 75
            Width = 351
            Height = 24
            Caption = 'Agregar Criterio'
            TabOrder = 1
            OnClick = NxButton14Click
          end
          object NxButton16: TNxButton
            Left = 390
            Top = 75
            Width = 348
            Height = 24
            Caption = 'Eliminar Criterio'
            TabOrder = 2
            OnClick = NxButton16Click
          end
          object NxButton17: TNxButton
            Left = 16
            Top = 107
            Width = 722
            Height = 36
            Caption = 'Buscar'
            TabOrder = 3
          end
        end
        object AdvToolPanel3: TAdvToolPanel
          Left = 0
          Top = 23
          Width = 0
          Height = 0
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
          Caption = 'Busqueda por Descripcion'
          CaptionGradientDirection = gdVertical
          FocusCaptionFontColor = clBlack
          FocusCaptionColor = 9758459
          FocusCaptionColorTo = 1414638
          NoFocusCaptionFontColor = clWhite
          NoFocusCaptionColor = 14059353
          NoFocusCaptionColorTo = 9648131
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
          Version = '1.5.4.1'
          object JvLabel31: TJvLabel
            Left = 75
            Top = 75
            Width = 38
            Height = 13
            Caption = 'Buscar:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel30: TJvLabel
            Left = 40
            Top = 39
            Width = 74
            Height = 13
            Caption = 'Descripciones: '
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 120
            Top = 40
            Width = 649
            Height = 21
            KeyField = 'IdDetalle'
            ListField = 'CodigoDetalle'
            ListSource = dsdescripciones
            TabOrder = 0
          end
          object Edit4: TEdit
            Left = 119
            Top = 67
            Width = 649
            Height = 21
            TabOrder = 1
          end
          object NxButton18: TNxButton
            Left = 119
            Top = 105
            Width = 166
            Height = 36
            Caption = 'Buscar'
            TabOrder = 2
            OnClick = NxButton18Click
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 185
        Width = 978
        Height = 97
        Align = alClient
        Caption = 'Insumos'
        Padding.Left = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object NextDBGrid1: TNextDBGrid
          Left = 7
          Top = 41
          Width = 964
          Height = 49
          Align = alClient
          TabOrder = 0
          TabStop = True
          DataSource = dsactdestxarxgrxsg
          object NxDBTextColumn1: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Codigo'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 0
            SortType = stAlphabetic
            FieldName = 'codigo'
          end
          object NxDBTextColumn2: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Articulo'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 1
            SortType = stAlphabetic
            FieldName = 'tituloarticulo'
          end
          object NxDBTextColumn3: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Recurrencia'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 2
            SortType = stAlphabetic
            FieldName = 'recurrencia'
          end
          object NxDBTextColumn4: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Ultimo Mantto Prev.'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 3
            SortType = stAlphabetic
            FieldName = 'ultimomanttoprev'
          end
          object NxDBTextColumn5: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Proximo Mantto. Prev.'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 4
            SortType = stAlphabetic
            FieldName = 'proximomantto'
          end
        end
        object Panel6: TPanel
          Left = 7
          Top = 15
          Width = 964
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object CheckBox1: TCheckBox
            Left = 42
            Top = 3
            Width = 283
            Height = 17
            Caption = 'Mostrar solo los que tienen recurrencia'
            TabOrder = 0
            OnClick = CheckBox1Click
          end
          object NxButton3: TNxButton
            Left = 766
            Top = 0
            Width = 198
            Height = 26
            Align = alRight
            Caption = 'Generar Mantto. Prev.'
            TabOrder = 1
            OnClick = NxButton3Click
          end
          object NxButton4: TNxButton
            Left = 584
            Top = 0
            Width = 182
            Height = 26
            Align = alRight
            Caption = 'Generar mantto. Correct.'
            TabOrder = 2
            OnClick = NxButton4Click
          end
        end
      end
    end
  end
  object cdactdestxarxgrxsg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 216
  end
  object dsactdestxarxgrxsg: TDataSource
    DataSet = cdactdestxarxgrxsg
    Left = 64
    Top = 216
  end
  object dsdescripciones: TDataSource
    DataSet = cddescripciones
    Left = 920
    Top = 46
  end
  object cddescripciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 944
    Top = 46
  end
  object dscriterios: TDataSource
    DataSet = cdcriterios
    Left = 944
    Top = 88
  end
  object cdcriterios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 912
    Top = 88
  end
  object cdcriteriosup: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 920
    Top = 144
  end
  object dscriteriosup: TDataSource
    DataSet = cdcriteriosup
    Left = 936
    Top = 144
  end
  object cdsiguientemanttoprev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 864
    Top = 424
  end
  object dssiguientemanttoprev: TDataSource
    DataSet = cdsiguientemanttoprev
    Left = 944
    Top = 432
  end
  object Memproyeccion: TJvMemoryData
    FieldDefs = <>
    Left = 744
    Top = 240
  end
  object dsmemproyeccion: TDataSource
    DataSet = Memproyeccion
    Left = 712
    Top = 248
  end
  object memmanttosprev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 824
    Top = 376
  end
  object dsmemmanttoprev: TDataSource
    Left = 856
    Top = 376
  end
  object memproyhorizontal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 776
    Top = 424
  end
  object dsmemproyhorizontal: TDataSource
    DataSet = memproyhorizontal
    Left = 816
    Top = 424
  end
  object memfechasmantto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 936
    Top = 376
  end
  object memmanttocriterios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 864
    Top = 248
  end
  object frxMantenimientos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41044.735946493100000000
    ReportOptions.LastChange = 41148.527972395800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure Memo1OnPreviewDblClick(Sender: TfrxView; Button: TMous' +
        'eButton; Shift: Integer; var Modified: Boolean);'
      'begin'
      ''
      'end;'
      ''
      
        'procedure frxDBDataset2CodigoOnPreviewDblClick(Sender: TfrxView;' +
        ' Button: TMouseButton; Shift: Integer; var Modified: Boolean);'
      'begin                              '
      
        '                                                                ' +
        '                '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 840
    Top = 120
    Datasets = <
      item
        DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
        DataSetName = 'frxDBDOrganizacion'
      end
      item
        DataSet = TicRepModuleUnit.frxDBDResguardo
        DataSetName = 'frxDBDResguardo'
      end
      item
        DataSet = TicRepModuleUnit.frxDBPersonal
        DataSetName = 'frxDBPersonal'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        Height = 287.212740000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 10.897650000000000000
          Top = 214.110390000000000000
          Width = 733.228820000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALE DE RESGUARDO DE ENTREGA')
          ParentFont = False
        end
        object frxDBDOrganizacionrfc: TfrxMemoView
          Left = 166.299320000000000000
          Top = 34.015770000000010000
          Width = 570.709030000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RFC: [frxDBDOrganizacion."rfc"]')
          ParentFont = False
        end
        object frxDBDOrganizaciontelefono1: TfrxMemoView
          Left = 164.519790000000000000
          Top = 45.354360000000000000
          Width = 570.709030000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'TELEFONOS: [frxDBDOrganizacion."telefono1"], [frxDBDOrganizacion' +
              '."telefono2"], [frxDBDOrganizacion."telefono3"]'
            
              '[frxDBDOrganizacion."telefono4"], [frxDBDOrganizacion."telefono5' +
              '"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 139.960730000000000000
          Top = 118.031540000000000000
          Width = 582.047620000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA: [now]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 15.118120000000000000
          Top = 7.559059999999999000
          Width = 139.842610000000000000
          Height = 102.047310000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo10: TfrxMemoView
          Top = 268.346630000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              'RECIBI DE OFFSHORE TECHNICAL ASSISTANCE S.C. QUE CONSISTE EN LO ' +
              'SIGUIENTE:')
          ParentFont = False
        end
        object frxDBPersonalNombreCompleto: TfrxMemoView
          Left = 139.842610000000000000
          Top = 147.401670000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPersonal."NombreCompleto"]')
          ParentFont = False
        end
        object frxDBDResguardocodigoticresguardo: TfrxMemoView
          Left = 140.063080000000000000
          Top = 131.283550000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDResguardo."codigoticresguardo"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        DataSet = TicRepModuleUnit.frxDBDResguardo
        DataSetName = 'frxDBDResguardo'
        RowCount = 0
        object frxDBDResguardocodigoinsumo: TfrxMemoView
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataField = 'tituloarticulo'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."tituloarticulo"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 363.157700000000000000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataField = 'codigoinsumo'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."codigoinsumo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 15.527520000000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDResguardo."codigoticresguardo"'
        object Memo2: TfrxMemoView
          Top = 0.409400000000005100
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmAsignacionesPersonalTic.frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONCEPTO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 361.953000000000000000
          Top = 0.188930000000027600
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmAsignacionesPersonalTic.frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO INSUMO')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 9.897650000000000000
        Top = 404.409710000000000000
        Width = 740.409927000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 332.598640000000000000
        Top = 476.220780000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 5.338590000000011000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMENTARIOS:')
          ParentFont = False
        end
        object frxDBDResguardocomentarios: TfrxMemoView
          Left = 0.779530000000000000
          Top = 20.456709999999990000
          Width = 737.008350000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'comentarios'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDResguardo."comentarios"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 1.779530000000000000
          Top = 51.692949999999990000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'Frimas del Vale De Resguardo')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 114.574830000000000000
          Top = 243.401670000000000000
          Width = 188.976500000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBIO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 112.141930000000000000
          Top = 142.622140000000000000
          Width = 188.976500000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTREGO')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 454.795610000000000000
          Top = 142.401670000000000000
          Width = 188.976500000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'APROBO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 1.559060000000000000
          Top = 288.448980000000000000
          Width = 737.008350000000000000
          Height = 41.574830000000000000
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
        object Picture2: TfrxPictureView
          Left = 194.535560000000000000
          Top = 296.008040000000100000
          Width = 30.236240000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDOrganizacionnombreorganizacion1: TfrxMemoView
          Left = 228.551330000000000000
          Top = 296.008040000000100000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'nombreorganizacion'
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object frxDBDOrganizaciontelefono11: TfrxMemoView
          Left = 426.866420000000000000
          Top = 312.126160000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telefonos: [frxDBDOrganizacion."telefono1"]')
          ParentFont = False
        end
        object frxDBDOrganizacionrfc1: TfrxMemoView
          Left = 228.551330000000000000
          Top = 311.126160000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RFC: [frxDBDOrganizacion."rfc"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 454.323130000000000000
          Top = 244.330860000000000000
          Width = 188.976500000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTERADO')
          ParentFont = False
        end
        object frxDBDResguardopersonalentrego: TfrxMemoView
          Left = 93.488250000000000000
          Top = 156.519789999999900000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personalentrego'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."personalentrego"]')
          ParentFont = False
        end
        object frxDBDResguardopersonalaprobo: TfrxMemoView
          Left = 442.205010000000000000
          Top = 157.519789999999900000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personalaprobo '
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."personalaprobo "]')
          ParentFont = False
        end
        object frxDBDResguardopersonalrecibio: TfrxMemoView
          Left = 94.488250000000000000
          Top = 258.008040000000100000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personalrecibio'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."personalrecibio"]')
          ParentFont = False
        end
        object frxDBDResguardopersonalenterado: TfrxMemoView
          Left = 442.205010000000000000
          Top = 259.008040000000100000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personalenterado'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."personalenterado"]')
          ParentFont = False
        end
      end
      object frxDBDOrganizacionnombreorganizacion: TfrxMemoView
        Left = 245.669450000000000000
        Top = -18.897650000000000000
        Width = 574.488560000000000000
        Height = 34.015770000000010000
        ShowHint = False
        DataField = 'nombreorganizacion'
        DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
        DataSetName = 'frxDBDOrganizacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDOrganizacion."nombreorganizacion"]')
        ParentFont = False
      end
    end
  end
end
