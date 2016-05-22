inherited FrmManttoPrev: TFrmManttoPrev
  Caption = 'Mantenimientos'
  ClientWidth = 733
  ExplicitWidth = 741
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 733
    inherited LbFiltros: TJvLabel
      Width = 725
    end
    inherited GroupBoxFiltro: TGroupBox
      Width = 304
      ExplicitWidth = 304
      inherited BtnSearch: TAdvShapeButton
        Left = 256
        OnClick = BtnSearchClick
        ExplicitLeft = 256
      end
      object edtFCodigo: TAdvEdit
        Left = 19
        Top = 17
        Width = 98
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
        Left = 133
        Top = 17
        Width = 98
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
    Width = 733
    inherited DBGridPrincipal: TNextDBGrid
      Width = 731
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 0
        SortType = stAlphabetic
        Width = 100
        FieldName = 'codigomanttoprev'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 1
        SortType = stAlphabetic
        Width = 350
        FieldName = 'titulomanttoprev'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Recurrencia'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stAlphabetic
        FieldName = 'recurrencia'
      end
    end
    inherited PanelBarra: TPanel
      Width = 731
      inherited Panel1: TPanel
        Width = 598
      end
      inherited Panel2: TPanel
        Left = 601
      end
    end
  end
end
