object FrmAsignacionIndividualTIC: TFrmAsignacionIndividualTIC
  Left = 0
  Top = 0
  Caption = 'Asignaciones Individuales de Insumos'
  ClientHeight = 532
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 903
    Height = 25
    Align = alTop
    TabOrder = 0
    object Btn_Archivo: TNxOptionButton
      Left = 1
      Top = 1
      Width = 70
      Height = 23
      Align = alLeft
      Caption = 'Archivo'
      Color = clBtnFace
      TabOrder = 0
      UseDockManager = False
      OnClick = Btn_ArchivoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 491
    Width = 903
    Height = 41
    Align = alBottom
    TabOrder = 1
    object NxButton2: TNxButton
      Left = 786
      Top = 1
      Width = 116
      Height = 39
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = NxButton2Click
    end
    object asignar: TNxButton
      Left = 670
      Top = 1
      Width = 116
      Height = 39
      Align = alRight
      Caption = 'Asignar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = asignarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 903
    Height = 466
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 901
      Height = 58
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 20
      Padding.Top = 10
      Padding.Right = 20
      Padding.Bottom = 10
      TabOrder = 0
      object JvBehaviorLabel1: TJvBehaviorLabel
        Left = -169
        Top = 10
        Width = 1050
        Height = 29
        Align = alClient
        Alignment = taRightJustify
        Caption = 
          '                                                                ' +
          '                            Asignacion Insumo Individual TIC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 59
      Width = 901
      Height = 406
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 113
        Width = 901
        Height = 0
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 1
        ExplicitTop = 182
        ExplicitWidth = 912
      end
      object Panel6: TPanel
        Left = 0
        Top = 282
        Width = 901
        Height = 124
        Align = alBottom
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 5
          Top = 5
          Width = 891
          Height = 114
          Align = alClient
          Caption = 'Insumo Seleccionado'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object JvLabel9: TJvLabel
            Left = 47
            Top = 25
            Width = 43
            Height = 13
            Caption = 'Codigo:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel10: TJvLabel
            Left = 41
            Top = 55
            Width = 49
            Height = 13
            Caption = 'Articulo:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel11: TJvLabel
            Left = 20
            Top = 82
            Width = 70
            Height = 13
            Caption = 'Descripcion:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object DBEdit2: TDBEdit
            Left = 96
            Top = 22
            Width = 672
            Height = 21
            Color = clMenuBar
            DataField = 'Codigo'
            DataSource = dsinsumo
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 96
            Top = 49
            Width = 672
            Height = 21
            Color = clMenuBar
            DataField = 'tituloarticulo'
            DataSource = dsinsumo
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 96
            Top = 77
            Width = 673
            Height = 21
            Color = clMenuBar
            DataField = 'descripciontotal'
            DataSource = dsinsumo
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 901
        Height = 113
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object GroupBox2: TGroupBox
          Left = 5
          Top = 5
          Width = 891
          Height = 108
          Align = alTop
          Caption = 
            'El Insumo arriba mensionado ser'#225' asignado a la siguiente persona' +
            ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object selpersonal: TNxButton
            Left = 225
            Top = 27
            Width = 33
            Caption = '...'
            TabOrder = 0
          end
          object Panel9: TPanel
            Left = 2
            Top = 15
            Width = 887
            Height = 88
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object JvLabel2: TJvLabel
              Left = 47
              Top = 14
              Width = 43
              Height = 13
              Caption = 'Codigo:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object JvLabel1: TJvLabel
              Left = 35
              Top = 39
              Width = 55
              Height = 13
              Caption = 'Nombres:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object JvLabel5: TJvLabel
              Left = 46
              Top = 63
              Width = 44
              Height = 13
              Caption = 'Puesto:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object JvLabel4: TJvLabel
              Left = 358
              Top = 63
              Width = 88
              Height = 13
              Caption = 'Departamento:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object DBEdit1: TDBEdit
              Left = 96
              Top = 12
              Width = 121
              Height = 21
              Color = clMenuBar
              DataField = 'CodigoPersonal'
              DataSource = dsrecibio
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit5: TDBEdit
              Left = 96
              Top = 37
              Width = 670
              Height = 21
              Color = clMenuBar
              DataField = 'Nombres'
              DataSource = dsrecibio
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 96
              Top = 64
              Width = 252
              Height = 21
              Color = clMenuBar
              DataField = 'titulocargo'
              DataSource = dsrecibio
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit8: TDBEdit
              Left = 449
              Top = 62
              Width = 318
              Height = 21
              Color = clMenuBar
              DataField = 'titulodepartamento'
              DataSource = dsrecibio
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object NxButton5: TNxButton
              Left = 224
              Top = 9
              Width = 32
              Caption = '...'
              TabOrder = 4
              OnClick = NxButton5Click
            end
          end
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 113
        Width = 901
        Height = 169
        Align = alClient
        TabOrder = 2
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 899
          Height = 167
          Align = alClient
          Caption = 'Informacion Resguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object JvLabel7: TJvLabel
            Left = 40
            Top = 66
            Width = 43
            Height = 13
            Caption = 'Codigo:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel8: TJvLabel
            Left = 9
            Top = 94
            Width = 77
            Height = 13
            Caption = 'Comentarios:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel6: TJvLabel
            Left = 43
            Top = 34
            Width = 38
            Height = 13
            Caption = 'Fecha:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel12: TJvLabel
            Left = 460
            Top = 99
            Width = 56
            Height = 13
            Caption = 'Enterado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel13: TJvLabel
            Left = 470
            Top = 68
            Width = 46
            Height = 13
            Caption = 'Aprobo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel14: TJvLabel
            Left = 467
            Top = 34
            Width = 49
            Height = 13
            Caption = 'Entrego:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object DBMemo1: TDBMemo
            Left = 92
            Top = 86
            Width = 307
            Height = 55
            DataField = 'comentarios'
            DataSource = dsresguardos
            TabOrder = 0
          end
          object Edit1: TEdit
            Left = 91
            Top = 59
            Width = 307
            Height = 21
            Enabled = False
            TabOrder = 1
          end
          object DTFechaAsignacion: TDBDateEdit
            Left = 91
            Top = 32
            Width = 307
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataField = 'fechaasig'
            DataSource = dsresguardodetalle
            NumGlyphs = 2
            TabOrder = 2
          end
          object Edit2: TEdit
            Left = 523
            Top = 30
            Width = 323
            Height = 21
            TabOrder = 3
          end
          object NxButton1: TNxButton
            Left = 851
            Top = 29
            Width = 30
            Caption = '...'
            TabOrder = 4
            OnClick = NxButton1Click
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 523
            Top = 64
            Width = 357
            Height = 21
            DataField = 'aprobo'
            DataSource = dsresguardos
            KeyField = 'idpersonal'
            ListField = 'infgeneral'
            ListSource = dsaprobo
            TabOrder = 5
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 523
            Top = 96
            Width = 357
            Height = 21
            DataField = 'enterado'
            DataSource = dsresguardos
            KeyField = 'idpersonal'
            ListField = 'infgeneral'
            ListSource = dsenterado
            TabOrder = 6
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 8
    object SeleccionarPersonal1: TMenuItem
      Caption = 'Seleccionar Personal'
      OnClick = SeleccionarPersonal1Click
    end
    object Asignar1: TMenuItem
      Caption = 'Asignar'
      OnClick = Asignar1Click
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      OnClick = Salir1Click
    end
  end
  object dsinsumo: TDataSource
    Left = 136
    Top = 8
  end
  object cdrecibio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 64
  end
  object dsrecibio: TDataSource
    DataSet = cdrecibio
    Left = 320
    Top = 64
  end
  object cdentrego: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 184
  end
  object cdaprobo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 184
  end
  object cdenterado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 184
  end
  object dsentrego: TDataSource
    DataSet = cdentrego
    Left = 544
    Top = 184
  end
  object dsaprobo: TDataSource
    DataSet = cdaprobo
    Left = 648
    Top = 184
  end
  object dsenterado: TDataSource
    DataSet = cdenterado
    Left = 752
    Top = 184
  end
  object cdresguardos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 72
  end
  object cdresguardodetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 72
  end
  object dsresguardos: TDataSource
    DataSet = cdresguardos
    Left = 592
    Top = 80
  end
  object dsresguardodetalle: TDataSource
    DataSet = cdresguardodetalle
    Left = 784
    Top = 72
  end
  object cdnumultimocodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 128
  end
  object dsnumultimocodigo: TDataSource
    DataSet = cdnumultimocodigo
    Left = 856
    Top = 128
  end
end
