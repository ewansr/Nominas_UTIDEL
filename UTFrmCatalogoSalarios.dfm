inherited FrmCatalogoSalarios: TFrmCatalogoSalarios
  Caption = 'Cat'#225'logo de Salarios'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    inherited GroupBoxFiltro: TGroupBox
      Left = 4
      Top = 2
      Width = 587
      ExplicitLeft = 4
      ExplicitTop = 2
      ExplicitWidth = 587
      inherited BtnSearch: TAdvShapeButton
        Left = 546
        Top = 7
        OnClick = BtnSearchClick
        ExplicitLeft = 546
        ExplicitTop = 7
      end
      object edtcodigo: TAdvEdit
        Left = 16
        Top = 19
        Width = 158
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
      object edtsalario: TAdvEdit
        Left = 180
        Top = 20
        Width = 158
        Height = 21
        EmptyText = 'Salario'
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
        OnKeyPress = edtsalarioKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  object FechaAplicacion: TJvDatePickerEdit [1]
    Left = 428
    Top = 21
    Width = 85
    Height = 21
    Hint = 'Fecha de aplicaci'#243'n de los salarios mostrados'
    AllowNoDate = True
    Checked = True
    TabOrder = 2
    Visible = False
    OnChange = FechaAplicacionChange
  end
  inherited PanelPrincipal: TPanel
    inherited DBGridPrincipal: TNextDBGrid
      OnCellFormating = DBGridPrincipalCellFormating
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 120
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
        Width = 120
        FieldName = 'codigosalario'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 120
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
        Width = 120
        FieldName = 'TituloSalario'
      end
      object NxVirtualColumn1: TNxVirtualColumn
        Alignment = taRightJustify
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Salario'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 120
        AutoExecute = False
        OnGetText = NxVirtualColumn1GetText
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Moneda'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 120
        FieldName = 'TituloMoneda'
      end
      object NxDBDateColumn1: TNxDBDateColumn
        Alignment = taCenter
        DefaultValue = '05/07/2012'
        DefaultWidth = 130
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Fecha de Aplicaci'#243'n'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stDate
        Width = 130
        FieldName = 'fechaaplicacion'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Top = 56
  end
  inherited cdDatos: TClientDataSet
    AfterScroll = cdDatosAfterScroll
    Top = 112
  end
  inherited dsDatos: TDataSource
    Left = 400
    Top = 112
  end
  inherited mdEstructura: TJvMemoryData
    Top = 56
  end
  inherited qGrabar: TClientDataSet
    Top = 112
  end
  inherited mdDeposito: TClientDataSet
    Top = 112
  end
  inherited OpenXLS: TOpenDialog
    Left = 576
    Top = 168
  end
  inherited SaveXLS: TSaveDialog
    Left = 640
    Top = 168
  end
end
