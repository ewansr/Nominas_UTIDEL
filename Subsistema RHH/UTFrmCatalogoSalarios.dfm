object FrmCatalogoSalarios: TFrmCatalogoSalarios
  Left = 0
  Top = 0
  Caption = 'FrmCatalogoSalarios'
  ClientHeight = 428
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel9: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 754
    object JvLabel3: TJvLabel
      Left = 36
      Top = 6
      Width = 47
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object cbOrganizacion: TComboBox
      Left = 89
      Top = 3
      Width = 417
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbOrganizacionChange
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 762
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 754
    object Splitter1: TSplitter
      Left = 339
      Top = 0
      Height = 43
      Align = alRight
      ExplicitLeft = 376
      ExplicitTop = -32
      ExplicitHeight = 100
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 339
      Height = 43
      Align = alClient
      BevelOuter = bvNone
      Caption = '|'
      Padding.Top = 12
      Padding.Right = 4
      Padding.Bottom = 12
      TabOrder = 0
      ExplicitWidth = 331
      object cbTiposNomina: TComboBox
        Left = 88
        Top = 12
        Width = 247
        Height = 21
        Align = alClient
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbTiposNominaChange
        ExplicitWidth = 239
      end
      object Panel6: TPanel
        Left = 0
        Top = 12
        Width = 88
        Height = 19
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Tipo de N'#243'mina:'
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 342
      Top = 0
      Width = 362
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      Padding.Top = 12
      Padding.Right = 4
      Padding.Bottom = 12
      TabOrder = 1
      ExplicitLeft = 334
      object cbGrupoSalario: TComboBox
        Left = 49
        Top = 12
        Width = 309
        Height = 21
        Align = alClient
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbGrupoSalarioChange
      end
      object Panel7: TPanel
        Left = 0
        Top = 12
        Width = 49
        Height = 19
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Grupo:'
        TabOrder = 1
      end
    end
    object Panel8: TPanel
      Left = 704
      Top = 0
      Width = 58
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      Padding.Left = 4
      Padding.Top = 6
      Padding.Right = 4
      Padding.Bottom = 6
      TabOrder = 2
      ExplicitLeft = 696
      object Btn_Buscar: TAdvGlowButton
        Left = 4
        Top = 6
        Width = 50
        Height = 31
        Align = alClient
        Caption = '&Buscar'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = Btn_BuscarClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
  end
  object NextDBGrid1: TNextDBGrid
    Left = 0
    Top = 68
    Width = 762
    Height = 360
    Align = alClient
    FixedCols = 5
    Options = [goGrid, goHeader, goMultiSelect, goSelectFullRow]
    TabOrder = 2
    TabStop = True
    OnCellDblClick = NextDBGrid1CellDblClick
    DataSource = dsSalarios
    OnCellFormating = NextDBGrid1CellFormating
    ExplicitWidth = 754
    object NxDBTextColumn1: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'C'#243'digo Salario'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      FieldName = 'CodigoSalario'
    end
    object NxDBTextColumn2: TNxDBTextColumn
      DefaultWidth = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'T'#237'tulo Salario'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      Width = 200
      FieldName = 'TituloSalario'
    end
    object NxDBTextColumn3: TNxDBTextColumn
      DefaultWidth = 120
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Moneda'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 120
      FieldName = 'TituloMoneda'
    end
    object NxDBTextColumn4: TNxDBTextColumn
      DefaultWidth = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Fecha Aplicaci'#243'n'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
      Width = 100
      FieldName = 'FechaAplicacion'
    end
    object NxDBNumberColumn1: TNxDBNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Compuesto'
      Header.Alignment = taRightJustify
      ParentFont = False
      Position = 4
      SortType = stNumeric
      FieldName = 'SalarioInt'
      FormatMask = '$###,###,###,###,##0.00##########'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBNumberColumn2: TNxDBNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'SALARIO'
      Header.Alignment = taRightJustify
      ParentFont = False
      Position = 5
      SortType = stNumeric
      FieldName = 'Salario'
      FormatMask = '$###,###,###,###,##0.00##########'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBTextColumn5: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Tipo'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 6
      SortType = stAlphabetic
      FieldName = 'TipoSalario'
    end
  end
  object cdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 304
  end
  object cdGrupoSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 288
  end
  object cdSalarios: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdSalariosAfterOpen
    AfterClose = cdSalariosAfterClose
    AfterRefresh = cdSalariosAfterRefresh
    Left = 512
    Top = 240
  end
  object MemorySalarios: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdLlave'
        DataType = ftInteger
      end
      item
        Name = 'IdSalario'
        DataType = ftInteger
      end
      item
        Name = 'CodigoSalario'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'TituloSalario'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'SalarioInt'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'TituloMoneda'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FechaAplicacion'
        DataType = ftDate
      end
      item
        Name = 'IdSalarioPendiente'
        DataType = ftInteger
      end
      item
        Name = 'CuentaCargos'
        DataType = ftInteger
      end
      item
        Name = 'Salario'
        DataType = ftFloat
      end
      item
        Name = 'idMoneda'
        DataType = ftInteger
      end
      item
        Name = 'TipoSalario'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 624
    Top = 176
  end
  object CdModificacionSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 96
  end
  object cdCompSalDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 160
  end
  object cdCargos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdSalario'
    MasterFields = 'IdLlave'
    MasterSource = dsSalarios
    PacketRecords = 0
    Params = <>
    Left = 128
    Top = 160
  end
  object frxReporteCargos: TfrxDBDataset
    UserName = 'frxReporteCargos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigocargo=codigocargo'
      'titulocargo=titulocargo'
      'Grupo=Grupo')
    DataSet = cdCargos
    BCDToCurrency = False
    Left = 184
    Top = 160
  end
  object dsSalarios: TDataSource
    DataSet = MemorySalarios
    Left = 680
    Top = 232
  end
  object frxReportesalario: TfrxDBDataset
    UserName = 'frxReportesalario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdSalario=IdSalario'
      'CodigoSalario=CodigoSalario'
      'TituloSalario=TituloSalario'
      'salario=salario'
      'fechaaplicacion=fechaaplicacion'
      'fecharegistro=fecharegistro'
      'TituloMoneda=TituloMoneda')
    DataSet = MemorySalarios
    BCDToCurrency = False
    Left = 608
    Top = 232
  end
  object cdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 184
  end
  object cdCompSal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 168
  end
end
