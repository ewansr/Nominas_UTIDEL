inherited FrmConceptosExtras: TFrmConceptosExtras
  Caption = 'Conceptos extras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    inherited GroupBoxFiltro: TGroupBox
      Width = 616
      ExplicitWidth = 616
      inherited BtnSearch: TcxButton
        Left = 574
        OnClick = BtnSearchClick
        ExplicitLeft = 574
      end
      object EdtFclave: TAdvEdit
        Left = 3
        Top = 17
        Width = 94
        Height = 21
        EmptyText = 'Clave'
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
      object EdtFTitulo: TAdvEdit
        Left = 103
        Top = 16
        Width = 108
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
        Version = '2.9.0.0'
      end
      object EdtFTipo: TAdvComboBox
        Left = 239
        Top = 16
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.3.2.2'
        Visible = True
        ButtonWidth = 18
        Style = csDropDownList
        DropWidth = 0
        Enabled = True
        ItemIndex = 0
        Items.Strings = (
          'TODOS'
          'PORCENTAJE'
          'FIJO')
        LabelCaption = 'Tipo'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 3
        Text = 'TODOS'
      end
      object EdtFModo: TAdvComboBox
        Left = 422
        Top = 16
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.3.2.2'
        Visible = True
        ButtonWidth = 18
        Style = csDropDownList
        DropWidth = 0
        Enabled = True
        ItemIndex = 0
        Items.Strings = (
          'TODOS'
          'PERCEPCION'
          'DEDUCCION')
        LabelCaption = 'Modo'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 4
        Text = 'TODOS'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    inherited DBGridPrincipal: TNextDBGrid
      object NxDBTextColumn1: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Clave'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'claveconcepto'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        FieldName = 'titulo'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Tipo'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        FieldName = 'tipo'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Modo'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        FieldName = 'modo'
      end
      object NxDBTextColumn5: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Aplicar Sobre'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        FieldName = 'aplicarsobre'
      end
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 800
    Top = 40
  end
  inherited qGrabar: TClientDataSet
    Left = 608
    Top = 64
  end
  inherited mdDeposito: TClientDataSet
    Left = 688
    Top = 56
  end
  inherited dxbrmngr1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
