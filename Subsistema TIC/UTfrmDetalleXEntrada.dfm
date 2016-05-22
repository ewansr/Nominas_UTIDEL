object FrmDetalleXEntrada: TFrmDetalleXEntrada
  Left = 0
  Top = 0
  Caption = 'Detalle de Partidas Por Entradas'
  ClientHeight = 479
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 978
    Height = 31
    Align = alTop
    Padding.Left = 1
    Padding.Top = 1
    Padding.Bottom = 3
    TabOrder = 0
    object Btn_Archivo: TNxOptionButton
      Left = 2
      Top = 2
      Width = 78
      Height = 25
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
    Top = 31
    Width = 978
    Height = 448
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 978
      Height = 75
      Align = alTop
      Caption = 'Datos de Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 5
        Top = 23
        Width = 99
        Height = 13
        Caption = 'Numero de Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 635
        Top = 20
        Width = 35
        Height = 13
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 4
        Top = 45
        Width = 58
        Height = 13
        Caption = 'Referencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 631
        Top = 45
        Width = 39
        Height = 13
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBEdit1: TDBEdit
        Left = 105
        Top = 22
        Width = 104
        Height = 18
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        DataField = 'NumeroMR'
        DataSource = dsentrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 65
        Top = 46
        Width = 464
        Height = 18
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        DataField = 'Referencia'
        DataSource = dsentrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 672
        Top = 46
        Width = 154
        Height = 18
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        DataField = 'Estado'
        DataSource = dsentrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 672
        Top = 21
        Width = 154
        Height = 18
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        DataField = 'fecha'
        DataSource = dsentrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 720
      Top = 75
      Width = 258
      Height = 302
      Align = alRight
      Caption = 'Partida seleccionada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Panel4: TPanel
        Left = 2
        Top = 15
        Width = 254
        Height = 133
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object JvLabel11: TJvLabel
          Left = 10
          Top = 72
          Width = 49
          Height = 13
          Caption = 'Cantidad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel5: TJvLabel
          Left = 10
          Top = 114
          Width = 60
          Height = 13
          Caption = 'Descripcion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel8: TJvLabel
          Left = 9
          Top = 34
          Width = 71
          Height = 13
          Caption = 'Titulo Articulo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Label6: TLabel
          Left = 140
          Top = 81
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit5: TDBEdit
          Left = 82
          Top = 34
          Width = 167
          Height = 18
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          DataField = 'TituloArticulo'
          DataSource = dsentrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 65
          Top = 72
          Width = 116
          Height = 18
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          DataField = 'Cantidad'
          DataSource = dsentrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 187
          Top = 72
          Width = 62
          Height = 18
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          DataField = 'CodigoUnidad'
          DataSource = dsentrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 2
        end
      end
      object Panel5: TPanel
        Left = 2
        Top = 148
        Width = 254
        Height = 152
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object DBMemo1: TDBMemo
          Left = 5
          Top = 5
          Width = 244
          Height = 142
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clBtnFace
          DataField = 'descripcion'
          DataSource = dsarticulo
          TabOrder = 0
        end
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 75
      Width = 720
      Height = 302
      Align = alClient
      Caption = 'Panel6'
      Padding.Left = 30
      Padding.Right = 30
      TabOrder = 2
      object Griddetalle: TNextDBGrid
        Left = 31
        Top = 1
        Width = 658
        Height = 300
        Align = alClient
        Options = [goEscClearEdit, goHeader, goSecondClickEdit, goInplaceEditEvents]
        TabOrder = 0
        TabStop = True
        OnAfterEdit = GriddetalleAfterEdit
        OnMouseDown = GriddetalleMouseDown
        DataSource = dsmemPartidas
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 377
      Width = 978
      Height = 71
      Align = alBottom
      Padding.Left = 4
      Padding.Top = 4
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 3
      object GroupBox3: TGroupBox
        Left = 5
        Top = 5
        Width = 968
        Height = 61
        Align = alClient
        Caption = 'Opciones'
        TabOrder = 0
        object NxButton1: TNxButton
          Left = 848
          Top = 15
          Width = 118
          Height = 44
          Align = alRight
          Caption = 'Cerrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = NxButton1Click
        end
        object NxButton2: TNxButton
          Left = 730
          Top = 15
          Width = 118
          Height = 44
          Align = alRight
          Caption = 'Guardar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = NxButton2Click
        end
        object NxButton3: TNxButton
          Left = 612
          Top = 15
          Width = 118
          Height = 44
          Align = alRight
          Caption = 'Guardar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnClick = NxButton3Click
        end
        object NxButton4: TNxButton
          Left = 494
          Top = 15
          Width = 118
          Height = 44
          Align = alRight
          Caption = 'Camcelar Cambios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = NxButton4Click
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 144
    Top = 65528
    object AbrirEntrada1: TMenuItem
      Caption = 'Abrir'
      OnClick = AbrirEntrada1Click
    end
    object CerrarEntrada1: TMenuItem
      Caption = 'Cerrar '
      OnClick = CerrarEntrada1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object guardar: TMenuItem
      Caption = 'Guardar'
      OnClick = guardarClick
    end
    object Guardarycerrar1: TMenuItem
      Caption = 'Guardar y Cerrar'
      OnClick = Guardarycerrar1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object cancelarcambios1: TMenuItem
      Caption = 'Cancelar Cambios'
      OnClick = cancelarcambios1Click
    end
    object CancelarCambiosyCerrar1: TMenuItem
      Caption = 'Cancelar Cambios y Cerrar'
      OnClick = CancelarCambiosyCerrar1Click
    end
  end
  object cdentrada: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 432
  end
  object dsentrada: TDataSource
    DataSet = cdentrada
    Left = 416
  end
  object memPartidas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
  end
  object dsmemPartidas: TDataSource
    DataSet = memPartidas
    Left = 320
  end
  object cdarticulo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
  end
  object dsarticulo: TDataSource
    DataSet = cdarticulo
    Left = 544
  end
  object cdespecdetallesubgrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 656
  end
  object dsespecdetallesubgrupo: TDataSource
    DataSet = cdespecdetallesubgrupo
    Left = 640
  end
  object cddetalleespecificado: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 760
  end
  object dsdetalleespecificado: TDataSource
    DataSet = cddetalleespecificado
    Left = 744
  end
  object cdnumultimoinsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 856
  end
  object dsnumultimoinsumo: TDataSource
    DataSet = cdnumultimoinsumo
    Left = 840
  end
  object cdcantidadinsumos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 928
    Top = 16
  end
  object dscantidadinsumos: TDataSource
    DataSet = cdcantidadinsumos
    Left = 936
    Top = 32
  end
  object PopupMenu2: TPopupMenu
    Left = 376
    Top = 232
    object MultiplicarCeldas1: TMenuItem
      Caption = 'Multiplicar Celdas'
      OnClick = MultiplicarCeldas1Click
    end
  end
  object cdestadoinsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 400
  end
  object dsestadoinsumo: TDataSource
    DataSet = cdestadoinsumo
    Left = 328
    Top = 400
  end
  object cdmanttoinformativa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 424
  end
  object dsmanttoinformativa: TDataSource
    DataSet = cdmanttoinformativa
    Left = 88
    Top = 424
  end
  object cdinsumoxarticulo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 760
    Top = 288
  end
  object dsinsumoxarticuulo: TDataSource
    DataSet = cdinsumoxarticulo
    Left = 848
    Top = 288
  end
  object cdsubgrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 752
    Top = 344
  end
  object dssubgrupo: TDataSource
    DataSet = cdsubgrupo
    Left = 800
    Top = 344
  end
end
