inherited FrmGuardia: TFrmGuardia
  BorderWidth = 1
  Caption = 'Guardias'
  ClientHeight = 445
  ClientWidth = 874
  PrintScale = poNone
  ExplicitWidth = 892
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    ExplicitWidth = 169
    ExplicitHeight = 348
    Height = 348
    Width = 169
    inherited LbFiltros: TJvLabel
      Top = 311
      Width = 157
      ExplicitTop = 305
      ExplicitWidth = 840
    end
    object JvLabel1: TJvLabel [2]
      Left = 421
      Top = 19
      Width = 79
      Height = 13
      Caption = 'Tipo de N'#243'mina:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    inherited GroupBoxFiltro: TcxGroupBox
      ExplicitWidth = 163
      ExplicitHeight = 293
      Height = 293
      Width = 163
      inherited BtnSearch: TcxButton
        Top = 258
        Width = 151
        TabOrder = 2
        OnClick = BtnSearchClick
        ExplicitTop = 258
        ExplicitWidth = 151
      end
      object edtFCodigo: TAdvEdit
        Left = 3
        Top = 17
        Width = 159
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
        TabOrder = 0
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
      object edtFtitulo: TAdvEdit
        Left = 3
        Top = 44
        Width = 159
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
        TabOrder = 1
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
      object cbTipos: TComboBox
        Left = 3
        Top = 71
        Width = 159
        Height = 21
        Style = csDropDownList
        TabOrder = 3
        OnChange = cbTiposChange
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 169
    Width = 705
    Height = 348
    ExplicitLeft = 169
    ExplicitWidth = 705
    ExplicitHeight = 348
    inherited DBGridPrincipal: TNextDBGrid
      Width = 703
      Height = 321
      ExplicitWidth = 703
      ExplicitHeight = 321
      object NxDBTextColumn1: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'IdGuardia'
        Header.DisplayMode = dmTextAndImage
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Visible = False
        FieldName = 'IdGuardia'
      end
      object NxDBTextColumn2: TNxDBTextColumn
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
        Position = 1
        SortType = stAlphabetic
        FieldName = 'CodigoGuardia'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 117
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
        Position = 2
        SortType = stAlphabetic
        Width = 117
        FieldName = 'TituloGuardia'
      end
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'D'#237'as Trab.'
        ParentFont = False
        Position = 3
        SortType = stNumeric
        FieldName = 'Trabajados'
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
        Header.Caption = 'D'#237'as Desc.'
        ParentFont = False
        Position = 4
        SortType = stNumeric
        FieldName = 'Descanso'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBTextColumn4: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Desde'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        FieldName = 'FechaInicio'
      end
      object NxDBTextColumn5: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Hasta'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
        FieldName = 'FechaTermino'
      end
    end
    inherited PnlPro: TPanel
      Width = 703
      ExplicitWidth = 703
      inherited PBPaginacion: TAdvProgressBar
        Width = 605
        ExplicitWidth = 769
      end
      inherited PnlNum: TPanel
        Left = 606
        ExplicitLeft = 606
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    Top = 407
    ExplicitTop = 407
    ExplicitWidth = 874
    Width = 874
    inherited Panel1: TcxGroupBox
      ExplicitWidth = 778
      Width = 778
      object Btn_Periodos: TButton
        Left = 529
        Top = 37
        Width = 75
        Height = 25
        Caption = 'Periodos'
        TabOrder = 8
        Visible = False
        OnClick = Button1Click
      end
      object CxBtnPerGuar: TcxButton
        AlignWithMargins = True
        Left = 665
        Top = 5
        Width = 108
        Height = 26
        Align = alClient
        Caption = '&Periodos'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Blue'
        OptionsImage.ImageIndex = 5
        OptionsImage.Images = Form2.cxImageResIconosTodos24
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = CxBtnPerGuarClick
      end
    end
    inherited Panel2: TcxGroupBox
      Left = 779
      ExplicitLeft = 779
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 560
    Top = 40
  end
  inherited cdDatos: TClientDataSet
    Left = 358
    Top = 128
  end
  inherited mdEstructura: TJvMemoryData
    Top = 80
  end
  inherited qGrabar: TClientDataSet
    Left = 600
    Top = 120
  end
  inherited mdDeposito: TClientDataSet
    Left = 640
    Top = 216
  end
  inherited DxBManagerMain: TdxBarManager
    Left = 696
    Top = 328
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
          ItemName = 'DxBarBtnPeriodos'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxBarBtnImprimir'
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
    object DxBarBtnPeriodos: TdxBarLargeButton
      Caption = '&Periodos Guardia'
      Category = 0
      Hint = 'Periodos Guardia'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0001000000020000000400000005000000050000000500000005000000050000
        0005000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000070000
        0007000000070000000600000005000000030000000100000001000000010000
        0003000000090000000F00000013000000140000001400000014000000150000
        0015000000150000001600000016000000160000001600000017000000170000
        0017000000180000001800000018000000180000001900000019000000190000
        001A0000001A00000019000000140000000D0000000500000001000000020000
        00092F211D57956B5DEAA47565FFA47565FFA37463FFA17363FFA17262FFA071
        62FFA17161FFA07161FFA07060FF9F7060FF9E6F60FF9E6E5FFF9E6E5EFF9D6D
        5EFF9D6D5EFF9C6C5DFF9C6C5CFF9C6C5CFF9B6B5CFF9C6B5BFF9B6A5BFF9B6A
        5BFF9B695BFF9A695AFF8C5F52EB2B1D195E0000000C00000003000000030000
        000D9F7464F6DCC4B0FFE1CCB8FFE1CCB8FFE1CCB7FFE1CCB8FFE1C9B7FFE1CC
        B7FFDEC9B4FFE1C9B7FFDEC9B4FFDEC9B4FFDEC9B4FFDDC7B1FFDDC7B1FFDEC9
        B4FFDEC8B4FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7
        B1FFDDC7B1FFDDC7B1FFD7BEA9FF946556F70000001400000005000000040000
        0010AA7B6CFFCCA390FFCA9E8BFFC99E8CFFC99D8AFFC99C8AFFC89B89FFC79B
        88FFC69887FFC69787FFC59785FFC49684FFC49683FFC49482FFC49382FFC393
        80FFC29280FFC1917EFFC1907DFFC08E7CFFC08E7BFFBF8C7AFFBE8C7AFFBE8B
        79FFBD8B79FFBD8A76FFC08F7CFF9D6C5CFF0000001800000006000000040000
        0010B08272FFEFE3D8FFFCFDF5FFFCFDF5FFFCFDF5FFFCFCF4FFFCFCF4FFFBFC
        F3FFFCFBF3FFFBFBF3FFFBFAF2FFFAFAF1FFFAF9F1FFFBF9F1FFFAF9F0FFF9F8
        EFFFF9F8EFFFF9F7EEFFF9F6EEFFF8F6EDFFF8F5ECFFF7F5ECFFF7F4EBFFF8F3
        EBFFF8F3EAFFF6F2EAFFE6D4C9FFA37262FF0000001800000006000000040000
        000FB18474FFF6F0E9FFF1E7DFFFF2E7DFFFF1E7DEFFF1E7DEFFF1E7DEFFF1E6
        DDFFF1E6DEFFF0E6DEFFF0E6DDFFF1E6DDFFF0E6DDFFF0E6DCFFF0E6DCFFF0E6
        DCFFF0E6DBFFEFE6DBFFF0E5DBFFF0E6DBFFF0E5DAFFF0E5DAFFEFE5DAFFEFE4
        DAFFEFE5DAFFEFE3D9FFF2E8E0FFA47363FF0000001700000006000000040000
        000EB28575FFF6EFE9FFF4ECE5FFF5ECE4FFF4EBE4FFF5EBE3FFF4EBE3FFF4EB
        E3FFF4EBE2FFF4EBE2FFF4EAE1FFF3EAE2FFF4EAE2FFF4EAE1FFF3EAE1FFF3EA
        E0FFF4EAE0FFF3EAE0FFF3EAE0FFF2EADFFFF3E9DFFFF3E9DFFFF3E9DFFFF2E9
        DFFFF3E9DEFFF2E8DEFFF2E8DFFFA57463FF0000001700000006000000030000
        000EB38676FFF8F2ECFFF6EEE7FFF6EFE7FFF6EEE6FFF6EEE6FFF6EEE6FFF5EE
        E6FFF5EEE5FFF5EEE5FFF5EDE4FFF5EDE4FFF5ECE4FFF4EDE3FFF5ECE3FFF4EC
        E3FFF5ECE3FFF4EBE2FFF4EBE3FFF4ECE2FFF4EBE2FFF4EBE1FFF4EBE1FFF4EA
        E1FFF4EAE1FFF3E9E0FFF4EBE2FFA67565FF0000001600000006000000030000
        000DB58878FFF9F4EEFFF7EFE8FFF6F0E8FFC19B8BFFC09A8AFFF1E6DEFFC099
        89FFBF9788FFF1E5DDFFBF9687FFBE9585FFF0E4DCFFBC9584FFBC9483FFEFE3
        DAFFBB9182FFBA9182FFEFE3D9FF5867DBFF5865DAFFE5DEE2FF5664DAFF5664
        DAFFF4EAE1FFF4EAE2FFF5EDE4FFA67566FF0000001500000005000000030000
        000CB68A7AFFFAF5EFFFF7F0E9FFF7F1E9FFC39E8DFFC29C8CFFF1E7DFFFC09B
        8AFFC09A8AFFF1E6DEFFBF9889FFBF9988FFF1E5DDFFBE9587FFBE9585FFF0E5
        DCFFBB9584FFBB9482FFEFE4DBFF5A69DCFF5A69DCFFE5DFE2FF5967DBFF5866
        DAFFF4EBE3FFF4ECE2FFF5EDE5FFA87767FF0000001400000005000000030000
        000CB88C7CFFF9F5F0FFF8F1EAFFF7F0EAFFF2E8E1FFF2E9E0FFF6EFE8FFF2EB
        E4FFEFE8E1FFEEE7E0FFEEE7DFFFEDE5DEFFECE6DEFFECE6DEFFEFE7E1FFF3EC
        E4FFF0E4DCFFF0E4DCFFEFE4DBFFE7E0E3FFE6E0E4FFE6DFE3FFE5DFE2FFE5DF
        E3FFF5ECE3FFF5ECE3FFF6EEE6FFA87869FF0000001400000005000000030000
        000BB88E7EFFFAF6F1FFF7F2EBFFF8F1EBFFC6A192FFC5A091FFF3EDE6FFC6A1
        92FFC5A091FFF3EDE6FFC6A192FFC5A091FFF3EDE6FFBF9789FFBF9788FFEFE8
        E1FFBF9789FFBF9788FFF1E5DDFF6070DFFF5F6FDFFFE7E0E4FF5E6DDEFF5D6C
        DDFFF5EDE4FFF5ECE4FFF6EEE6FFA97969FF0000001300000005000000030000
        000ABA8F80FFFAF7F2FFF8F2ECFFF8F3ECFFC7A495FFC7A393FFF3EDE6FFC7A4
        95FFC7A393FFF3EDE6FFC7A495FFC7A393FFF3EDE6FFC09A8BFFC09A8AFFECE6
        DFFFC09A8BFFC09A8AFFF1E6DEFF6273E0FF6173E0FFE7E1E6FF6071DFFF6070
        DEFFF5EDE5FFF5EDE5FFF6EFE8FFAA7A6BFF0000001200000005000000020000
        000ABB9181FFFAF7F2FFF8F3EDFFF8F3EDFFF4EBE4FFF3EBE4FFF3EDE7FFF4EB
        E4FFF3EBE4FFF3EDE7FFF4EBE4FFF3EBE4FFF3EDE7FFF1E7E0FFF1E7DFFFEDE7
        E0FFF1E7E0FFF1E7DFFFF1E8DFFFE7E4E7FFE8E3E6FFE7E3E6FFE7E2E6FFE7E2
        E6FFF6EEE6FFF5EEE6FFF7F0E8FFAC7D6CFF0000001200000004000000020000
        0009BD9282FFFBF8F4FFF9F4EEFFF9F4EEFFC9A89AFFC9A899FFF5EFE9FFC9A8
        9AFFC9A899FFF5EFE9FFC9A89AFFC9A899FFF5EFE9FFC49F8EFFC39E8EFFEEE8
        E1FFC49F8EFFC39E8EFFF2E8DFFF687AE3FF6879E3FFE8E4E8FF6678E1FF6577
        E1FFF6EEE7FFF6EFE7FFF7F1E9FFAD7E6EFF0000001100000004000000020000
        0008BE9484FFFBF8F4FFF9F5F0FFFAF5EFFFCBAA9BFFCAAA9BFFF5F0EAFFCBAA
        9BFFCAAA9BFFF5F0EAFFCBAA9BFFCAAA9BFFF5F0EAFFC5A091FFC4A090FFEFE9
        E4FFC5A091FFC4A090FFF2E8E1FF6B7EE4FF6B7EE4FFE8E5E9FF697BE3FF687A
        E2FFF6EFE8FFF6EFE8FFF7F1EAFFAE7F6FFF0000001000000004000000020000
        0008BF9685FFFCF8F5FFFAF5F1FFFAF5F0FFF6EEE8FFF6EEE7FFF6F1ECFFF6EE
        E8FFF6EEE7FFF6F1ECFFF6EEE8FFF6EEE7FFF6F1ECFFF3EAE2FFF3E9E2FFF1EB
        E6FFF3EAE2FFF3E9E2FFF3E9E2FFEAE5EAFFEAE5EAFFEAE5EAFFE9E5E9FFE9E5
        E9FFF7F0E9FFF7F0E8FFF8F1EBFFAF8170FF0000000F00000004000000020000
        0007C09888FFFCFAF6FFFAF7F2FFFAF6F1FFCEAFA0FFCEAEA0FFF8F3EEFFCEAF
        A0FFCEAEA0FFF8F3EEFFCEAFA0FFCEAEA0FFF8F3EEFFC9A596FFC7A595FFF2ED
        E7FFC9A596FFC7A595FFF3EAE3FF7085E7FF6F84E6FFEAE6EBFF6E82E6FF6D81
        E5FFF7F0EAFFF7F0E9FFF8F3ECFFB08272FF0000000F00000004000000020000
        0006C19989FFFCFAF7FFFAF7F2FFFAF6F2FFD0B1A3FFD0B1A1FFF9F5F0FFD0B1
        A3FFD0B1A1FFF9F5F0FFD0B1A3FFD0B1A1FFF9F5F0FFCAA89AFFC9A699FFF6F1
        EBFFCAA89AFFC9A699FFF3EBE5FF7388E8FF7287E7FFEBE8EBFF7185E7FF7184
        E6FFF8F2EBFFF7F1EBFFF8F3EEFFB18474FF0000000E00000004000000010000
        0006C39B8AFFFCFAF8FFFBF8F3FFFBF8F3FFFBF7F3FFFAF7F2FFFBF6F2FFFAF5
        F1FFF8F4EFFFF8F4EFFFF7F3EEFFF7F3EDFFF6F2ECFFF5F1EBFFF7F2EDFFF8F3
        EEFFFAF4EFFFF9F4EEFFF9F4EEFFF9F4EEFFF8F3EDFFF8F3EDFFF8F3ECFFF8F2
        ECFFF8F2ECFFF8F2ECFFF9F4EEFFB28576FF0000000D00000003000000010000
        0005C39C8CFFFCFAF9FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF7F4FFFAF7
        F3FFFAF7F2FFFBF7F2FFFAF6F2FFFAF6F1FFFAF6F1FFFAF5F1FFFAF5F0FFFAF5
        F0FFFAF5F0FFFAF5EFFFF9F5EFFFF9F4EEFFF9F4EFFFF9F4EEFFF9F4EEFFF9F3
        EDFFF8F3EDFFF8F3EDFFF9F4EFFFB48778FF0000000D00000003000000010000
        0005C49D8DFFFDFCFBFFFDFBF8FFFDFBF8FFFCFAF8FFFDFAF7FFFDFBF7FFFDF9
        F7FFFCFAF7FFFCFAF6FFFBF9F6FFFCF9F6FFFCF8F5FFFBF9F5FFFCF9F5FFFBF8
        F5FFFBF8F5FFFBF8F4FFFBF8F5FFFBF8F4FFFBF8F3FFFBF8F3FFFBF7F3FFFBF7
        F2FFFBF6F2FFFBF6F2FFFBF8F4FFB58979FF0000000C00000003000000010000
        0004444BBBFF9EADF0FF6B81E6FF6B80E6FF6A7FE5FF687CE4FF677BE4FF677A
        E3FF6578E2FF6476E2FF6375E1FF6274E1FF6172E0FF6070DFFF5E6FDFFF5D6D
        DEFF5C6BDEFF5B69DDFF5968DCFF5967DBFF5765DAFF5663DAFF5561DAFF5460
        D8FF525FD8FF515DD7FF6872DEFF3336A9FF0000000B00000003000000010000
        0004474EBDFFA0AFF1FF6D83E8FF6C82E7FF6B80E6FF8093EAFF8799EBFF7E91
        E9FF677AE4FF6679E3FF6577E3FF6376E1FF6274E1FF6173E0FF6171E0FF5F6F
        DFFF5E6EDEFF5D6CDDFF5B6BDDFF5B69DCFF717DE1FF7783E4FF6E7BE1FF5563
        D9FF5460D9FF5360D8FF6B76DFFF3639ACFF0000000B00000003000000010000
        00034951C0FFA0B2F2FF6F85E8FF6E84E7FF5F73D7FF3E3D7BFF29234EFF2B2B
        61FF596DD1FF677BE4FF667AE4FF6578E2FF6476E2FF6375E2FF6273E1FF6172
        E0FF6070DFFF5E6FDEFF5E6DDEFF505ECFFF3C3879FF29234EFF28275EFF4B57
        C8FF5663DAFF5562D9FF6D78E0FF383CAEFF0000000A00000003000000010000
        00034C54C3FFA3B4F2FF778DEAFF7086E8FF5B6FD3FF5D558CFFB7A194FF3F37
        6CFF5667CCFF697DE5FF687CE4FF677AE4FF6679E3FF6478E3FF6375E1FF6274
        E1FF6273E0FF6071DFFF5F6FDFFF4C5BC9FF5D558CFFB7A194FF3F376CFF4753
        C1FF5866DBFF5663DAFF6F7BE1FF3A3FB0FF0000000900000002000000000000
        00024B53B6ED8E9DE7FFA4B5F2FFA3B3F2FF8D9DE1FF645B91FFAA9284FF473F
        74FF8795D9FF9DADF0FF9CACF0FF9BAAEFFF9BA9EEFF9AA7EEFF98A6EEFF97A5
        EDFF96A4EDFF94A2ECFF93A1ECFF7D8AD9FF645B91FFAA9284FF473F74FF7681
        D2FF8C97E9FF8C97E8FF7680DBFF3C3FA5EE0000000600000002000000000000
        0001141631413F479ECA4F58C7FF4F58C7FF4048B4FF6A6399FFFFFEF3FF5048
        7FFF3D44ADFF4B54C2FF4A52C2FF4A52C1FF4951C0FF4950C0FF484FBFFF474F
        BEFF464EBEFF464DBDFF464CBCFF383DA9FF6A6399FFFFFEF3FF50487FFF3539
        A3FF4248B8FF4147B7FF32368FCC10112D450000000400000001000000000000
        000000000001000000010000000200000002000000088A7368FFDACEC5FF735A
        50FF0000000D0000000300000003000000040000000400000004000000040000
        00040000000500000005000000050000000B8A7368FFDACEC5FF735A50FF0000
        0010000000060000000600000005000000030000000100000000000000000000
        000000000000000000000000000000000000000000026C5B54C090796FFF6655
        4EC2000000060000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000036C5B54C090796FFF66554EC20000
        0006000000010000000100000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000030000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000003000000030000
        0001000000000000000000000000000000000000000000000000}
      LargeImageIndex = 5
      OnClick = DxBarBtnPeriodosClick
      AutoGrayScale = False
    end
  end
  object frxReporteGuardias: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 42116.849344849540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 192
    Datasets = <
      item
        DataSet = FrxGuardias
        DataSetName = 'ReporteGuardias'
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
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 411.968770000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559059999999875000
          Width = 219.212740000000000000
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
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        DataSet = FrxGuardias
        DataSetName = 'ReporteGuardias'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 11.338582680000000000
          Width = 75.212588660000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxGuardias
          DataSetName = 'ReporteGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteGuardias."CodigoGuardia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 86.551190870000000000
          Width = 298.960610390000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrxGuardias
          DataSetName = 'ReporteGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteGuardias."TituloGuardia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteGuardiasReporteGuardias: TfrxMemoView
          Left = 385.512060000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrxGuardias
          DataSetName = 'ReporteGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteGuardias."trabajados"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteGuardiasReporteGuardias1: TfrxMemoView
          Left = 472.441250000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrxGuardias
          DataSetName = 'ReporteGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteGuardias."descanso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteGuardiasReporteGuardias2: TfrxMemoView
          Left = 563.149970000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrxGuardias
          DataSetName = 'ReporteGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteGuardias."fechainicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteGuardiasReporteGuardias3: TfrxMemoView
          Left = 642.520100000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrxGuardias
          DataSetName = 'ReporteGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteGuardias."fechatermino"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        Condition = 'ReporteGuardias."IdTipoNomina"'
      end
      object Header1: TfrxHeader
        Height = 19.055137640000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Width = 75.212588660000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 563.149606299999900000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Desde')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 642.519685040000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Hasta')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 86.551171340000000000
          Width = 298.960629920000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Nombre de la Guardia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 385.512060000000000000
          Width = 86.929136300000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#237'as Trabajados')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 472.441250000000000000
          Width = 90.708668739999990000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#237'as Descansados:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 60.472480000000000000
          Width = 585.827150000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cat'#225'logo de Guardias')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 147.401670000000000000
          Top = 139.181200000000000000
          Width = 585.827150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd,mmm,yyyy'#39',Date)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionReporteOrganizacion: TfrxMemoView
          Left = 147.401670000000000000
          Width = 585.827150000000000000
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
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
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
        object ReporteOrganizacionReporteOrganizacion1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 128.504020000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 3.779527559055118000
        Top = 347.716760000000000000
        Width = 740.409927000000000000
        object Shape1: TfrxShapeView
          Left = 11.338590000000000000
          Width = 721.890230000000000000
          Height = 1.889763779527559000
          ShowHint = False
          Color = clSkyBlue
          Frame.Width = 0.100000000000000000
        end
      end
    end
  end
  object FrxGuardias: TfrxDBDataset
    UserName = 'ReporteGuardias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdTipoNomina=IdTipoNomina'
      'IdGuardia=IdGuardia'
      'CodigoGuardia=CodigoGuardia'
      'TituloGuardia=TituloGuardia'
      'Trabajados=Trabajados'
      'Descanso=Descanso'
      'FechaInicio=FechaInicio'
      'FechaTermino=FechaTermino')
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 464
    Top = 240
  end
  object cdTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 224
  end
  object frxOrganizacion: TfrxDBDataset
    UserName = 'ReporteOrganizacion'
    CloseDataSource = False
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 464
    Top = 296
  end
end
