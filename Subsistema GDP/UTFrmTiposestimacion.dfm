inherited FrmTiposestimacion: TFrmTiposestimacion
  Caption = 'Tipos de Estimaciones'
  ClientWidth = 798
  ExplicitWidth = 814
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 798
    ExplicitLeft = -1
    ExplicitTop = -5
    ExplicitWidth = 798
    inherited LbFiltros: TJvLabel
      Width = 796
      ExplicitWidth = 796
    end
    inherited GroupBoxFiltro: TGroupBox
      Width = 368
      ExplicitWidth = 368
      inherited BtnSearch: TAdvShapeButton
        Left = 319
        Top = 5
        OnClick = BtnSearchClick
        ExplicitLeft = 319
        ExplicitTop = 5
      end
      object edtFCodigo: TAdvEdit
        Left = 3
        Top = 17
        Width = 159
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
        TabOrder = 1
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
      object edtFtitulo: TAdvEdit
        Left = 168
        Top = 17
        Width = 145
        Height = 21
        EmptyText = 'T'#237'tulo'
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
        OnKeyPress = edtFtituloKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 798
    ExplicitWidth = 798
    inherited DBGridPrincipal: TNextDBGrid
      Width = 796
      ExplicitWidth = 796
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 150
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
        Width = 150
        FieldName = 'codigotipoestimacion'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 150
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 150
        FieldName = 'titulotipoestimacion'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Descripci'#243'n'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 500
        FieldName = 'descripcion'
      end
    end
    inherited PanelBarra: TPanel
      Width = 796
      ExplicitWidth = 796
      inherited Panel1: TPanel
        Width = 663
        ExplicitWidth = 663
      end
      inherited Panel2: TPanel
        Left = 666
        ExplicitLeft = 666
      end
    end
    inherited pnlProgress: TPanel
      inherited pbProgress: TProgressBar
        Top = 16
        ExplicitTop = 16
      end
    end
  end
end
