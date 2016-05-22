object FrmConsumoxArticulo: TFrmConsumoxArticulo
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 125
  Caption = 'Consumibles por Art'#237'culo'
  ClientHeight = 506
  ClientWidth = 925
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 465
    Width = 925
    Height = 41
    Align = alBottom
    TabOrder = 0
    object NxButton4: TNxButton
      Left = 793
      Top = 1
      Width = 131
      Height = 39
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      OnClick = NxButton4Click
    end
    object Btn_Grabar: TNxButton
      Left = 662
      Top = 1
      Width = 131
      Height = 39
      Align = alRight
      Caption = 'Guardar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_GrabarClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 125
    Width = 925
    Height = 340
    Align = alClient
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 6
      Top = 6
      Width = 913
      Height = 328
      Align = alClient
      Caption = 'Conswumibles Asignados al Articulo'
      TabOrder = 0
      object Panel6: TPanel
        Left = 2
        Top = 15
        Width = 751
        Height = 311
        Align = alLeft
        Caption = 'Panel6'
        TabOrder = 0
        object NextDBGrid1: TNextDBGrid
          Left = 1
          Top = 1
          Width = 749
          Height = 309
          Align = alClient
          Options = [goHeader, goSelectFullRow]
          TabOrder = 0
          TabStop = True
          DataSource = dsconsumoarticulo
          object NxDBTextColumn2: TNxDBTextColumn
            DefaultWidth = 100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'C'#243'digo'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 0
            SortType = stAlphabetic
            Width = 100
            FieldName = 'CodigoConsumible'
          end
          object NxDBTextColumn3: TNxDBTextColumn
            DefaultWidth = 300
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Consumible'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 1
            SortType = stAlphabetic
            Width = 300
            FieldName = 'TituloConsumible'
          end
          object NxDBMemoColumn1: TNxDBMemoColumn
            DefaultWidth = 90
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Medida'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 2
            SortType = stAlphabetic
            Width = 90
            FieldName = 'TituloUnidad'
          end
        end
      end
      object Panel7: TPanel
        Left = 726
        Top = 15
        Width = 185
        Height = 311
        Align = alRight
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object EliminarConsumible: TNxButton
          Left = 5
          Top = 29
          Width = 175
          Height = 24
          Align = alTop
          Caption = 'Eliminar Consumible'
          TabOrder = 0
          OnClick = EliminarConsumibleClick
        end
        object AgregarConsumible: TNxButton
          Left = 5
          Top = 5
          Width = 175
          Height = 24
          Align = alTop
          Caption = 'Agregar Consumible'
          TabOrder = 1
          OnClick = AgregarConsumibleClick
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 125
    Align = alTop
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 6
      Top = 6
      Width = 913
      Height = 113
      Align = alClient
      Caption = 'Busqueda de Art'#237'culo'
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 24
        Top = 24
        Width = 96
        Height = 13
        Caption = 'Codigo de Articulo: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 41
        Top = 62
        Width = 71
        Height = 13
        Caption = 'Titulo Articulo:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 344
        Top = 24
        Width = 39
        Height = 13
        Caption = 'Unidad:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 323
        Top = 59
        Width = 60
        Height = 13
        Caption = 'Descripcion:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object BuscaArticulo: TNxButton
        Left = 304
        Top = 21
        Width = 25
        Caption = '...'
        TabOrder = 0
        OnClick = BuscaArticuloClick
      end
      object DBEdit2: TDBEdit
        Tag = 1
        Left = 117
        Top = 59
        Width = 186
        Height = 21
        DataField = 'tituloarticulo'
        DataSource = dsarticulo
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Tag = 1
        Left = 389
        Top = 21
        Width = 228
        Height = 21
        DataField = 'codigounidad'
        DataSource = dsarticulo
        TabOrder = 2
      end
      object DBMemo1: TDBMemo
        Tag = 1
        Left = 389
        Top = 57
        Width = 436
        Height = 49
        DataField = 'descripcion'
        DataSource = dsarticulo
        TabOrder = 3
      end
      object ECodigoArticulo: TEdit
        Left = 117
        Top = 21
        Width = 186
        Height = 21
        TabOrder = 4
        OnChange = ECodigoArticuloChange
        OnKeyDown = ECodigoArticuloKeyDown
      end
    end
  end
  object cdconsumoarticulo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdArticulo'
    MasterFields = 'IdArticulo'
    MasterSource = dsarticulo
    PacketRecords = 0
    Params = <>
    Left = 296
    Top = 272
  end
  object dsconsumoarticulo: TDataSource
    DataSet = cdconsumoarticulo
    Left = 400
    Top = 272
  end
  object cdarticulo: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdarticuloAfterOpen
    BeforeClose = cdarticuloBeforeClose
    AfterRefresh = cdarticuloAfterRefresh
    Left = 656
    Top = 84
  end
  object dsarticulo: TDataSource
    DataSet = cdarticulo
    Left = 720
    Top = 88
  end
  object cdConsumible: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterApplyUpdates = cdConsumibleAfterApplyUpdates
    Left = 808
    Top = 344
  end
end
