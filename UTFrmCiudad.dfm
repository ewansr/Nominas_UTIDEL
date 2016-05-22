inherited FrmCiudad: TFrmCiudad
  Caption = 'Ciudad'
  ClientWidth = 1025
  ExplicitWidth = 1041
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    ExplicitWidth = 145
    Width = 145
    inherited LbFiltros: TJvLabel
      Width = 133
      ExplicitTop = 52
      ExplicitWidth = 928
    end
    inherited GroupBoxFiltro: TcxGroupBox
      ExplicitWidth = 139
      Width = 139
      inherited BtnSearch: TcxButton
        Width = 127
        TabOrder = 4
        OnClick = BtnSearchClick
        ExplicitWidth = 127
      end
      object edtFtitulo: TAdvEdit
        Left = 3
        Top = 84
        Width = 133
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
        TabOrder = 3
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
      object edtFCodigo: TAdvEdit
        Left = 3
        Top = 57
        Width = 133
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
        TabOrder = 2
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
      object edtFPais: TAdvEdit
        Left = 3
        Top = 3
        Width = 133
        Height = 21
        EmptyText = 'Pais'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 0
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
      object edtFEstado: TAdvEdit
        Left = 3
        Top = 30
        Width = 133
        Height = 21
        EmptyText = 'Estado'
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
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 145
    Width = 880
    ExplicitLeft = 145
    ExplicitWidth = 880
    inherited DBGridPrincipal: TNextDBGrid
      Width = 878
      ExplicitWidth = 878
      object NxDBTextColumn1: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Id'
        Header.DisplayMode = dmTextAndImage
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Visible = False
        FieldName = 'idciudad'
      end
      object NxDBTextColumn7: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Pa'#237's'
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
        FieldName = 'titulopais'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 188
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Estado'
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
        Position = 2
        SortType = stAlphabetic
        Width = 188
        FieldName = 'tituloestado'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 174
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
        Position = 3
        SortType = stAlphabetic
        Width = 174
        FieldName = 'codigociudad'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 159
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
        Position = 4
        SortType = stAlphabetic
        Width = 159
        FieldName = 'titulociudad'
      end
      object NxDBMemoColumn1: TNxDBMemoColumn
        DefaultWidth = 234
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Descripcion'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000000000006B0000
          00FF000000FF000000FF00000064000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFC2C2
          C2FFBBBBBBFFA0A0A0FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF00000000000000EA000000DE000000D10000
          00B0000000CC00000059000000DE000000CC0000008600000000000000FFFEFE
          FEFFE6E6E6FFC1C1C1FF000000FF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000009B0000
          00FF000000FF000000FF00000092000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFC2C2
          C2FFBBBBBBFFA0A0A0FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF00000000000000DE000000DE000000B00000
          00DE000000EA00000000000000CC000000CC0000008600000000000000FFFEFE
          FEFFE6E6E6FFC1C1C1FF000000FF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000009B0000
          00FF000000FF000000FF00000092000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFC2C2
          C2FFBBBBBBFFA0A0A0FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF00000000000000CC00000086000000590000
          00CC000000CC000000B000000059000000B0000000CC00000000000000FFFEFE
          FEFFE6E6E6FFC1C1C1FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000530000
          00FF000000FF000000FF0000004C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        VerticalAlignment = taAlignTop
        Width = 234
        FieldName = 'descripcion'
        MemoDisplayOptions = mdContent
      end
      object NxDBTextColumn6: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'activo'
        Header.DisplayMode = dmTextAndImage
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
        Visible = False
        FieldName = 'activo'
      end
    end
    inherited PnlPro: TPanel
      Width = 878
      ExplicitWidth = 878
      inherited PBPaginacion: TAdvProgressBar
        Width = 780
        ExplicitWidth = 832
      end
      inherited PnlNum: TPanel
        Left = 781
        ExplicitLeft = 781
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    ExplicitWidth = 1025
    Width = 1025
    inherited Panel1: TcxGroupBox
      ExplicitWidth = 929
      Width = 929
    end
    inherited Panel2: TcxGroupBox
      Left = 930
      ExplicitLeft = 930
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 664
    Top = 16
  end
  inherited cdDatos: TClientDataSet
    Left = 390
    Top = 64
  end
  inherited dsDatos: TDataSource
    Left = 648
    Top = 40
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      0
      0
      59
      0)
    inherited DxBarBtnImportat: TdxBarLargeButton
      Visible = ivNever
    end
  end
  object frxCiudades: TfrxDBDataset
    UserName = 'ReporteCiudades'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idciudad=idciudad'
      'codigociudad=codigociudad'
      'titulociudad=titulociudad'
      'descripcion=descripcion'
      'codigoestado=codigoestado'
      'tituloestado=tituloestado'
      'codigopais=codigopais'
      'titulopais=titulopais')
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 280
    Top = 120
  end
  object frxReporteCiudades: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 42116.835634803200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 280
    Top = 200
    Datasets = <
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end
      item
        DataSet = frxOrganizacion
        DataSetName = 'ReporteOrganizacion'
      end
      item
        DataSetName = 'ReporteTipoNomina'
      end
      item
        DataSetName = 'ReporteVacaciones'
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
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 37.795300000000000000
        ParentFont = False
        Top = 453.543600000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559059999999931000
          Width = 204.094620000000000000
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
        end
      end
      object Header1: TfrxHeader
        Height = 37.795287800000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        ReprintOnNewPage = True
        object Memo6: TfrxMemoView
          Left = 230.551330000000000000
          Top = 18.897650000000030000
          Width = 158.740260000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'A'#241'os:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 389.291370310000000000
          Top = 18.897650000000030000
          Width = 147.401606540000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#237'as:')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteTipoNominaTitulo: TfrxMemoView
          Left = 230.551330000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          DataSetName = 'ReporteTipoNomina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo de N'#243'mina: [ReporteTipoNomina."Titulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        DataSetName = 'ReporteVacaciones'
        RowCount = 0
        object ReporteVacacionesAnios: TfrxMemoView
          Left = 230.551330000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Anios'
          DataSetName = 'ReporteVacaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteVacaciones."Anios"]')
          ParentFont = False
        end
        object ReporteVacacionesDias: TfrxMemoView
          Left = 389.291590000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Dias'
          DataSetName = 'ReporteVacaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteVacaciones."Dias"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        Condition = 'ReporteVacaciones."IdTiponomina"'
      end
      object PageHeader1: TfrxPageHeader
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 158.740260000000000000
          Top = 60.472480000000000000
          Width = 570.709030000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cat'#225'logo de D'#237'as de Vacaciones.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 154.960730000000000000
          Top = 139.181200000000000000
          Width = 570.709030000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha: [FormatDateTime('#39'mmmm dd, yyyy'#39',Date)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Width = 128.504020000000000000
          Height = 124.724490000000000000
          ShowHint = False
          DataField = 'imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object ReporteOrganizacionReporteOrganizacion: TfrxMemoView
          Left = 158.740260000000000000
          Width = 570.709030000000000000
          Height = 60.472480000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -16
          Font.Name = 'times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."TituloOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionReporteOrganizacion1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 128.504020000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000010000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -8
          Font.Name = 'times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 740.409927000000000000
        object Shape1: TfrxShapeView
          Left = 230.551330000000000000
          Width = 306.141930000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Color = clSkyBlue
          Frame.Width = 0.100000000000000000
        end
      end
    end
  end
  object frxOrganizacion: TfrxDBDataset
    UserName = 'ReporteOrganizacion'
    CloseDataSource = False
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 504
    Top = 232
  end
end
