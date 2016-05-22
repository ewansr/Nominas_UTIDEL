object FrmCriteriosBusqeudaTic: TFrmCriteriosBusqeudaTic
  Left = 0
  Top = 0
  Caption = 'FrmCriteriosBusqeudaTic'
  ClientHeight = 336
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 41
    Align = alTop
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object JvBehaviorLabel1: TJvBehaviorLabel
      Left = 6
      Top = 6
      Width = 717
      Height = 29
      Align = alClient
      Alignment = taCenter
      Caption = 
        '                                                           Crite' +
        'rios de Busqueda TIC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ExplicitWidth = 723
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 295
    Width = 729
    Height = 41
    Align = alBottom
    TabOrder = 1
    object NxButton1: TNxButton
      Left = 592
      Top = 1
      Width = 136
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
    end
    object NxButton2: TNxButton
      Left = 456
      Top = 1
      Width = 136
      Height = 39
      Align = alRight
      Caption = 'Guardar Criterio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 729
    Height = 88
    Align = alTop
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 2
    object GroupBox4: TGroupBox
      Left = 1
      Top = 1
      Width = 722
      Height = 81
      Align = alClient
      Caption = 'Criterio de Busqueda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object JvLabel3: TJvLabel
        Left = 48
        Top = 32
        Width = 50
        Height = 13
        Caption = 'Criterio: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 88
        Top = 64
        Width = 5
        Height = 13
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object Edit1: TEdit
        Left = 99
        Top = 29
        Width = 463
        Height = 21
        TabOrder = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 129
    Width = 729
    Height = 166
    Align = alClient
    TabOrder = 3
    object Panel5: TPanel
      Left = 298
      Top = 1
      Width = 245
      Height = 164
      Align = alClient
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 0
      object GroupBox3: TGroupBox
        Left = 6
        Top = 6
        Width = 233
        Height = 77
        Align = alTop
        Caption = 'Seleccion de Campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        ParentFont = False
        TabOrder = 0
        object JvLabel2: TJvLabel
          Left = 8
          Top = 27
          Width = 44
          Height = 13
          Caption = 'Campo:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Edit2: TEdit
          Left = 8
          Top = 46
          Width = 201
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 83
        Width = 233
        Height = 75
        Align = alClient
        Caption = 'Campo Seleccionado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object JvLabel1: TJvLabel
          Left = 14
          Top = 24
          Width = 51
          Height = 13
          Caption = 'Palabra: '
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Edit3: TEdit
          Left = 13
          Top = 43
          Width = 193
          Height = 21
          TabOrder = 0
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 297
      Height = 164
      Align = alLeft
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 6
        Width = 290
        Height = 152
        Align = alClient
        Caption = 'Seleccion de Campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Padding.Left = 5
        Padding.Right = 5
        Padding.Bottom = 5
        ParentFont = False
        TabOrder = 0
        object NextDBGrid1: TNextDBGrid
          Left = 7
          Top = 15
          Width = 276
          Height = 130
          Align = alClient
          TabOrder = 0
          TabStop = True
          OnCellDblClick = NextDBGrid1CellDblClick
          DataSource = dsespecdetalle
          object NxDBTextColumn1: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Header.Caption = 'Titulo Campo'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 0
            SortType = stAlphabetic
            FieldName = 'TituloDetalle'
          end
        end
      end
    end
    object Panel7: TPanel
      Left = 543
      Top = 1
      Width = 185
      Height = 164
      Align = alRight
      TabOrder = 2
      object NxButton3: TNxButton
        Left = 22
        Top = 21
        Width = 147
        Caption = 'A'#241'adir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = NxButton3Click
      end
      object NxButton4: TNxButton
        Left = 24
        Top = 50
        Width = 145
        Caption = 'Borrar Criterio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = NxButton4Click
      end
    end
  end
  object dscriteriosupdate: TDataSource
    Left = 344
  end
  object cdespecdetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
  end
  object dsespecdetalle: TDataSource
    DataSet = cdespecdetalle
    Left = 88
  end
end
