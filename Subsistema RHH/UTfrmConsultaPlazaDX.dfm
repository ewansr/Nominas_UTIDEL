object FrmConsultaPlazaDX: TFrmConsultaPlazaDX
  Left = 0
  Top = 0
  Caption = 'Consulta de Plazas'
  ClientHeight = 368
  ClientWidth = 917
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 917
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 917
      Height = 42
      Align = alTop
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 6
        Width = 217
        Height = 34
        TabOrder = 0
        object JvLabel1: TJvLabel
          Left = 8
          Top = 10
          Width = 74
          Height = 13
          Caption = 'Tipo de Plazas:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object cbTipo: TComboBox
          Left = 84
          Top = 7
          Width = 118
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = '< Todas >'
          OnChange = cbTipoChange
          Items.Strings = (
            '< Todas >'
            'Ocupadas'
            'Vacantes')
        end
      end
      object rgModo: TRadioGroup
        Left = 546
        Top = 1
        Width = 370
        Height = 40
        Align = alRight
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Iconos'
          'Lista'
          'Reporte'
          'Peque'#241'o')
        TabOrder = 1
        OnClick = rgModoClick
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 76
      Width = 917
      Height = 29
      Align = alClient
      BevelOuter = bvNone
      Padding.Right = 6
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 298
        Top = 0
        Height = 29
        Color = clBackground
        MinSize = 100
        ParentColor = False
        ResizeStyle = rsUpdate
        ExplicitHeight = 31
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 298
        Height = 29
        Align = alLeft
        BevelOuter = bvNone
        Padding.Top = 5
        Padding.Right = 4
        TabOrder = 0
        object cbCargo: TComboBox
          Left = 82
          Top = 5
          Width = 212
          Height = 21
          Align = alClient
          Style = csDropDownList
          TabOrder = 0
          OnChange = cbCargoChange
        end
        object Panel6: TPanel
          Left = 0
          Top = 5
          Width = 82
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          Padding.Top = 2
          TabOrder = 1
          object JvLabel2: TJvLabel
            Left = 43
            Top = 2
            Width = 39
            Height = 22
            Align = alRight
            Caption = 'Puesto:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
            ExplicitHeight = 13
          end
        end
      end
      object Panel7: TPanel
        Left = 301
        Top = 0
        Width = 610
        Height = 29
        Align = alClient
        BevelOuter = bvNone
        Padding.Top = 5
        TabOrder = 1
        object cbDepto: TComboBox
          Left = 89
          Top = 5
          Width = 521
          Height = 21
          Align = alClient
          Style = csDropDownList
          TabOrder = 0
          OnChange = cbDeptoChange
        end
        object Panel8: TPanel
          Left = 0
          Top = 5
          Width = 89
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          Padding.Top = 2
          TabOrder = 1
          object JvLabel3: TJvLabel
            Left = 14
            Top = 2
            Width = 75
            Height = 22
            Align = alRight
            Caption = 'Departamento:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
            ExplicitHeight = 13
          end
        end
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 42
      Width = 917
      Height = 34
      Align = alTop
      TabOrder = 2
      object JvLabel4: TJvLabel
        Left = 9
        Top = 10
        Width = 51
        Height = 13
        Caption = 'Convenio:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object cbConvenio: TComboBox
        Left = 62
        Top = 7
        Width = 156
        Height = 21
        TabOrder = 0
        OnChange = cbConvenioChange
      end
      object Button2: TButton
        Left = 546
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 1
        Visible = False
        OnClick = Button2Click
      end
    end
  end
  object Button1: TButton
    Left = 344
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
  end
  object Panel10: TPanel
    Left = 0
    Top = 105
    Width = 917
    Height = 263
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 609
      Top = 0
      Width = 5
      Height = 263
      ExplicitLeft = 419
      ExplicitHeight = 260
    end
    object Panel11: TPanel
      Left = 0
      Top = 0
      Width = 609
      Height = 263
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Bottom = 5
      TabOrder = 0
      object lvPlaza: TAdvListView
        Left = 5
        Top = 5
        Width = 604
        Height = 253
        Align = alClient
        Columns = <
          item
            Caption = 'Puesto/Vacante'
          end
          item
            Caption = 'Departamento'
          end
          item
            Caption = 'Codigo Solicitud de Plazas'
          end
          item
            Caption = 'Codigo Plaza'
          end
          item
            Caption = 'Convenio'
          end
          item
            Caption = 'Personal'
          end
          item
            Caption = 'Fecha de Contrataci'#243'n'
          end
          item
            Caption = 'Postulantes'
          end>
        DragMode = dmAutomatic
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        OnChange = lvPlazaChange
        FilterBar = True
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        ItemHeight = 20
        DetailView.Font.Charset = DEFAULT_CHARSET
        DetailView.Font.Color = clBlue
        DetailView.Font.Height = -11
        DetailView.Font.Name = 'Tahoma'
        DetailView.Font.Style = []
        Version = '1.6.5.1'
        ExplicitHeight = 252
      end
    end
    object Panel12: TPanel
      Left = 614
      Top = 0
      Width = 303
      Height = 263
      Align = alClient
      BevelOuter = bvNone
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      object lvAsignados: TAdvListView
        Left = 0
        Top = 5
        Width = 298
        Height = 253
        Align = alClient
        Columns = <
          item
            Caption = 'Nombre Completo'
            Width = 200
          end
          item
            Caption = 'Categoria'
            Width = 100
          end>
        DragMode = dmAutomatic
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = lvAsignadosChange
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        DetailView.Font.Charset = DEFAULT_CHARSET
        DetailView.Font.Color = clBlue
        DetailView.Font.Height = -11
        DetailView.Font.Name = 'Tahoma'
        DetailView.Font.Style = []
        Version = '1.6.5.1'
      end
    end
  end
  object BtnReestablecer: TAdvSmoothButton
    Left = 328
    Top = 1
    Width = 120
    Height = 35
    Status.Caption = '0'
    Status.Appearance.Fill.Color = clRed
    Status.Appearance.Fill.ColorMirror = clNone
    Status.Appearance.Fill.ColorMirrorTo = clNone
    Status.Appearance.Fill.GradientType = gtSolid
    Status.Appearance.Fill.BorderColor = clGray
    Status.Appearance.Fill.Rounding = 0
    Status.Appearance.Fill.ShadowOffset = 0
    Status.Appearance.Fill.Glow = gmNone
    Status.Appearance.Font.Charset = DEFAULT_CHARSET
    Status.Appearance.Font.Color = clWhite
    Status.Appearance.Font.Height = -11
    Status.Appearance.Font.Name = 'Tahoma'
    Status.Appearance.Font.Style = []
    Caption = 'Reestablecer'
    Color = clSkyBlue
    TabOrder = 3
    Visible = False
    Version = '1.6.9.4'
    OnClick = BtnReestablecerClick
  end
end
