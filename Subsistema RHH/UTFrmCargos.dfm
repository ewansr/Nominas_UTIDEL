inherited FrmCargos: TFrmCargos
  Caption = 'Cargos'
  ClientWidth = 1020
  ExplicitWidth = 1036
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    Top = 94
    ExplicitWidth = 145
    Height = 316
    Width = 145
    inherited LbFiltros: TJvLabel
      Top = 279
      Width = 133
      ExplicitLeft = 3
      ExplicitTop = 53
      ExplicitWidth = 763
    end
    inherited GroupBoxFiltro: TcxGroupBox
      ExplicitWidth = 139
      Height = 261
      Width = 139
      object JvLabel1: TJvLabel [0]
        Left = 6
        Top = 11
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
      object JvLabel2: TJvLabel [1]
        Left = 1
        Top = 52
        Width = 64
        Height = 13
        Caption = 'Tipo N'#243'mina:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      inherited BtnSearch: TcxButton
        Top = 226
        Width = 127
        OnClick = BtnSearchClick
        ExplicitWidth = 127
      end
      object cbbTipoNomina: TComboBox
        Left = 1
        Top = 64
        Width = 128
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        OnChange = cbbTipoNominaChange
      end
      object cbbOrganizacion: TComboBox
        Left = 1
        Top = 25
        Width = 128
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        OnChange = cbbOrganizacionChange
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 145
    Top = 94
    Width = 875
    Height = 316
    ExplicitLeft = 145
    ExplicitWidth = 875
    inherited DBGridPrincipal: TNextDBGrid
      Width = 873
      Height = 289
      ExplicitWidth = 873
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000120000
          002C0F0F04721616068716160687161606871616068716160687161606871616
          06871616068716160687161606870F0F04720000002C00000012000000090000
          00161D1D0C82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFDFFFEFEFCFFFDFD
          FBFFFDFDFAFFFCFCF8FFFEFEF9FF1D1D0C820000001600000009000000000000
          00002323127BFFFFFFFFFFFFFFFFFEFEFEFFFDFDFCFFFDFDFBFFFCFCF9FFFBFB
          F8FFFAFAF6FFF8F8F4FFFBFBF6FF2323127B0000000000000000000000000000
          000027271677FFFFFFFFFEFEFEFF5A5A5AFFC8C8C6FFFCFCF9FF626262FFDEDE
          DAFFF8F8F4FFF7F7F2FFFBFBF5FF272716770000000000000000000000000000
          000029291876FFFFFEFFFDFDFCFFAFAFAEFF949493FFFBFBF8FF939392FFB4B4
          B2FFF7F7F2FFF6F6F0FFFAFAF3FF292918760000000000000000000000000000
          00002A2A1974FEFEFDFFB4B4B3FF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B
          6BFF6B6B6BFFD3D3CEFFFAFAF2FF2A2A19740000000000000000000000000000
          00002B2B1A72FEFEFCFFFCFCF9FFFBFBF8FF757575FFD8D8D5FFD6D6D2FF7575
          75FFF5F5EEFFF4F4ECFFF9F9EFFF2B2B1A720000000000000000000000000000
          00002D2D1B71FDFDFBFFDBDBD9FF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
          7FFF7F7F7FFFB8B8B2FFF7F7EAFF2D2D1B710000000000000000000000000000
          00002E2E1D6FFDFDFAFFFAFAF6FFF8F8F4FFC6C6C2FFADADAAFFF5F5EEFFACAC
          A9FFBDBDB8FFECECDFFFF4F4E5FF2E2E1D6F0000000000000000000000000000
          00002F2F1D6DFCFCF8FFF8F8F4FFF7F7F2FFE4E4DFFF969696FFF4F4ECFFD2D2
          CCFF919191FFE8E8D9FFF3F3E2FF2F2F1D6D0000000000000000000000000000
          000030301E6CFCFCF7FFF7F7F2FFF6F6F0FFF5F5EEFFF4F4ECFFF1F1E7FFECEC
          DFFFE8E8D9FFE6E6D5FFF2F2E1FF30301E6C0000000000000000000000000000
          00003131206BFBFBF6FFF6F6F0FFF5F5EEFFF4F4ECFFF1F1E7FFECECDFFFE8E8
          D9FFE6E6D5FFE5E5D4FFF2F2E1FF3131206B0000000000000000000000000000
          000031312069FAFAF4FFF5F5EEFFF4F4ECFFF1F1E7FFECECDFFFE8E8D9FFE6E6
          D5FFA4A493FFA4A493FFA4A493FF2323127C0000000000000000000000000000
          000032322168FAFAF3FFF4F4ECFFF1F1E7FFECECDFFFE8E8D9FFE6E6D5FFE5E5
          D4FFB6B6A5FFFFFFFFFF3232216812120C250000000000000000000000000000
          000032322267FCFCF5FFF9F9EFFFF6F6EAFFF4F4E5FFF3F3E2FFF2F2E1FFF2F2
          E1FFC2C2B1FF3232226712120C25000000000000000000000000000000000000
          000026261A4D3333226633332266333322663333226633332266333322663333
          22663333226612120C2400000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 120
        FieldName = 'codigocargo'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000003300000033000000330000
          0033000000330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000686B70FF6C6D6EFF6D6D6EFF6C6D
          6EFF686B70FF0000000000000000000000000000000000000000010100350000
          003300000033000000330000003300000033000000330000003367696EFF0000
          0033000000330000003300000033000000330000003300000033CA9636FFDFAC
          48FFDBA641FFDBA640FFDBA63FFFDFA83FFFE5AC3EFFEEB23FFF5B6068FFEEB2
          3FFFE5AC3EFFDFA83FFFDBA63FFFDBA641FFDCA846FFD4A13BFFA97117FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF535559FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBA745FFAA7114FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505152FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAA540FFAA7114FFFFFF
          FFFFD09530FFD19838FFD2993AFFD19838FFD1952FFFFFFFFFFF505152FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAA43FFFAA7215FFFFFF
          FFFFD29A3AFFD49F45FFD5A148FFD59F45FFD49B3AFFFFFFFFFF525354FFFFFF
          FFFFF9F9F8FFF6F6F5FFF6F6F5FFF6F7F7FFFFFFFFFFDAA53FFFAA7215FFFFFF
          FFFFD29733FFD49B3CFFD59D3EFFD49C3CFFD59934FFF8FBFFFF545556FFF6F5
          F4FFEDECEBFFEBEAE9FFEAEAE9FFE9E9EAFFFFFFFFFFDAA53FFFAB7316FFFFFF
          FFFFDFE3EDFFE0E5F0FFE1E6F1FFE1E5F0FFE2E6EEFFE9EAEEFF555759FFE9E8
          EAFFE0E0E2FFDEDEE0FFDEDEE0FFDDDDE0FFFFFFFFFFDBA741FFAD761BFFF6EF
          E5FFF3EADCFFF4EADBFFF4EADBFFF4EADBFFF5ECDBFFFDF1DEFF585C63FFFDF1
          DEFFF5EBDAFFF3E9D9FFF3E9D9FFF2E9D9FFF2EBE1FFDEAB49FFB07B24FFAD76
          1CFFAC7418FFAC7418FFAC7418FFAD7417FFAF7516FFB47815FF5D6572FFB478
          15FFAF7516FFAD7417FFAC7418FFAC7418FFAA731AFFCA9536FF000000000000
          0000000000000000000000000000000000000000003300000033636B77FF0000
          0033000000330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000666C76FF696D74FF6A6D72FF696D
          74FF666C76FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 200
        FieldName = 'titulocargo'
      end
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nivel'
        ParentFont = False
        Position = 2
        SortType = stNumeric
        FieldName = 'nivel'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Salario'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        FieldName = 'monto'
      end
      object NxDBTextColumn5: TNxDBTextColumn
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo Salario'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        Width = 120
        FieldName = 'LeyendaTituloSalario'
      end
      object NxDBNumberColumn2: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Salario Multiple'
        ParentFont = False
        Position = 5
        SortType = stNumeric
        FieldName = 'Importe'
        FormatMask = '#,###,###,##0.00'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo Salario Multiple'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
        Width = 120
        FieldName = 'Titulo'
      end
      object NxColumnAplicacion: TNxDBTextColumn
        DefaultWidth = 90
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Fecha Aplicaci'#243'n'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 7
        SortType = stAlphabetic
        Width = 90
        FieldName = 'FechaAplicacion'
      end
    end
    inherited PnlPro: TPanel
      Width = 873
      ExplicitWidth = 873
      inherited PBPaginacion: TAdvProgressBar
        Width = 775
        ExplicitWidth = 698
      end
      inherited PnlNum: TPanel
        Left = 776
        ExplicitLeft = 776
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    ExplicitWidth = 1020
    Width = 1020
    inherited Panel1: TcxGroupBox
      ExplicitWidth = 924
      Width = 924
    end
    inherited Panel2: TcxGroupBox
      Left = 925
      ExplicitLeft = 925
    end
  end
  object pnl: TPanel [3]
    Left = 0
    Top = 59
    Width = 1020
    Height = 35
    Align = alTop
    Padding.Left = 20
    Padding.Top = 9
    TabOrder = 7
    object lblFiltro: TJvLabel
      Left = 21
      Top = 10
      Width = 44
      Height = 24
      Align = alLeft
      Caption = 'lblFiltro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ExplicitTop = 9
      ExplicitHeight = 13
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 632
    Top = 168
  end
  inherited cdDatos: TClientDataSet
    AfterScroll = cdDatosAfterScroll
    Left = 246
  end
  inherited qGrabar: TClientDataSet
    Left = 568
    Top = 256
  end
  inherited mdDeposito: TClientDataSet
    Left = 336
    Top = 200
  end
  inherited DxBManagerMain: TdxBarManager
    MenuAnimations = maSlide
    DockControlHeights = (
      0
      0
      59
      0)
    inherited DxBarMain: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnNuevo'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnEditar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnEliminar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnActualizar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxBarBtnOcultar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnImprimir'
        end
        item
          Visible = True
          ItemName = 'dxBtnPeriodoHorarios'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnExportar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnImportat'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxBarBtnImportar'
        end>
    end
    inherited DxBarBtnImportat: TdxBarLargeButton
      Visible = ivNever
    end
    object dxBtnPeriodoHorarios: TdxBarLargeButton
      Caption = '&Periodos Horario'
      Category = 0
      Hint = 'Periodos Horario'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000050000000600000007000000080000
        0007000000060000000500000003000000020000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0002000000050000000A00000010000000160000001A0000001C0000001E0000
        001C0000001A00000016000000100000000B0000000600000002000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000050000
        000C000000150704022A311D0E6E633C1DB77A4924D8895125ED965929FF8850
        25ED784520D862391ABA2F1B0D6F0704022B000000160000000D000000060000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000300000008000000120F09
        05355E3B1EAC995D30F8AD7745FFC18F5CFFCF9E6BFFD5A773FFDBAE7AFFD5A6
        72FFCD9D69FFBF8C59FFAA7141FF945729FB5A3418AD0E080438000000140000
        0009000000030000000100000000000000000000000000000000000000000000
        00000000000000000000000000010000000300000009000000163521116F9760
        32F3B78352FFD7AA75FFDBAC76FFD8A770FFD7A369FFD6A167FFD4A065FFD5A1
        67FFD6A268FFD7A56DFFDAAA74FFD5A772FFB37C4AFF8F5428F6311D0D710000
        00180000000A0000000300000001000000000000000000000000000000000000
        0000000000000000000100000002000000090000001856371E9BA97140FFD3A5
        73FFDBAD77FFD7A56BFFD19B60FFC88E50FFC08445FFBC7F40FFBB7B3CFFBC7D
        3FFFBF8242FFC68B4EFFCF985CFFD6A267FFD9AA72FFD6A76FFF9D6233FF4F2E
        159E0000001A0000000A00000002000000010000000000000000000000000000
        00000000000100000001000000070000001554371F96B17B4AFFD9AD7AFFD9A8
        71FFD4A167FFC48A4CFFC38A52FFDBB999FFEDDDCDFFF8F1EBFFFEFEFEFFF7EF
        E8FFECDBCBFFDAB896FFC1874EFFC28648FFD29C61FFD7A56BFFD6A773FFA56B
        3BFF4B2D14980000001800000008000000020000000100000000000000000000
        00000000000100000005000000103725156CAE7847FFD9AE7DFFDBA973FFD19E
        64FFC08448FFDEBFA1FFF9F4F2FFFBF8F6FFFBF9F7FFFCF9F8FFFCFAFAFFFBF8
        F6FFF9F6F4FFFAF6F4FFF7F2EFFFDCBD9EFFBC7F43FFCF985DFFD8A46BFFD7A8
        73FF9F6434FF311D0E7000000012000000050000000100000000000000000000
        0001000000020000000A0C08052B9E6D3FF1D7AC7CFFDCAC76FFD39F67FFC288
        50FFEBDBCDFFF6F0EEFFF6F0EDFFF7F3F0FFF8F5F4FFFAF6F6FFFAF7F6FFF9F5
        F2FFF8F3F0FFF7F1EDFFF5EEEAFFF5EEECFFEAD9CAFFBE834AFFCF995EFFD9A6
        6DFFD1A370FF8F5629F10B0603300000000B0000000200000001000000000000
        000100000004000000115D40269CC59666FFDDB07BFFD8A972FFC08649FFE9D8
        C9FFF1EAE5FFBDADA4FFD9CEC9FFF5F0EEFFF7F2F0FFF8F3F1FFF8F3F2FFF6F1
        EEFFF6F0ECFFF4EEEAFFF3ECE7FFF1E9E3FFF0E7E2FFE8D6C5FFBC7E41FFD09E
        66FFDAAA72FFB98553FF5231179F000000140000000500000001000000000000
        00010000000808060323AB7849F8DDB282FFDEB17CFFC68E53FFDBBB9DFFEEE3
        DFFFEEE4DFFF473C37FF82746CFFD8CDC8FFF5EEEBFFF6EFEDFFF5EFEDFFF4EE
        EAFFF4EDE8FFF3EBE6FFF2E9E4FFEFE6E0FFEDE2DCFFEDE1DCFFD8B799FFC186
        4AFFDAAA71FFD8A975FF975B2EF8070402280000000900000001000000010000
        00020000000C3F2C1B6FC19262FFE0B480FFD9AB75FFC38D56FFEDE0DAFFEADE
        D8FFEDE1DBFFB9AEA9FF4E423DFF85776FFFD8CCC5FFF3ECE8FFF3ECE8FFF2E9
        E5FFF2E9E3FFF0E7E2FFEFE5E0FFEDE2DCFFECDFD8FFEADCD5FFEBDFD8FFBF85
        4DFFD5A269FFDCAC73FFB27D4CFF362110730000000F00000003000000010000
        00040000000F745232B2D1A777FFE0B582FFCF9C65FFD4B08FFFE6D7D1FFE9DB
        D4FFEADED8FFECE1DBFFBBAFAAFF544943FF877972FFD7CAC3FFF1E8E3FFEFE5
        E0FFEFE5DFFFEEE3DDFFEDE1DAFFEBDFD8FFE9DCD6FFE8D9D3FFE6D6D0FFD1AC
        88FFCA935AFFDCAD75FFC79665FF643D1EB60000001300000005000000010000
        000400000012966C42DCDBB282FFE1B784FFC68F57FFDFC6B3FFE5D5CDFFE7D8
        D0FFE8DAD4FFEADDD7FFEBDFD9FFBBB0ABFF5A4E48FF80726CFFBDB0AAFFDAD0
        CCFFE7DCD6FFEADED7FFE9DCD6FFE8D9D3FFE7D8D1FFE6D6CEFFE3D3CAFFDCC2
        ADFFC0844AFFDDAF77FFD5A672FF825127DD0000001700000005000000010000
        000500000013A47141F8C89866FFCA9A68FFB27741FFC4AD9EFFC5B1A5FFC7B4
        AAFFCAB8AEFFCDBCB2FFD0BFB7FFD6C8C0FFAFA49EFF4A403BFF463B35FF685B
        54FFA7958AFFB19D92FFB39F94FFB6A197FFB8A499FFBAA69BFFBCA89DFFBDA7
        99FFBA7B3FFFDEB17AFFDAAC76FF955D2EF60000001800000006000000010000
        0005B07640FFAE743EFFAD723BFFAD6F39FFAC6D35FFAB6B32FFAA692FFFAA67
        2CFFA9652AFFA96427FFA86225FFA86123FFB58B68FF5D514AFFB29674FF584E
        4CFF2D3FBAFF293BBCFF2435B7FF202FB2FF1C29ADFF1724A9FF141FA5FFDCC9
        BDFFB57639FFDFB37DFFDFB37CFF9F6433FF0000001900000006000000000000
        0004B27D49FFEBCCA3FFEBC99CFFE9C496FFE8C090FFE6BB88FFE6B782FFE4B3
        7DFFE3B077FFE3B27AFFC89460FFAC8868FFD9CDC5FFAA9E97FF70635AFFAC9F
        98FFEDE2DCFFEDE1DCFFEDE1DCFFEBDFD9FFE2D1C8FFDFCDC2FFDDCAC0FFD5BC
        ADFFB97A40FFE1B67FFFE1B681FF9F6534FF0000001700000006000000000000
        0004B47F4AFFEDCFA7FFDDA96EFFDDA568FFDBA163FFDA9D5EFFD99A5AFFD897
        56FFDFA86EFFC99865FFAA8465FFD6CBC3FFEBE1DCFFEEE4DFFFEDE3DEFFEFE4
        DFFFEFE4DFFFEFE4DEFFEEE3DDFFEEE3DEFFE9DBD4FFDDC9BFFFDBC5BBFFCEAE
        99FFBF834AFFE2B982FFE0B480FF986133F30000001400000005000000000000
        0003B6804DFFEFD1A9FFDFAC72FFDEA96DFFDDA468FFDBA163FFDA9E5FFFDEA6
        6CFFD4A069FFA67040FFC6B7AEFFEAE0DCFFF0E8E2FFF0E8E2FFF0E8E2FFF0E8
        E2FFF1E7E3FFF1E7E2FFF0E7E2FFF0E6E1FFEFE5E0FFDBC6BCFFD7C1B5FFC297
        75FFCC9760FFE3BB85FFD9AE7DFF89572EDB0000001000000004000000000000
        0002B7834DFFF2D8B4FFE3B47EFFE0AC72FFDEA96EFFDDA569FFDCA366FFDDA4
        69FFDFB17CFFB5773FFFB1927AFFE1D7D2FFF0E9E4FFF2ECE7FFF2EBE7FFF2EC
        E7FFF2EBE6FFF3EBE7FFF3EBE7FFF3EBE7FFF1E8E3FFD9C2B7FFCFB6A8FFB67C
        47FFDBAE7AFFE5BB88FFCEA171FF6A4425B00000000B00000002000000000000
        0001B8844FFFF6E0BCFFEDC899FFE9C18EFFE4B67FFFE0AC71FFDEA96DFFDEA7
        6AFFE0AD75FFD7A875FFB1743BFFB49680FFDED5D1FFF0EAE6FFF4EFEBFFF5F0
        ECFFF5F0ECFFF5F0ECFFF6F0ECFFF6EFECFFECE0DBFFD2BAADFFBA8F6DFFC189
        51FFE7C08CFFE6C08CFFBD8C5AFF3A2615680000000700000001000000000000
        0000B98651FFF7E2BFFFEFCD9EFFEDCA99FFEBC694FFE9C18EFFE5B77FFFE0AD
        73FFE0AC71FFE2B27BFFD9AC7BFFB4763EFFAB835EFFCDBEB5FFE4DCD8FFEFE9
        E6FFF3EEEBFFF6F2EFFFF5F0EDFFF0EAE6FFD1BCB0FFBB9981FFB6793FFFE2B8
        85FFE7C08DFFE5BF90FFA36E3EF7060402170000000400000001000000000000
        0000BA8752FFF8E4C2FFF1D2A5FFF4DAB3FFF1D0A3FFECC897FFECC493FFE9C0
        8DFFE4B780FFE2B178FFE4B883FFE3BA8BFFC48D59FFAE723DFFAD815CFFBBA1
        8CFFCAB8A9FFD8D1CCFFCEBBADFFB89880FFAF7F57FFB2753FFFDFB583FFE9C2
        8FFFEAC493FFC89B6BFF593C2291000000080000000200000001000000000000
        0000BC8853FFF9E6C5FFF7DFBAFFDAB78DFFEBD1ACFFF1D2A4FFEECA9AFFECC8
        97FFECC694FFE9C18EFFE7BA83FFE6BC87FFEBC698FFE1BB8DFFCD9B69FFBE85
        50FFB77D46FFB1733AFFB87D46FFBE854FFFCD9C69FFE8C394FFE9C492FFE9C5
        92FFE1BC90FFA26F3EEF0C08051C000000030000000100000000000000000000
        0000BD8A54FFFAE8C8FFDBB88EFF7B5937AAC29360FFF3DCB8FFF2D3A7FFF0CF
        A0FFEECC9DFFEECB9BFFEDC999FFEAC290FFEAC08DFFEBC594FFEDCA9EFFEECE
        A2FFEFD0A4FFEED0A4FFEECEA0FFEDCC9DFFECC999FFEBC595FFEBC795FFE9C8
        9CFFB78250FF3A27175D00000005000000010000000000000000000000000000
        0000BE8B56FFDCB98FFF5E44297F000000035E452B82CA9E6EFFF3DCB9FFF3D8
        ADFFF2D3A5FFF1D1A4FFF1D0A2FFF0D0A1FFEECC9CFFEDC896FFEDC897FFEDC8
        97FFEDC897FFEDC897FFEDC897FFEDC897FFEDC897FFEECB9CFFEACBA0FFC090
        5EFF593F25850000000600000001000000000000000000000000000000000000
        0000BF8C56FF5E452A7E0000000000000001000000035F472D82C79A67FFEED6
        B1FFF7DFBAFFF4D8ACFFF3D6A9FFF2D5A7FFF2D3A6FFF0CFA1FFEECB9BFFEECC
        9BFFEECC9BFFEECB9BFFEFCC9BFFEECD9DFFF1D3A8FFE7C79CFFC08E5CFF5D42
        2987000000050000000200000000000000000000000000000000000000000000
        00005E462B7E000000000000000000000000000000010000000240312057B689
        5AEED9B486FFF4DCB9FFF7E1BBFFF6DCB3FFF5D9AFFFF4D7ABFFF2D2A5FFF0D0
        A1FFF2D1A4FFF2D3A8FFF3D6ADFFEFD1A8FFD3AA7BFFB28253F13E2D1C590000
        0004000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010C09
        06126D54368FC09460F6D4AD7EFFE4C49AFFEFD2ABFFF3D9B2FFF7DFBBFFF1D5
        AFFFEBCCA3FFE1BD91FFD0A677FFBB8D5CF66A5033910B080514000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010907050E40312154826442A7A07A52CDAF875AE2C79866FFAF86
        5AE29E7A50CE806240A73F3020540907050F0000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000002000000020000
        0002000000020000000100000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnPeriodoHorariosClick
      AutoGrayScale = False
    end
  end
  object FrxCargos: TfrxDBDataset
    UserName = 'ReporteCargos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idcargo=idcargo'
      'codigocargo=codigocargo'
      'titulocargo=titulocargo'
      'iddocumentos=iddocumentos'
      'jornada=jornada'
      'nivel=nivel'
      'idsalario=idsalario'
      'Grupo=Grupo'
      'IdRangoSalarios=IdRangoSalarios'
      'salario=salario'
      'codigosalario=codigosalario'
      'titulosalario=titulosalario'
      'FechaAplicacion=FechaAplicacion'
      'monto=monto'
      'LeyendaTituloSalario=LeyendaTituloSalario'
      'Importe=Importe'
      'Titulo=Titulo')
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 392
    Top = 120
  end
  object frxReporteCargos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 42114.847225960650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 112
    Datasets = <
      item
        DataSet = FrxCargos
        DataSetName = 'ReporteCargos'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end
      item
        DataSet = frxOrganizacion
        DataSetName = 'ReporteOrganizacion'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.ShadowWidth = 1.000000000000000000
      Frame.Width = 0.100000000000000000
      object PageFooter1: TfrxPageFooter
        Height = 34.015770000000000000
        Top = 415.748300000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 506.457020000000000000
          Top = 7.559059999999988000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 340.157700000000000000
        Width = 740.409927000000000000
        DataSet = FrxCargos
        DataSetName = 'ReporteCargos'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 22.677165350000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmDisciplinas.FrxDisciplinas
          DataSetName = 'ReporteDisciplinas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<Line#>)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 68.031496060000000000
          Width = 158.740137950000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmDisciplinas.FrxDisciplinas
          DataSetName = 'ReporteDisciplinas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Reportecargos."codigocargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 226.771582760000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmDisciplinas.FrxDisciplinas
          DataSetName = 'ReporteDisciplinas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Reportecargos."titulocargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 453.543600000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmDisciplinas.FrxDisciplinas
          DataSetName = 'ReporteDisciplinas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Reportecargos."titulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmDisciplinas.FrxDisciplinas
          DataSetName = 'ReporteDisciplinas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Reportecargos."importe"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 317.480520000000000000
        Width = 740.409927000000000000
        Condition = 'ReporteCargos."idcargo"'
      end
      object Header1: TfrxHeader
        Height = 25.322820000000000000
        Top = 268.346630000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 22.677180000000000000
          Top = 6.425196850000020000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 68.031540000000000000
          Top = 6.425196850000020000
          Width = 158.740137950000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 226.771800000000000000
          Top = 6.425196850000020000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#237'tulo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 453.543600000000000000
          Top = 6.425196850000020000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#237'tulo Salario:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 604.724800000000000000
          Top = 6.425196850000020000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Salario:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 188.976500000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 71.811070000000000000
          Width = 570.709030000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Cat'#225'logo de Puestos de Trabajo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 147.401670000000000000
          Top = 135.401670000000000000
          Width = 570.709030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd,mmm,yyyy'#39',Date)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 147.401670000000000000
          Top = 157.417440000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Ciudad del Carmen, Campeche')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 115.653543310000000000
          ShowHint = False
          DataField = 'imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Width = 0.500000000000000000
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object ReporteOrganizacionReporteOrganizacion: TfrxMemoView
          Left = 147.401670000000000000
          Top = 18.897650000000000000
          Width = 570.709030000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -16
          Font.Name = 'times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."TituloOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionReporteOrganizacion1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 136.063080000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -8
          Font.Name = 'times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object MdDocumentoPrev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 144
  end
  object cdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 248
  end
  object cdRangoSalarios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 264
  end
  object cdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 248
  end
  object cdSalariosIndep: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 264
  end
  object frxOrganizacion: TfrxDBDataset
    UserName = 'ReporteOrganizacion'
    CloseDataSource = False
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 320
    Top = 312
  end
end
