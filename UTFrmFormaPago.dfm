inherited FrmFormaPago: TFrmFormaPago
  Caption = 'Formas de pago'
  ClientWidth = 686
  ExplicitTop = -64
  ExplicitWidth = 694
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 686
    ExplicitWidth = 686
    inherited LbFiltros: TJvLabel
      Width = 678
      ExplicitWidth = 684
    end
    inherited GroupBoxFiltro: TGroupBox
      Width = 336
      ExplicitWidth = 336
      inherited BtnSearch: TAdvShapeButton
        Left = 290
        OnClick = BtnSearchClick
        ExplicitLeft = 290
      end
      object edtCodigoFiltro: TAdvEdit
        Left = 16
        Top = 16
        Width = 98
        Height = 21
        EmptyText = 'C'#243'digo'
        ReturnIsTab = True
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
        Version = '2.9.0.0'
      end
      object edtTituloFiltro: TAdvEdit
        Left = 120
        Top = 16
        Width = 153
        Height = 21
        EmptyText = 'Descripci'#243'n'
        ReturnIsTab = True
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
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 686
    ExplicitWidth = 686
    inherited DBGridPrincipal: TNextDBGrid
      Width = 684
      ExplicitWidth = 684
      object NxDBTextColumn1: TNxDBTextColumn
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
        FieldName = 'codigoformapago'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Descripci'#243'n'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 400
        FieldName = 'tituloformapago'
      end
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Vencimientos'
        ParentFont = False
        Position = 2
        SortType = stNumeric
        FieldName = 'vencimientos'
        EmptyCaption = '0'
        FormatMask = '#,##0'
        Precision = 0
        Increment = 1.000000000000000000
        SpinButtons = False
      end
    end
    inherited PanelBarra: TPanel
      Width = 684
      ExplicitWidth = 684
      inherited Panel1: TPanel
        Width = 551
        ExplicitWidth = 551
      end
      inherited Panel2: TPanel
        Left = 554
        ExplicitLeft = 554
      end
    end
  end
end
