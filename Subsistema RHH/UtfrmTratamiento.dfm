inherited FrmTratamiento: TFrmTratamiento
  Caption = 'Tratamiento'
  ExplicitWidth = 852
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    inherited GroupBoxFiltro: TGroupBox
      inherited BtnSearch: TAdvShapeButton
        OnClick = BtnSearchClick
      end
      object edtFTratamiento: TAdvEdit
        Left = 0
        Top = 17
        Width = 207
        Height = 21
        EmptyText = 'Tratamiento'
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
        OnKeyPress = edtFTratamientoKeyPress
        Version = '2.9.0.0'
      end
      object edtFAbreviatura: TAdvEdit
        Left = 213
        Top = 17
        Width = 116
        Height = 21
        EmptyText = 'Abreviatura'
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
        OnKeyPress = edtFAbreviaturaKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    inherited DBGridPrincipal: TNextDBGrid
      ExplicitLeft = 33
      ExplicitTop = 6
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 172
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Tratamiento'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 0
        SortType = stAlphabetic
        Width = 172
        FieldName = 'tratamiento'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Abreviatura'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 1
        SortType = stAlphabetic
        FieldName = 'abreviatura'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 275
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Descripcion'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stAlphabetic
        Width = 275
        FieldName = 'descripcion'
      end
    end
    inherited PanelBarra: TPanel
      inherited Panel1: TPanel
        inherited PanelPrint: TPanel
          inherited BtnPrint: TAdvShapeButton
            OnClick = BtnPrintClick
          end
        end
      end
    end
  end
  inherited cdDatos: TClientDataSet
    Left = 278
    Top = 112
  end
end
