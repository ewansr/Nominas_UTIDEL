inherited FrmGrado: TFrmGrado
  Caption = 'Grados'
  ClientHeight = 437
  ClientWidth = 481
  ExplicitWidth = 497
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 481
    ExplicitWidth = 481
    inherited LbFiltros: TJvLabel
      Width = 473
      ExplicitWidth = 473
    end
    inherited GroupBoxFiltro: TGroupBox
      inherited BtnSearch: TAdvShapeButton
        OnClick = BtnSearchClick
      end
      object edtFGrado: TAdvEdit
        Left = 0
        Top = 17
        Width = 207
        Height = 21
        EmptyText = 'Grado'
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
        OnKeyPress = edtFGradoKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 481
    Height = 356
    ExplicitWidth = 481
    ExplicitHeight = 356
    inherited DBGridPrincipal: TNextDBGrid
      Width = 479
      Height = 274
      ExplicitWidth = 479
      ExplicitHeight = 274
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 208
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Grado'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 208
        FieldName = 'grado'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 188
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Descripcion'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 188
        FieldName = 'descripcion'
      end
    end
    inherited PanelBarra: TPanel
      Top = 300
      Width = 479
      ExplicitTop = 300
      ExplicitWidth = 479
      inherited Panel1: TPanel
        Width = 346
        ExplicitWidth = 346
      end
      inherited Panel2: TPanel
        Left = 349
        ExplicitLeft = 349
      end
    end
    inherited PnlPro: TPanel
      Width = 479
      ExplicitWidth = 479
      inherited PBPaginacion: TAdvProgressBar
        Width = 381
        ExplicitWidth = 381
      end
      inherited PnlNum: TPanel
        Left = 382
        ExplicitLeft = 382
      end
    end
  end
end
