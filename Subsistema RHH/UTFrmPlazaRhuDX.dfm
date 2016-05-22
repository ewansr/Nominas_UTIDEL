object FrmPlazaRhuDX: TFrmPlazaRhuDX
  Left = 0
  Top = 0
  Caption = 'Solicitud de Plazas Vacantes'
  ClientHeight = 410
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter2: TSplitter
    Left = 0
    Top = 51
    Width = 2
    Height = 359
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ExplicitTop = 42
    ExplicitHeight = 245
  end
  object pnlPlaza: TPanel
    Left = 2
    Top = 51
    Width = 792
    Height = 359
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    Visible = False
    object pnlEncabezado: TPanel
      Left = 1
      Top = 1
      Width = 790
      Height = 103
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 8
        Top = 23
        Width = 64
        Height = 18
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        Caption = 'C'#243'digo Plaza:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -10
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText1: TDBText
        Left = 77
        Top = 23
        Width = 48
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = True
        DataField = 'CodigoPlaza'
        DataSource = dsPlazaGeneral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel2: TJvLabel
        Left = 8
        Top = 38
        Width = 89
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        Caption = 'Nombre Solicitante:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -10
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText2: TDBText
        Left = 101
        Top = 38
        Width = 48
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = True
        DataField = 'NombreSolicitante'
        DataSource = dsPlazaGeneral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel3: TJvLabel
        Left = 8
        Top = 53
        Width = 41
        Height = 11
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        Caption = 'Puesto:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -10
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText3: TDBText
        Left = 47
        Top = 53
        Width = 48
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = True
        DataField = 'TituloCargoSolicitante'
        DataSource = dsPlazaGeneral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel4: TJvLabel
        Left = 8
        Top = 68
        Width = 71
        Height = 11
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        Caption = 'Departamento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -10
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText4: TDBText
        Left = 80
        Top = 68
        Width = 48
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = True
        DataField = 'TituloDepartamentoSolicitante'
        DataSource = dsPlazaGeneral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel5: TJvLabel
        Left = 8
        Top = 83
        Width = 35
        Height = 12
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        Caption = 'Fecha:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -10
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText5: TDBText
        Left = 44
        Top = 83
        Width = 48
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = True
        DataField = 'FechaDocumento'
        DataSource = dsPlazaGeneral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 788
        Height = 18
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alTop
        Caption = 'Datos generales de la Solicitud de Plazas'
        Color = clMaroon
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object lblNombreSolicitante: TcxLabel
        Left = 154
        Top = 36
        Caption = 'Super Usuario'
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        StyleFocused.TextColor = clBlue
        Visible = False
      end
      object lblPuesto: TcxLabel
        Left = 154
        Top = 47
        Caption = 'N/A'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        StyleFocused.TextColor = clBlue
        Visible = False
      end
      object lblDepartamento: TcxLabel
        Left = 154
        Top = 70
        Caption = 'N/A'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        StyleFocused.TextColor = clBlue
        Visible = False
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 104
      Width = 790
      Height = 254
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 211
        Top = 0
        Height = 254
        ExplicitLeft = 280
        ExplicitTop = 16
        ExplicitHeight = 100
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 72
        Height = 254
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        TabOrder = 0
        object btn_Nueva: TcxButton
          Left = 8
          Top = 23
          Width = 57
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = '&Nuevo'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = ClientModule1.PngImageList1
          TabOrder = 0
          OnClick = btn_NuevaClick
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 70
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Acciones'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Left = 72
        Top = 0
        Width = 139
        Height = 254
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        TabOrder = 1
        object gridGrupos: TJvDBGrid
          Left = 1
          Top = 14
          Width = 137
          Height = 239
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          DataSource = dsPlazaDetalleGpo
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -10
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 16
          TitleRowHeight = 16
          Columns = <
            item
              Expanded = False
              FieldName = 'TituloCargo'
              Title.Caption = 'Puesto'
              Visible = True
            end>
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 137
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Grupos'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object pcGrupos: TAdvPageControl
        Left = 214
        Top = 0
        Width = 576
        Height = 254
        ActivePage = GpoDetalle
        ActiveFont.Charset = DEFAULT_CHARSET
        ActiveFont.Color = clWindowText
        ActiveFont.Height = -11
        ActiveFont.Name = 'Tahoma'
        ActiveFont.Style = []
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabBackGroundColor = clBtnFace
        TabMargin.RightMargin = 0
        TabOverlap = 0
        Version = '1.7.1.0'
        TabOrder = 2
        TabWidth = 70
        object GpoDetalle: TAdvTabSheet
          Caption = 'Detalle'
          Color = clBtnFace
          ColorTo = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabColor = clBtnFace
          TabColorTo = clNone
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 568
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Detalle'
            Color = clMaroon
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object gridDetalle1: TcxGrid
            Left = 0
            Top = 13
            Width = 568
            Height = 214
            Align = alClient
            PopupMenu = pumDetalle
            TabOrder = 1
            ExplicitLeft = 2
            object cxGridDetalle: TcxGridDBTableView
              OnKeyDown = cxGridDetalleKeyDown
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGridDetalleCellDblClick
              DataController.DataSource = dsPlazaDetalle
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              object ColCodigoDepartamento: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CodigoDepartamento'
                Width = 76
              end
              object ColTituloDepartamento: TcxGridDBColumn
                Caption = 'Departamento'
                DataBinding.FieldName = 'TituloDepartamento'
                Width = 94
              end
              object ColExperienciaMinima: TcxGridDBColumn
                Caption = 'Experiencia'
                DataBinding.FieldName = 'ExperienciaMinima'
              end
              object ColUnidadExperiencia: TcxGridDBColumn
                Caption = 'Unidad'
                DataBinding.FieldName = 'UnidadExperiencia'
              end
              object ColCodigoPersonal: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CodigoPersonal'
                Width = 59
              end
              object ColNombreCompleto: TcxGridDBColumn
                Caption = 'Nombre Completo'
                DataBinding.FieldName = 'NombreCompleto'
                Width = 203
              end
              object ColIdPlazaDetalle: TcxGridDBColumn
                DataBinding.FieldName = 'IdPlazaDetalle'
                Visible = False
              end
            end
            object gridDetalle1Level1: TcxGridLevel
              GridView = cxGridDetalle
            end
          end
        end
        object gpoDocumentos: TAdvTabSheet
          Caption = 'Documentos'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          object Panel11: TPanel
            Left = 0
            Top = 192
            Width = 568
            Height = 35
            Align = alBottom
            TabOrder = 0
            object CheckBox1: TCheckBox
              Left = 5
              Top = 9
              Width = 209
              Height = 17
              Caption = 'Ver distribuci'#243'n de la documentaci'#243'n'
              TabOrder = 0
            end
          end
          object FrxPrevDocumentos: TfrxPreview
            Left = 0
            Top = 0
            Width = 568
            Height = 192
            HelpType = htKeyword
            Align = alClient
            OutlineVisible = False
            OutlineWidth = 120
            ThumbnailVisible = False
            UseReportHints = True
          end
        end
        object GpoPostulantes: TAdvTabSheet
          Hint = 'Personas que se encuentran postulando por este Puesto Vacante'
          Caption = 'Postulantes'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 568
            Height = 41
            Align = alTop
            TabOrder = 0
          end
          object Panel9: TPanel
            Left = 0
            Top = 186
            Width = 568
            Height = 41
            Align = alBottom
            TabOrder = 1
            object btn_AgregarPostulante: TcxButton
              Left = 8
              Top = 6
              Width = 75
              Height = 25
              Caption = 'Agregar'
              TabOrder = 0
            end
          end
          object cxGridPostulantes: TcxGrid
            Left = 0
            Top = 41
            Width = 568
            Height = 145
            Align = alClient
            TabOrder = 2
            object gridPostulantes: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsPostulantes
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.CellSelect = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object columnaNombre: TcxGridDBColumn
                DataBinding.FieldName = 'NombreCompleto'
                HeaderAlignmentHorz = taCenter
              end
              object ColumnaAsignado: TcxGridDBColumn
                DataBinding.FieldName = 'Asignado'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
              end
              object ColumnaOrganizacion: TcxGridDBColumn
                Caption = 'Organizacion'
                DataBinding.FieldName = 'TituloOrganizacion'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
              end
              object ColumnaDepartamento: TcxGridDBColumn
                Caption = 'Departamento'
                DataBinding.FieldName = 'TituloDepartamento'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
              end
              object ColumnaCargo: TcxGridDBColumn
                Caption = 'Puesto'
                DataBinding.FieldName = 'TituloCargo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
              end
              object ColumnaDocumentacion: TcxGridDBColumn
                Caption = 'Documentaci'#243'n'
                DataBinding.FieldName = 'CtaDoc'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGridPostulantesLevel1: TcxGridLevel
              GridView = gridPostulantes
            end
          end
        end
        object gpoAnálisis: TAdvTabSheet
          Caption = 'An'#225'lisis'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          object Panel10: TPanel
            Left = 121
            Top = 0
            Width = 447
            Height = 227
            Align = alClient
            Caption = 'Panel10'
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 1
              Top = 1
              Width = 445
              Height = 204
              Align = alClient
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -10
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
            object DockTabSet1: TDockTabSet
              Left = 1
              Top = 205
              Width = 445
              Height = 21
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Tabs.Strings = (
                'No Calificados'
                'Calificados'
                'Sobre Calif.')
              TabIndex = 1
            end
            object sgAnalisisPersonal: TStringGrid
              Left = 64
              Top = 56
              Width = 320
              Height = 120
              TabOrder = 2
            end
          end
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 121
            Height = 227
            Align = alLeft
            Caption = 'Panel12'
            TabOrder = 1
          end
        end
      end
    end
  end
  object DxBManagerMain: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = Form2.cxImageResIconosTodos24
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 824
    Top = 24
    DockControlHeights = (
      0
      0
      51
      0)
    object DxBarMain: TdxBar
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 302
      FloatTop = 215
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnNuevo'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnAbrir'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnCerrar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnActualizar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxBarBtnOcultar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxBarBtnImprimir'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnExportar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnImportat'
        end
        item
          Visible = True
          ItemName = 'btnAnalisis'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object DxBLbuttonAgregar: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 29
      AutoGrayScale = False
    end
    object DxBLbuttonEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Enabled = False
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 299
      AutoGrayScale = False
    end
    object DxBLbuttonEliminar: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Enabled = False
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeImageIndex = 315
      AutoGrayScale = False
    end
    object DxBLbuttonActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 643
      AutoGrayScale = False
    end
    object DxBLbuttonSalir: TdxBarLargeButton
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      LargeImageIndex = 722
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object DxBarBtnNuevo: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = DxBarBtnNuevoClick
      AutoGrayScale = False
    end
    object DxBarBtnAbrir: TdxBarLargeButton
      Caption = '&Abrir'
      Category = 0
      Hint = 'Abrir'
      Visible = ivAlways
      LargeImageIndex = 300
      OnClick = DxBarBtnAbrirClick
      AutoGrayScale = False
    end
    object DxBarBtnCerrar: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeImageIndex = 306
      OnClick = DxBarBtnCerrarClick
      AutoGrayScale = False
    end
    object DxBarBtnActualizar: TdxBarLargeButton
      Caption = '&Nueva Partida'
      Category = 0
      Hint = 'Agregar una nueva partida'
      Visible = ivAlways
      LargeImageIndex = 435
      AutoGrayScale = False
    end
    object DxBarBtnImprimir: TdxBarLargeButton
      Caption = '&Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 453
      AutoGrayScale = False
    end
    object DxBarBtnExportar: TdxBarLargeButton
      Caption = '&Exportar'
      Category = 0
      Hint = 'Exportar'
      Visible = ivAlways
      LargeImageIndex = 443
      AutoGrayScale = False
    end
    object DxBarBtnImportar: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeImageIndex = 710
      AutoGrayScale = False
    end
    object DxBarBtnImportat: TdxBarLargeButton
      Caption = '&Importar'
      Category = 0
      Hint = 'Importar'
      Visible = ivAlways
      LargeImageIndex = 347
      AutoGrayScale = False
    end
    object DxBarBtnOcultar: TdxBarLargeButton
      Caption = '&Panel B'#250'squeda'
      Category = 0
      Hint = 'Panel B'#250'squeda'
      Visible = ivAlways
      LargeImageIndex = 881
      AutoGrayScale = False
    end
    object btnAnalisis: TdxBarLargeButton
      Caption = 'An'#225'lisis'
      Category = 0
      Hint = 'An'#225'lisis'
      Visible = ivAlways
      LargeImageIndex = 525
      OnClick = btnAnalisisClick
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 525
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object dsPlazaGeneral: TDataSource
    Left = 280
    Top = 80
  end
  object cdCatalogoPlazas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 72
  end
  object cdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 72
  end
  object dsUptPlazaDetalle: TDataSource
    Left = 384
    Top = 120
  end
  object dsPlazaDetalleGpo: TDataSource
    DataSet = cdPlazaDetalleGpo
    Left = 120
    Top = 280
  end
  object dsPlazaDetalle: TDataSource
    Left = 328
    Top = 328
  end
  object pumDetalle: TPopupMenu
    Left = 456
    Top = 280
    object AgregarDetalle1: TMenuItem
      Caption = 'Agregar Detalle'
    end
    object EditarDetalle1: TMenuItem
      Caption = 'Editar Detalle'
      OnClick = EditarDetalle1Click
    end
    object EliminarDetalle1: TMenuItem
      Caption = 'Eliminar Detalle'
    end
    object btnImprimirOficio: TMenuItem
      Caption = 'Imprimir Oficio Contrataci'#243'n'
      OnClick = btnImprimirOficioClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CancelarDetalle1: TMenuItem
      Caption = 'Cancelar Detalle'
    end
  end
  object cdPlazaDetalleGpo: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdPlazaDetalleGpoAfterScroll
    Left = 120
    Top = 224
  end
  object dsPostulantesxGrupoPlaza: TDataSource
    Left = 584
    Top = 264
  end
  object frxRepDocumentos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = FrxPrevDocumentos
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42118.428594699100000000
    ReportOptions.LastChange = 42136.899120659720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Child1.Visible := LENGTH(<frxDSDocumentos."SubDocumentos">) > ' +
        '0;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 280
    Top = 248
    Datasets = <
      item
        DataSet = frxDSDocumentos
        DataSetName = 'frxDSDocumentos'
      end>
    Variables = <
      item
        Name = ' Variable'
        Value = Null
      end
      item
        Name = 'TituloCargo'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 170.000000000000000000
      PaperHeight = 170.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Height = 68.031540000000010000
        Top = 71.811070000000000000
        Width = 627.401980000000000000
        Condition = 'frxDSDocumentos."TipoDocumento"'
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Width = 619.842920000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 555.590910000000000000
          Top = 49.133889999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            'Obligatorio')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 464.882190000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000010000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            'Documentos')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Width = 619.842920000000000000
          Height = 49.133890000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDSDocumentos."LeyendaTipoDocumento"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 627.401980000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Child = frxRepDocumentos.Child1
        DataSet = frxDSDocumentos
        DataSetName = 'frxDSDocumentos'
        KeepChild = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 461.102660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreDocumento'
          DataSet = frxDSDocumentos
          DataSetName = 'frxDSDocumentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDSDocumentos."NombreDocumento"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 464.882190000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Tipo'
          DataSet = frxDSDocumentos
          DataSetName = 'frxDSDocumentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDSDocumentos."Tipo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 555.590910000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Obligatorio'
          DataSet = frxDSDocumentos
          DataSetName = 'frxDSDocumentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDSDocumentos."Obligatorio"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 627.401980000000000000
        Child = frxRepDocumentos.Child2
        Stretched = True
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Width = 619.842920000000000000
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
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Cambria'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDSDocumentos."SubDocumentos"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child2: TfrxChild
        Height = 7.559060000000000000
        Top = 245.669450000000000000
        Width = 627.401980000000000000
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 627.401980000000000000
        object Memo10: TfrxMemoView
          Left = 480.000310000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Documentos: [COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 627.401980000000000000
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999999000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri Light'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELACI'#211'N DE DOCUMENTACI'#211'N PARA EL PUESTO DE [TituloCargo]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDSDocumentos: TfrxDBDataset
    UserName = 'frxDSDocumentos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TipoDocumento=TipoDocumento'
      'LeyendaTipoDocumento=LeyendaTipoDocumento'
      'IdPlaza=IdPlaza'
      'CodigoPlaza=CodigoPlaza'
      'IdGrupo=IdGrupo'
      'IdCargo=IdCargo'
      'IdDoctosxCargo=IdDoctosxCargo'
      'IdDoctosxGrupoVacante=IdDoctosxGrupoVacante'
      'IdDoctosxPlazaDetalle=IdDoctosxPlazaDetalle'
      'IdDocumento=IdDocumento'
      'NombreDocumento=NombreDocumento'
      'Descripcion=Descripcion'
      'SubDocumentos=SubDocumentos'
      'IdGrupoDocumento=IdGrupoDocumento'
      'Tipo=Tipo'
      'Obligatorio=Obligatorio'
      'CodigoPlazaDetalle=CodigoPlazaDetalle'
      'FechaRequerido=FechaRequerido')
    BCDToCurrency = False
    Left = 472
    Top = 224
  end
  object cdPostulantes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 72
  end
  object dsPostulantes: TDataSource
    DataSet = cdMemoryPost
    Left = 696
    Top = 192
  end
  object cdMemoryPost: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 72
  end
  object tmrAfterScroll: TTimer
    Enabled = False
    Interval = 400
    OnTimer = tmrAfterScrollTimer
    Left = 704
    Top = 248
  end
  object frxOficio: TfrxDBDataset
    UserName = 'ReporteOficio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'CodigoPostulante=CodigoPostulante'
      'CodigoPersonal=CodigoPersonal'
      'Imagen=Imagen'
      'Nombres=Nombres'
      'APaterno=APaterno'
      'AMaterno=AMaterno'
      'NombreCompleto=NombreCompleto'
      'IdOrganizacion=IdOrganizacion'
      'TituloOrganizacion=TituloOrganizacion'
      'IdDepartamento=IdDepartamento'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'IdCargo=IdCargo'
      'CodigoCargo=CodigoCargo'
      'TituloCargo=TituloCargo'
      'Curp=Curp'
      'NumeroSeguroSocial=NumeroSeguroSocial'
      'Calle=Calle'
      'Numero=Numero'
      'Ciudad=Ciudad'
      'Colonia=Colonia'
      'CP=CP'
      'Delegacion=Delegacion'
      'Estado=Estado'
      'EstadoCivil=EstadoCivil'
      'FechaNacimiento=FechaNacimiento'
      'GrupoSanguineo=GrupoSanguineo'
      'IdServidorCorreo=IdServidorCorreo'
      'Municipio=Municipio'
      'Pais=Pais'
      'rfc=rfc'
      'Sexo=Sexo'
      'Telefono=Telefono'
      'Correo=Correo'
      'Contacto=Contacto'
      'TelefonoContacto=TelefonoContacto'
      'Asignado=Asignado'
      'Postulado=Postulado'
      'FechaAlta=FechaAlta'
      'FechaBaja=FechaBaja'
      'NumeroDocumentos=NumeroDocumentos'
      'ListaIdDocumento=ListaIdDocumento'
      'CtaDoc=CtaDoc'
      'CtaMaxDoc=CtaMaxDoc'
      'CtaMaxExtra=CtaMaxExtra'
      'PorceMax=PorceMax')
    BCDToCurrency = False
    Left = 384
    Top = 280
  end
  object frxReporteOficio: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 42172.558131504600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo48OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  MemoNombreCompleto1.memo := MemoNombreCompleto.memo;          ' +
        '                                                                ' +
        '                                               '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 472
    Top = 352
    Datasets = <
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end
      item
        DataSet = frxOficio
        DataSetName = 'ReporteOficio'
      end
      item
        DataSet = frxOrganizacion
        DataSetName = 'ReporteOrganizacion'
      end
      item
        DataSet = frxPlazaDetalle
        DataSetName = 'ReportePlazaDetalle'
      end
      item
        DataSet = frxPlazaGeneral
        DataSetName = 'ReportePlazaGeneral'
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
      Frame.ShadowWidth = 1.000000000000000000
      Frame.Width = 0.100000000000000000
      object PageFooter1: TfrxPageFooter
        Height = 170.078850000000000000
        Top = 789.921770000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 506.457020000000000000
          Top = 147.401670000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 294.803340000000000000
          Top = 71.811069999999970000
          Width = 144.702005710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VoBo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 30.236240000000000000
          Top = 71.811069999999970000
          Width = 144.702005710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Autoriza')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 570.709030000000000000
          Top = 71.811069999999970000
          Width = 144.702005710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Postulante')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoNombreCompleto1: TfrxMemoView
          Left = 544.252320000000000000
          Top = 60.472480000000020000
          Width = 193.835895710000000000
          Height = 16.197985710000000000
          OnBeforePrint = 'Memo48OnBeforePrint'
          ShowHint = False
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 268.346630000000000000
          Top = 60.472480000000020000
          Width = 193.835895710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReportePlazaGeneral."NombreVoBo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 60.472480000000020000
          Width = 193.835895710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReportePlazaGeneral."NombreAutoriza"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 261.867435710000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        DataSet = frxOficio
        DataSetName = 'ReporteOficio'
        RowCount = 1
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 22.677180000000000000
          Top = 18.897650000000000000
          Width = 103.127175710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Nombre del Postulante:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 22.677180000000000000
          Top = 41.574830000000020000
          Width = 46.434225710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Direcci'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 22.677180000000000000
          Top = 64.252009999999980000
          Width = 31.316105710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Pais:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 22.677180000000000000
          Top = 86.929190000000120000
          Width = 38.875165710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 22.677180000000000000
          Top = 154.960730000000000000
          Width = 42.654695710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Tel'#233'fono:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 22.677180000000000000
          Top = 177.637910000000000000
          Width = 84.229525710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Correo Electr'#243'nico:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 616.063390000000000000
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 115.653543310000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoNombreCompleto: TfrxMemoView
          Left = 124.724490000000000000
          Top = 18.897650000000000000
          Width = 254.308375710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."NombreCompleto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 385.512060000000000000
          Top = 41.574830000000020000
          Width = 95.568115710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Fecha de Nacimiento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 385.512060000000000000
          Top = 64.252009999999980000
          Width = 95.568115710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#186' de Seguro Social:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 445.984540000000000000
          Top = 18.897650000000000000
          Width = 35.095635710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sexo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 325.039580000000000000
          Top = 86.929190000000120000
          Width = 156.040595710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Registro Federal del Contribuyente:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 385.512060000000000000
          Top = 109.606370000000000000
          Width = 95.568115710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'CURP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 22.677180000000000000
          Top = 109.606370000000000000
          Width = 38.875165710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 22.677180000000000000
          Top = 132.283550000000000000
          Width = 46.434225710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Municipio:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 396.850650000000000000
          Top = 230.551330000000000000
          Width = 84.229525710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Tel'#233'fono:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 22.677180000000000000
          Top = 230.551330000000000000
          Width = 57.772815710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Contacto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 22.677180000000000000
          Top = 204.094620000000000000
          Width = 695.433397950000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clCream
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'Referencia del Postulante ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 75.590600000000000000
          Top = 41.574830000000020000
          Width = 303.442265710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 60.472480000000000000
          Top = 64.252009999999980000
          Width = 246.749315710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'Pais'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."Pais"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 60.472480000000000000
          Top = 86.929190000000120000
          Width = 246.749315710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'Estado'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."Estado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 60.472480000000000000
          Top = 109.606370000000000000
          Width = 246.749315710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'Ciudad'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."Ciudad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 71.811070000000000000
          Top = 132.283550000000000000
          Width = 235.410725710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'Municipio'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."Municipio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 71.811070000000000000
          Top = 154.960730000000000000
          Width = 235.410725710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'Telefono'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."Telefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 109.606370000000000000
          Top = 177.637910000000000000
          Width = 197.615425710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'Correo'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."Correo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 480.000310000000000000
          Top = 18.897650000000000000
          Width = 129.583885710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'Sexo'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."Sexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 483.779840000000000000
          Top = 41.574830000000020000
          Width = 125.804355710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'FechaNacimiento'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."FechaNacimiento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 483.779840000000000000
          Top = 64.252009999999980000
          Width = 125.804355710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'NumeroSeguroSocial'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."NumeroSeguroSocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 483.779840000000000000
          Top = 86.929190000000120000
          Width = 125.804355710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'rfc'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."rfc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 483.779840000000000000
          Top = 109.606370000000000000
          Width = 125.804355710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'Curp'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."Curp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 83.149660000000000000
          Top = 230.551330000000000000
          Width = 295.883205710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'TelefonoContacto'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."TelefonoContacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 483.779840000000000000
          Top = 230.551330000000000000
          Width = 125.804355710000000000
          Height = 16.197985710000000000
          ShowHint = False
          DataField = 'TelefonoContacto'
          DataSet = frxOficio
          DataSetName = 'ReporteOficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReporteOficio."TelefonoContacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 423.307360000000000000
        Width = 740.409927000000000000
        Condition = 'ReporteOficio."IdPersonal"'
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Width = 695.433397950000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Informaci'#243'n del Postulante ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 162.606370000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        object Memo7: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000022000
          Width = 695.433397950000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Informaci'#243'n de Plaza Vacante ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 22.677180000000000000
          Top = 45.354359999999870000
          Width = 69.111405710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Departamento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 22.677180000000000000
          Top = 68.031540000000120000
          Width = 38.875165710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Puesto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 22.677180000000000000
          Top = 90.708720000000030000
          Width = 103.127175710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Experiencia Solicitada:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 385.512060000000000000
          Top = 45.354359999999870000
          Width = 95.568115710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Fecha de la Solicitud:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 385.512060000000000000
          Top = 68.031540000000120000
          Width = 80.449995710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Tipo de N'#243'mina:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 483.779840000000000000
          Top = 45.354359999999870000
          Width = 231.631195710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReportePlazaDetalle."Fecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 472.441250000000000000
          Top = 68.031540000000120000
          Width = 242.969785710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReportePlazaDetalle."Cuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReportePlazaDetalleCodigoPlaza: TfrxMemoView
          Left = 468.661720000000000000
          Top = 3.779529999999994000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CodigoPlaza'
          DataSet = frxPlazaDetalle
          DataSetName = 'ReportePlazaDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ReportePlazaDetalle."CodigoPlaza"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 98.267780000000000000
          Top = 45.354359999999990000
          Width = 231.631195710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReportePlazaDetalle."TituloDepartamento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 75.590600000000000000
          Top = 68.031540000000120000
          Width = 231.631195710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReportePlazaDetalle."TituloCargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 128.504020000000000000
          Top = 90.708720000000030000
          Width = 178.717775710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '[ReportePlazaDetalle."ExperienciaMinima"]  [ReportePlazaDetalle.' +
              '"UnidadExperiencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 22.677180000000000000
          Top = 132.283550000000000000
          Width = 72.890935710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Observaciones:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 102.047310000000000000
          Top = 132.283550000000000000
          Width = 613.363725710000000000
          Height = 16.197985710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[ReportePlazaDetalle."Observaciones"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 157.417440000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 52.913420000000000000
          Width = 570.709030000000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Oficio de Contrataci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 147.401670000000000000
          Top = 116.504020000000000000
          Width = 570.709030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha: [FormatDateTime('#39'mmmm dd, yyyy'#39',Date)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object ReporteOrganizacionReporteOrganizacion: TfrxMemoView
          Left = 147.401670000000000000
          Width = 570.709030000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataSet = FrmTablaFactoresIntegracion.frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."TituloOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 115.653543310000000000
          ShowHint = False
          DataField = 'imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Width = 0.500000000000000000
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object ReporteOrganizacionReporteOrganizacion1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 117.165430000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = FrmTablaFactoresIntegracion.frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 491.338900000000000000
          Top = 139.842610000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Oficio de Contrataci'#243'n OF-RHU-00001-2015')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxPlazaDetalle: TfrxDBDataset
    UserName = 'ReportePlazaDetalle'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdOrganizacion=IdOrganizacion'
      'IdOrganizacionPadre=IdOrganizacionPadre'
      'OrdenDepto=OrdenDepto'
      'IdDepartamento=IdDepartamento'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'IdPlaza=IdPlaza'
      'IdPlazaDetalle=IdPlazaDetalle'
      'CodigoPlaza=CodigoPlaza'
      'Fecha=Fecha'
      'FechaDocumento=FechaDocumento'
      'Observaciones=Observaciones'
      'IdGrupo=IdGrupo'
      'ExperienciaMinima=ExperienciaMinima'
      'UnidadExperiencia=UnidadExperiencia'
      'IdCargo=IdCargo'
      'CodigoCargo=CodigoCargo'
      'TituloCargo=TituloCargo'
      'IdDepartamento=IdDepartamento'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'Cuenta=Cuenta')
    BCDToCurrency = False
    Left = 368
    Top = 224
  end
  object frxOrganizacion: TfrxDBDataset
    UserName = 'ReporteOrganizacion'
    CloseDataSource = False
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 552
    Top = 216
  end
  object frxPlazaGeneral: TfrxDBDataset
    UserName = 'ReportePlazaGeneral'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPlaza=IdPlaza'
      'IdOrganizacion=IdOrganizacion'
      'IdDepartamento=IdDepartamento'
      'CodigoPlaza=CodigoPlaza'
      'FechaDocumento=FechaDocumento'
      'Fecha=Fecha'
      'IdUsuario=IdUsuario'
      'CodigoOrganizacion=CodigoOrganizacion'
      'TituloOrganizacion=TituloOrganizacion'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'CodigoSolicitante=CodigoSolicitante'
      'NombreSolicitante=NombreSolicitante'
      'CodigoCargoSolicitante=CodigoCargoSolicitante'
      'TituloCargoSolicitante=TituloCargoSolicitante'
      'CodigoDepartamentoSolicitante=CodigoDepartamentoSolicitante'
      'TituloDepartamentoSolicitante=TituloDepartamentoSolicitante'
      'CodigoAutoriza=CodigoAutoriza'
      'NombreAutoriza=NombreAutoriza'
      'CodigoDepartamentoAutoriza=CodigoDepartamentoAutoriza'
      'TituloDepartamentoAutoriza=TituloDepartamentoAutoriza'
      'CodigoVoBo=CodigoVoBo'
      'NombreVoBo=NombreVoBo'
      'CodigoCargoVoBo=CodigoCargoVoBo'
      'TituloCargoVoBo=TituloCargoVoBo'
      'CodigoDepartamentoVoBo=CodigoDepartamentoVoBo'
      'TituloDepartamentoVoBo=TituloDepartamentoVoBo'
      'DoctoAutorizacion=DoctoAutorizacion'
      'Observaciones=Observaciones')
    BCDToCurrency = False
    Left = 384
    Top = 352
  end
end
