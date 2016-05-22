inherited FrmPeriodoFirmante: TFrmPeriodoFirmante
  Caption = 'Periodo de firmantes'
  ClientWidth = 906
  ExplicitWidth = 914
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 906
    ExplicitWidth = 906
    inherited LbFiltros: TJvLabel
      Width = 898
      ExplicitTop = 52
      ExplicitWidth = 902
    end
    inherited GroupBoxFiltro: TGroupBox
      Width = 600
      ExplicitWidth = 600
      inherited BtnSearch: TAdvShapeButton
        Left = 560
        TabOrder = 4
        OnClick = BtnSearchClick
        ExplicitLeft = 560
      end
      object edtFCargo: TAdvEdit
        Left = 3
        Top = 17
        Width = 126
        Height = 21
        EmptyText = 'Cargo'
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
        Version = '2.9.0.0'
      end
      object edtFNombre: TAdvEdit
        Left = 135
        Top = 17
        Width = 114
        Height = 21
        EmptyText = 'Nombre'
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
      object edtFApellidos: TAdvEdit
        Left = 253
        Top = 17
        Width = 132
        Height = 21
        EmptyText = 'Apellidos'
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
      object grpFecha: TGroupBox
        Left = 391
        Top = 6
        Width = 163
        Height = 38
        Caption = 'Fecha'
        TabOrder = 3
        object FechaI: TJvDatePickerEdit
          Left = 61
          Top = 12
          Width = 98
          Height = 21
          AllowNoDate = True
          Checked = True
          TabOrder = 1
        end
        object chkFecha: TCheckBox
          Left = 3
          Top = 14
          Width = 52
          Height = 18
          Caption = 'Activo'
          TabOrder = 0
        end
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 906
    ExplicitWidth = 906
    inherited DBGridPrincipal: TNextDBGrid
      Width = 904
      ExplicitTop = 2
      ExplicitWidth = 904
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 119
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cargo'
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
        Position = 0
        SortType = stAlphabetic
        Width = 119
        FieldName = 'titulocargo'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 177
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nombre'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0007000000160000001D0000001D0000001D0000001D0000001D0000001D0000
          001D0000001D0000001D0000001D0000001D00000016000000075252528E8C8C
          8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF28C8C
          8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF2525252A8000000168D8D8DF2EEEE
          EEFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFEEEEEEFF8D8D8DF20000001D8F8F8FF2EFEF
          EFFF565656FF424242FF424242FF424242FF424242FF6C6C6CFFEBEBEBFF9E9E
          9EFFB8B8B8FF9E9E9EFFB8B8B8FFEFEFEFFF8F8F8FF20000001D929292F2F1F1
          F1FFB4B4B4FF484848FF404040FF404040FF525252FFC0C0C0FFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFF1F1F1FF929292F20000001D959595F2F2F2
          F2FFEFEFEFFFDEDEDEFF585858FF656565FFE9E9E9FFEFEFEFFFEFEFEFFF9F9F
          9FFFBABABAFF9F9F9FFFBABABAFFF2F2F2FF959595F20000001D989898F2F4F4
          F4FFF1F1F1FFE0E0E0FF444444FF5C5C5CFFEBEBEBFFF1F1F1FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF4F4F4FF989898F20000001D9C9C9CF2F5F5
          F5FFF3F3F3FFAEAEAEFF363636FF363636FFD2D2D2FFF3F3F3FFF3F3F3FF9F9F
          9FFFBBBBBBFF9F9F9FFFBBBBBBFFF5F5F5FF9C9C9CF20000001D9E9E9EF2F8F8
          F8FFF6F6F6FFE7E7E7FF484848FF5F5F5FFFF3F3F3FFF5F5F5FFF5F5F5FFF6F6
          F6FFF6F6F6FFF7F7F7FFF6F6F6FFF8F8F8FF9E9E9EF20000001DA1A1A1F2F9F9
          F9FFFAFAFAFFFBFBFBFFF3F3F3FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF8F8
          F8FFFAFAFAFFFBFBFBFFFAFAFAFFF9F9F9FFA1A1A1F20000001DA3A3A3F2FBFB
          FBFFA3A3A3F2A3A3A3F2A3A3A3F2FAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFFAFA
          FAFFA3A3A3F2A3A3A3F2A3A3A3F2FBFBFBFFA3A3A3F200000016A5A5A5F2FDFD
          FDFFFDFDFDFFA5A5A5F2FDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFA5A5A5F2FDFDFDFFFDFDFDFFA5A5A5F2000000076262628EA7A7
          A7F2A7A7A7F26262628EA7A7A7F2A7A7A7F2A7A7A7F2A7A7A7F2A7A7A7F2A7A7
          A7F2A7A7A7F26262628EA7A7A7F2A7A7A7F26262628E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 177
        FieldName = 'nombre'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 255
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Apellidos'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0007000000160000001D0000001D0000001D0000001D0000001D0000001D0000
          001D0000001D0000001D0000001D0000001D00000016000000075252528E8C8C
          8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF28C8C
          8CF28C8C8CF28C8C8CF28C8C8CF28C8C8CF2525252A8000000168D8D8DF2EEEE
          EEFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFEEEEEEFF8D8D8DF20000001D8F8F8FF2EFEF
          EFFF565656FF424242FF424242FF424242FF424242FF6C6C6CFFEBEBEBFF9E9E
          9EFFB8B8B8FF9E9E9EFFB8B8B8FFEFEFEFFF8F8F8FF20000001D929292F2F1F1
          F1FFB4B4B4FF484848FF404040FF404040FF525252FFC0C0C0FFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFF1F1F1FF929292F20000001D959595F2F2F2
          F2FFEFEFEFFFDEDEDEFF585858FF656565FFE9E9E9FFEFEFEFFFEFEFEFFF9F9F
          9FFFBABABAFF9F9F9FFFBABABAFFF2F2F2FF959595F20000001D989898F2F4F4
          F4FFF1F1F1FFE0E0E0FF444444FF5C5C5CFFEBEBEBFFF1F1F1FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF4F4F4FF989898F20000001D9C9C9CF2F5F5
          F5FFF3F3F3FFAEAEAEFF363636FF363636FFD2D2D2FFF3F3F3FFF3F3F3FF9F9F
          9FFFBBBBBBFF9F9F9FFFBBBBBBFFF5F5F5FF9C9C9CF20000001D9E9E9EF2F8F8
          F8FFF6F6F6FFE7E7E7FF484848FF5F5F5FFFF3F3F3FFF5F5F5FFF5F5F5FFF6F6
          F6FFF6F6F6FFF7F7F7FFF6F6F6FFF8F8F8FF9E9E9EF20000001DA1A1A1F2F9F9
          F9FFFAFAFAFFFBFBFBFFF3F3F3FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF8F8
          F8FFFAFAFAFFFBFBFBFFFAFAFAFFF9F9F9FFA1A1A1F20000001DA3A3A3F2FBFB
          FBFFA3A3A3F2A3A3A3F2A3A3A3F2FAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFFAFA
          FAFFA3A3A3F2A3A3A3F2A3A3A3F2FBFBFBFFA3A3A3F200000016A5A5A5F2FDFD
          FDFFFDFDFDFFA5A5A5F2FDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFA5A5A5F2FDFDFDFFFDFDFDFFA5A5A5F2000000076262628EA7A7
          A7F2A7A7A7F26262628EA7A7A7F2A7A7A7F2A7A7A7F2A7A7A7F2A7A7A7F2A7A7
          A7F2A7A7A7F26262628EA7A7A7F2A7A7A7F26262628E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 255
        FieldName = 'apellidos'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 108
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Fecha Inicio'
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
        Position = 3
        SortType = stAlphabetic
        Width = 108
        FieldName = 'fechainicio'
      end
      object NxDBTextColumn5: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Fecha Fin'
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
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        FieldName = 'fechafin'
      end
    end
    inherited PanelBarra: TPanel
      Width = 904
      ExplicitWidth = 904
      inherited Panel1: TPanel
        Width = 771
        ExplicitWidth = 771
      end
      inherited Panel2: TPanel
        Left = 774
        ExplicitLeft = 774
      end
    end
    inherited PnlPro: TPanel
      Width = 904
      inherited PBPaginacion: TAdvProgressBar
        Width = 806
      end
      inherited PnlNum: TPanel
        Left = 807
      end
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 616
    Top = 16
  end
  object FrxPeriodos: TfrxDBDataset
    UserName = 'ReportePeriodos'
    CloseDataSource = False
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 672
  end
  object frxReportePeriodos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 40981.655504918980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 736
    Datasets = <
      item
      end
      item
        DataSet = FrxPeriodos
        DataSetName = 'ReportePeriodos'
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
        Height = 37.795300000000000000
        Top = 415.748300000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 502.677490000000000000
          Top = 3.779530000000022000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 336.378170000000000000
        Width = 740.409927000000000000
        DataSet = FrxPeriodos
        DataSetName = 'ReportePeriodos'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 22.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxPeriodos
          DataSetName = 'ReportePeriodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReportePeriodos."nombre"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 109.149660000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxPeriodos
          DataSetName = 'ReportePeriodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReportePeriodos."apellidos"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 267.889920000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxPeriodos
          DataSetName = 'ReportePeriodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReportePeriodos."fechainicio"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 509.779840000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxPeriodos
          DataSetName = 'ReportePeriodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReportePeriodos."fechafin"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 740.409927000000000000
        Condition = 'ReportePeriodos."titulocargo"'
        object Memo4: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000022000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxPeriodos
          DataSetName = 'ReportePeriodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Cargo:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 109.047310000000000000
          Top = 3.779530000000022000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxPeriodos
          DataSetName = 'ReportePeriodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReportePeriodos."titulocargo"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 37.795300000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 22.677180000000000000
          Top = 11.338590000000010000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nombre:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 109.606370000000000000
          Top = 11.338590000000010000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Apellidos:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 268.346630000000000000
          Top = 11.338590000000010000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Fecha Inicio:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 510.236550000000000000
          Top = 11.338590000000010000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Fecha Fin:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 23.118120000000000000
          Top = 34.015769999999970000
          Width = 695.433520000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 45.354360000000000000
          Width = 585.827150000000000000
          Height = 34.015770000000010000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Periodo de firmantes')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 147.401670000000000000
          Top = 7.559059999999999000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Reporte General')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 147.401670000000000000
          Top = 78.708720000000000000
          Width = 585.827150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd,mmm,yyyy'#39',Date)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 147.401670000000000000
          Top = 100.724490000000000000
          Width = 585.827150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Ciudad del Carmen, Campeche')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 7.559059999999999000
          Width = 128.504020000000000000
          Height = 117.165430000000000000
          ShowHint = False
          DataField = 'imagen1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
end
