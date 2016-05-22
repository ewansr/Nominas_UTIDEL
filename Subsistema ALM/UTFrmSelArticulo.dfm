object FrmSelArticulo: TFrmSelArticulo
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Selecci'#243'n de art'#237'culos'
  ClientHeight = 353
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 33
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 8
      Top = 8
      Width = 77
      Height = 13
      Caption = 'Buscar Art'#237'culo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Edit1: TEdit
      Left = 82
      Top = 6
      Width = 402
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
      OnKeyDown = Edit1KeyDown
    end
    object Button1: TButton
      Left = 490
      Top = 2
      Width = 22
      Height = 25
      ImageIndex = 20
      Images = ClientModule1.PngImageList1
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 772
    Height = 320
    Align = alClient
    Padding.Left = 2
    Padding.Right = 2
    Padding.Bottom = 3
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 3
      Top = 1
      Width = 766
      Height = 210
      Align = alClient
      Caption = 'Coinsidencias'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Tag = 99
        Left = 2
        Top = 15
        Width = 762
        Height = 193
        Align = alClient
        DataSource = dsArticulo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CodigoArticulo'
            Title.Caption = 'C'#243'digo Art'#237'culo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TituloArticulo'
            Title.Caption = 'Descripci'#243'n'
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodigoUnidad'
            Title.Caption = 'Unidad M.'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TituloGrupo'
            Title.Caption = 'Grupo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TituloDisciplina'
            Title.Caption = 'Disciplina'
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 211
      Width = 766
      Height = 105
      Align = alBottom
      Caption = 'Descripci'#243'n completa'
      Padding.Left = 3
      Padding.Right = 4
      Padding.Bottom = 3
      TabOrder = 1
      object DBMemo1: TDBMemo
        Left = 5
        Top = 15
        Width = 755
        Height = 85
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object cdArticulo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 128
  end
  object dsArticulo: TDataSource
    DataSet = cdArticulo
    Left = 336
    Top = 128
  end
end
