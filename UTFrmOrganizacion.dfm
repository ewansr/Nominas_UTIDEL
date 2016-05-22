object FrmOrganizacion: TFrmOrganizacion
  Left = 0
  Top = 0
  Caption = 'Estructura Organizacional'
  ClientHeight = 489
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClick = FormClick
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 52
    Width = 809
    Height = 437
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 208
      Top = 0
      Height = 437
      ResizeStyle = rsUpdate
      ExplicitLeft = 264
      ExplicitTop = 104
      ExplicitHeight = 100
    end
    object ScrollBox0: TScrollBox
      Left = 211
      Top = 0
      Width = 598
      Height = 437
      Align = alClient
      Color = clWhite
      ParentColor = False
      TabOrder = 3
    end
    object ScrollBox1: TScrollBox
      Left = 211
      Top = 0
      Width = 598
      Height = 437
      Align = alClient
      Color = clWhite
      ParentColor = False
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 577
        Height = 39
        Align = alTop
        BevelOuter = bvNone
        Enabled = False
        Padding.Left = 6
        Padding.Top = 12
        Padding.Right = 6
        Padding.Bottom = 5
        ParentColor = True
        TabOrder = 0
        object JvLabel2: TJvLabel
          Left = 6
          Top = 12
          Width = 59
          Height = 22
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object DBEdit2: TDBEdit
          Left = 65
          Top = 12
          Width = 506
          Height = 22
          Align = alClient
          DataField = 'CodigoOrganizacion'
          DataSource = dsOrganizacion2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 39
        Width = 577
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Enabled = False
        Padding.Left = 6
        Padding.Right = 6
        Padding.Bottom = 5
        ParentColor = True
        TabOrder = 1
        object JvLabel3: TJvLabel
          Left = 6
          Top = 0
          Width = 59
          Height = 22
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'T'#237'tulo:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object DBEdit3: TDBEdit
          Left = 65
          Top = 0
          Width = 506
          Height = 22
          Align = alClient
          DataField = 'TituloOrganizacion'
          DataSource = dsOrganizacion2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 346
        Width = 577
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Enabled = False
        Padding.Left = 6
        Padding.Right = 6
        Padding.Bottom = 5
        ParentColor = True
        TabOrder = 2
        object JvLabel4: TJvLabel
          Left = 6
          Top = 0
          Width = 59
          Height = 22
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nombre:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object DBEdit4: TDBEdit
          Left = 65
          Top = 0
          Width = 506
          Height = 22
          Align = alClient
          DataField = 'NombreOrganizacion'
          DataSource = dsOrganizacion2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 373
        Width = 577
        Height = 76
        Align = alTop
        BevelOuter = bvNone
        Enabled = False
        Padding.Left = 6
        Padding.Right = 6
        Padding.Bottom = 5
        ParentColor = True
        TabOrder = 3
        object JvLabel1: TJvLabel
          Left = 6
          Top = 0
          Width = 59
          Height = 71
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Descripci'#243'n:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ExplicitLeft = 4
          ExplicitTop = 1
        end
        object DBMemo1: TDBMemo
          Left = 65
          Top = 0
          Width = 506
          Height = 71
          Align = alClient
          DataField = 'Descripcion'
          DataSource = dsOrganizacion2
          TabOrder = 0
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 66
        Width = 577
        Height = 280
        Align = alTop
        Color = clWhite
        ParentColor = False
        TabOrder = 4
        object JvLabel6: TJvLabel
          Left = 216
          Top = 107
          Width = 111
          Height = 13
          Caption = 'Domicilio Organizaci'#243'n:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Panel2: TPanel
          Left = 2
          Top = 81
          Width = 573
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Enabled = False
          Padding.Left = 6
          Padding.Right = 6
          Padding.Bottom = 3
          ParentBackground = False
          ParentColor = True
          TabOrder = 0
          object JvLabel5: TJvLabel
            Left = 6
            Top = 0
            Width = 75
            Height = 63
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Domicilio:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object DBMemo2: TDBMemo
            Left = 81
            Top = 0
            Width = 486
            Height = 63
            Align = alClient
            DataField = 'DomicilioOrg'
            DataSource = dsOrganizacion2
            TabOrder = 0
          end
        end
        object Panel8: TPanel
          Left = 2
          Top = 15
          Width = 573
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Enabled = False
          Padding.Left = 6
          Padding.Right = 6
          Padding.Bottom = 3
          ParentBackground = False
          ParentColor = True
          TabOrder = 1
          object JvLabel7: TJvLabel
            Left = 6
            Top = 0
            Width = 75
            Height = 63
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Domicilio Fiscal:'
            Color = clWhite
            ParentColor = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
            ExplicitHeight = 13
          end
          object DBMemo3: TDBMemo
            Left = 81
            Top = 0
            Width = 486
            Height = 63
            Align = alClient
            DataField = 'DomicilioFiscalOrg'
            DataSource = dsOrganizacion2
            TabOrder = 0
          end
        end
        object Panel9: TPanel
          Left = 238
          Top = 188
          Width = 337
          Height = 90
          Align = alClient
          BevelOuter = bvNone
          Enabled = False
          Padding.Left = 4
          Padding.Top = 4
          Padding.Right = 4
          Padding.Bottom = 4
          TabOrder = 2
          object JvDBImage1: TJvDBImage
            Left = 4
            Top = 4
            Width = 329
            Height = 82
            Align = alClient
            DataField = 'Imagen'
            DataSource = dsOrganizacion2
            TabOrder = 0
          end
        end
        object Panel10: TPanel
          Left = 2
          Top = 147
          Width = 573
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Enabled = False
          ParentColor = True
          TabOrder = 3
          object JvLabel8: TJvLabel
            Left = 28
            Top = 3
            Width = 53
            Height = 13
            AutoSize = False
            Caption = 'Tel'#233'fonos:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object DBEdit1: TDBEdit
            Left = 81
            Top = 3
            Width = 118
            Height = 21
            DataField = 'Telefono1'
            DataSource = dsOrganizacion2
            TabOrder = 0
          end
          object DBEdit5: TDBEdit
            Left = 205
            Top = 3
            Width = 122
            Height = 21
            DataField = 'Telefono2'
            DataSource = dsOrganizacion2
            TabOrder = 1
          end
          object DBEdit6: TDBEdit
            Left = 333
            Top = 3
            Width = 122
            Height = 21
            DataField = 'Telefono3'
            DataSource = dsOrganizacion2
            TabOrder = 2
          end
        end
        object Panel11: TPanel
          Left = 2
          Top = 188
          Width = 236
          Height = 90
          Align = alLeft
          BevelOuter = bvNone
          Enabled = False
          ParentColor = True
          TabOrder = 4
          object JvLabel9: TJvLabel
            Left = 6
            Top = 8
            Width = 75
            Height = 13
            AutoSize = False
            Caption = 'Reg.Fed.Caus:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel10: TJvLabel
            Left = 6
            Top = 35
            Width = 75
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Reg.Pat.IMSS:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel13: TJvLabel
            Left = 13
            Top = 62
            Width = 115
            Height = 13
            Caption = 'Salario M'#237'nimo de Zona:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object DBEdit7: TDBEdit
            Left = 84
            Top = 33
            Width = 150
            Height = 21
            DataField = 'rfc'
            DataSource = dsOrganizacion2
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 81
            Top = 6
            Width = 150
            Height = 21
            DataField = 'regpatimss'
            DataSource = dsOrganizacion2
            TabOrder = 1
          end
        end
      end
      object edti: TDBEdit
        Left = 83
        Top = 314
        Width = 149
        Height = 21
        DataField = 'Salario'
        DataSource = dsOrganizacion2
        TabOrder = 5
      end
    end
    object tvOrganizacion: TTreeView
      Left = 0
      Top = 0
      Width = 208
      Height = 437
      Align = alLeft
      Indent = 19
      ParentShowHint = False
      ReadOnly = True
      RightClickSelect = True
      RowSelect = True
      ShowHint = True
      TabOrder = 0
      OnChange = tvOrganizacionChange
    end
    object ScrollBox2: TScrollBox
      Left = 211
      Top = 0
      Width = 598
      Height = 437
      Align = alClient
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      object Label1: TLabel
        Left = 28
        Top = 47
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 21
        Top = 74
        Width = 44
        Height = 13
        Caption = 'Mascara:'
      end
      object Label3: TLabel
        Left = 7
        Top = 102
        Width = 58
        Height = 13
        Caption = 'Descripci'#243'n:'
      end
      object JvLabel11: TJvLabel
        Left = 11
        Top = 12
        Width = 174
        Height = 19
        Caption = 'Informaci'#243'n del convenio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -16
        HotTrackFont.Name = 'Times New Roman'
        HotTrackFont.Style = []
      end
      object Label4: TLabel
        Left = 4
        Top = 273
        Width = 64
        Height = 13
        Caption = 'Comentarios:'
      end
      object Label5: TLabel
        Left = 16
        Top = 246
        Width = 49
        Height = 13
        Caption = 'Ubicacion:'
      end
      object JvLabel12: TJvLabel
        Left = 33
        Top = 185
        Width = 32
        Height = 13
        Caption = 'T'#237'tulo:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBEditCodigo: TDBEdit
        Left = 71
        Top = 44
        Width = 194
        Height = 21
        DataField = 'codigoorganizacion'
        DataSource = dsOrganizacion
        TabOrder = 0
      end
      object DBEditTitulo: TDBEdit
        Left = 71
        Top = 71
        Width = 386
        Height = 21
        DataField = 'etiqueta'
        DataSource = dsOrganizacion
        TabOrder = 1
      end
      object DBMemoDescripcion: TDBMemo
        Left = 71
        Top = 99
        Width = 386
        Height = 77
        DataField = 'descripcion'
        DataSource = dsOrganizacion
        TabOrder = 2
      end
      object DBMemoComentarios: TDBMemo
        Left = 71
        Top = 270
        Width = 386
        Height = 77
        DataField = 'comentarios'
        DataSource = dsOrganizacion
        TabOrder = 3
      end
      object DBEditUbicacion: TDBEdit
        Left = 71
        Top = 243
        Width = 386
        Height = 21
        DataField = 'domicilioorg'
        DataSource = dsOrganizacion
        TabOrder = 4
      end
      object mTitulo: TDBMemo
        Left = 71
        Top = 182
        Width = 386
        Height = 55
        DataField = 'tituloorganizacion'
        DataSource = dsOrganizacion
        TabOrder = 5
      end
    end
  end
  object Panel12: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 1
    Align = alTop
    TabOrder = 1
    Visible = False
    object Panel13: TPanel
      Left = 1
      Top = 1
      Width = 218
      Height = 7
      Align = alLeft
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      TabOrder = 0
      object Btn_Eliminar: TAdvGlowButton
        Left = 143
        Top = 3
        Width = 70
        Height = 1
        Align = alLeft
        Caption = 'Eliminar'
        ImageIndex = 5
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = Btn_EliminarClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object Btn_Editar: TAdvGlowButton
        Left = 73
        Top = 3
        Width = 70
        Height = 1
        Align = alLeft
        Caption = 'Editar'
        ImageIndex = 4
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = Btn_EditarClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object Btn_Nuevo: TAdvGlowButton
        Left = 3
        Top = 3
        Width = 70
        Height = 1
        Align = alLeft
        Caption = 'Nuevo'
        ImageIndex = 0
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = Btn_NuevoClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
    object Panel14: TPanel
      Left = 219
      Top = 1
      Width = 88
      Height = 7
      Align = alLeft
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      TabOrder = 1
      object Btn_Imprimir: TAdvGlowButton
        Left = 3
        Top = 3
        Width = 80
        Height = 1
        Align = alLeft
        Caption = '&Imprimir'
        ImageIndex = 20
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
  end
  object cdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 240
  end
  object cdOrganizacion2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 304
  end
  object dsOrganizacion2: TDataSource
    DataSet = cdOrganizacion2
    Left = 48
    Top = 192
  end
  object cdNivel: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 128
  end
  object cdObras: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdOrganizacion'
    MasterFields = 'IdOrganizacion'
    MasterSource = dsOrganizacion
    PacketRecords = 0
    Params = <>
    Left = 456
    Top = 160
  end
  object dsObras: TDataSource
    DataSet = cdObras
    Left = 512
    Top = 160
  end
  object dsOrganizacion: TDataSource
    DataSet = cdOrganizacion
    Left = 144
    Top = 152
  end
  object cdRiesgo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 104
  end
  object dxbrmngr1: TdxBarManager
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
    Left = 1032
    Top = 8
    DockControlHeights = (
      0
      0
      51
      0)
    object tbdxbrmngr1Bar1: TdxBar
      Caption = 'MainToolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 914
      FloatTop = 436
      FloatClientWidth = 68
      FloatClientHeight = 184
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnBtnAgregar'
        end
        item
          Visible = True
          ItemName = 'btnBtnEditar'
        end
        item
          Visible = True
          ItemName = 'btnBtnEliminar'
        end
        item
          Visible = True
          ItemName = 'btnBtnActualizar'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnBtnAgregar: TdxBarLargeButton
      Caption = '&Agregar'
      Category = 0
      Hint = 'Agregar'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = Btn_NuevoClick
      AutoGrayScale = False
    end
    object btnBtnEliminar: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeImageIndex = 306
      OnClick = Btn_EliminarClick
      AutoGrayScale = False
    end
    object btnBtnEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 300
      OnClick = Btn_EditarClick
      AutoGrayScale = False
    end
    object btnBtnActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivNever
      LargeImageIndex = 643
      AutoGrayScale = False
    end
  end
end
