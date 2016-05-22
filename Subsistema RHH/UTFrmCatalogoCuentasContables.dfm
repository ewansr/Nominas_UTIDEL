inherited FrmCatalogoCuentasContables: TFrmCatalogoCuentasContables
  Caption = 'FrmCatalogoCuentasContables'
  ExplicitWidth = 852
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    inherited GroupBoxFiltro: TGroupBox
      Left = 4
      Top = 2
      Width = 637
      ExplicitLeft = 4
      ExplicitTop = 2
      ExplicitWidth = 637
      inherited BtnSearch: TAdvShapeButton
        Left = 592
        Width = 44
        OnClick = BtnSearchClick
        ExplicitLeft = 592
        ExplicitWidth = 44
      end
      object edtcodigo: TAdvEdit
        Left = 18
        Top = 19
        Width = 175
        Height = 21
        EmptyText = 'Codigo'
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
        OnKeyPress = edtcodigoKeyPress
        Version = '2.9.0.0'
      end
      object edtctabanco: TAdvEdit
        Left = 205
        Top = 19
        Width = 194
        Height = 21
        EmptyText = 'Cuenta'
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
        OnKeyPress = edtctabancoKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    inherited DBGridPrincipal: TNextDBGrid
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Codigo Cuenta'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 120
        FieldName = 'codigo'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Titulo Cuenta'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 200
        FieldName = 'titulo'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nombre de Cuenta'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 200
        FieldName = 'nombre'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Banco'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 200
        FieldName = 'nombre'
      end
    end
  end
end
