object FrmFormatosExcel: TFrmFormatosExcel
  Left = 0
  Top = 0
  Caption = 'Formatos Excel'
  ClientHeight = 539
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DxNavOpciones: TdxNavBar
    Left = 0
    Top = 0
    Width = 217
    Height = 539
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 14
    ViewStyle.SkinName = 'Office2010Blue'
    ViewStyle.SkinNameAssigned = True
    OptionsImage.SmallImages = CxImageList16
    object NavGrpCalendario: TdxNavBarGroup
      Caption = 'Filtrar N'#243'minas'
      SelectedLinkIndex = -1
      SmallImageIndex = 2
      TopVisibleLinkIndex = 0
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object NavGrpFormatos: TdxNavBarGroup
      Caption = 'Imprimir'
      SelectedLinkIndex = -1
      SmallImageIndex = 0
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NavItemEmbarcados
        end
        item
          Item = NavItemNominaQuincenal
        end
        item
          Item = NavItemAsimilados
        end
        item
          Item = NavItemResumen
        end
        item
          Item = dxSeparator1
        end
        item
          Item = NavItemDesglosePago
        end>
    end
    object NavItemEmbarcados: TdxNavBarItem
      Caption = 'Formato Embarcados'
      SmallImageIndex = 1
      OnClick = NavItemEmbarcadosClick
    end
    object NavItemNominaQuincenal: TdxNavBarItem
      Caption = 'Formato Quincenal'
      SmallImageIndex = 1
      OnClick = NavItemNominaQuincenalClick
    end
    object NavItemAsimilados: TdxNavBarItem
      Caption = 'Formato Asimilados'
      SmallImageIndex = 1
      OnClick = NavItemAsimiladosClick
    end
    object NavItemResumen: TdxNavBarItem
      Caption = 'Resumen'
      SmallImageIndex = 1
      OnClick = NavItemResumenClick
    end
    object dxSeparator1: TdxNavBarSeparator
      Caption = 'dxSeparator1'
    end
    object NavItemDesglosePago: TdxNavBarItem
      Caption = 'Desglose de Pagos'
      SmallImageIndex = 1
      OnClick = NavItemDesglosePagoClick
    end
    object DxNavControlCalendario: TdxNavBarGroupControl
      Left = 14
      Top = 37
      Width = 189
      Height = 260
      Caption = 'DxNavControlCalendario'
      TabOrder = 0
      UseStyle = True
      GroupIndex = 0
      OriginalHeight = 260
      object cxbtnFiltrar: TcxButton
        Left = 0
        Top = 233
        Width = 187
        Height = 24
        Caption = '&Filtrar'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000000D000000190000001A0000
          000E000000030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000D112B4A8C1A4E9CF6194D9BF60F28
          478D0000000E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000172762ABFFD6EDF7FF5DB1E5FF225C
          A5FF000000190000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000019255FA9FFC1E6F5FF56AEE3FF2058
          A3FF0000001B0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000017235CA7FFABE2F6FF4DABE4FF1F56
          A2FF000000190000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000001B225BA6FF8FD6F4FF45A5E1FF1E54
          A1FF0000001E0000000200000000000000000000000000000000000000000000
          00000000000000000005000102160F28498A225AA6FF77CAEEFF3BA0DEFF1E53
          A1FF081E3F8D0001021800000006000000010000000000000000000000000000
          000000000005040B112D22568DD03B81C4FF4E96D2FF4AA1D9FF3592D1FF2F7E
          C6FF2465B0FF113A76D202070E31000000070000000100000000000000000000
          0004060F18332F70AFEE569FD6FF7CC0E8FF93CFEFFF5BBFE9FF41ADDFFF3287
          CEFF3485D2FF3181C9FF1A5095EF030A14390000000500000000000000010000
          000B265D8FC962ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6BCFF0FF47BAE6FF398F
          D4FF2F7ACBFF3C92DBFF368ACFFF17417BCD0000000F00000001000000030E23
          34534992CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF72D4F2FF4ABFE8FF3F98
          D8FF2B73C8FF3486D2FF43A2E2FF2A70BAFF09182E5A00000005000000062252
          7AA96BB6E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF76D7F3FF4DC5EAFF47A2
          DEFF2A72C6FF2F7ACBFF44A2E4FF3891D4FF163C6CAE0000000A00000007357D
          B5EC91D5F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6
          FDFFC7ECF9FFA1D1EEFF86CBF1FF4FADE5FF21599FEC0000000C000000053C8B
          C8FFF2FAFDFFB9C6E2FF6884C0FF3C64B1FF0F43A4FF1451ADFF1B60B8FF2471
          C1FF529CD6FF76BBE6FFAAE0F4FFC5F0FBFF2665B0FE0000000A000000021530
          455E468DC1F093C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2
          FAFFCAEBF8FFA6D6EFFF71AFDCFF316FB0F10D233D6400000004000000000000
          000203070A111633476026577BA1316F9FCF3275AADE3885C4FF3681C2FF2D6C
          A5DE286298D11D4872A410284164020509150000000400000001}
        TabOrder = 0
        OnClick = cxbtnFiltrarClick
      end
      object CxLookUpTipoNomina: TcxLookupComboBox
        Left = 0
        Top = 5
        Properties.KeyFieldNames = 'IdTipoNomina'
        Properties.ListColumns = <
          item
            FieldName = 'Titulo'
          end>
        Properties.ListSource = dsTipoNomina
        Properties.OnEditValueChanged = CxLookUpTipoNominaPropertiesEditValueChanged
        TabOrder = 1
        Width = 187
      end
      object CxGroupFiltros: TcxGroupBox
        Left = 0
        Top = 32
        Caption = 'Filtrar por:'
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 2
        Height = 49
        Width = 187
        object dxRbMes: TcxRadioButton
          Left = 3
          Top = 19
          Width = 46
          Height = 17
          Caption = 'Mes'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = dxRbMesClick
          Transparent = True
        end
        object dxRbAnio: TcxRadioButton
          Left = 55
          Top = 19
          Width = 46
          Height = 17
          Caption = 'A'#241'o'
          TabOrder = 1
          OnClick = dxRbAnioClick
          Transparent = True
        end
        object dxRbRango: TcxRadioButton
          Left = 108
          Top = 21
          Width = 58
          Height = 14
          Caption = 'Rango'
          TabOrder = 2
          OnClick = dxRbRangoClick
          Transparent = True
        end
      end
      object CxPageFiltros: TcxPageControl
        Left = 0
        Top = 87
        Width = 185
        Height = 146
        TabOrder = 3
        Properties.ActivePage = cxPageMes
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Office2010Blue'
        ClientRectBottom = 140
        ClientRectLeft = 2
        ClientRectRight = 179
        ClientRectTop = 27
        object cxPageMes: TcxTabSheet
          Caption = 'cxPageMes'
          ImageIndex = 0
          object CxDateNav1: TcxDateNavigator
            Left = 0
            Top = 0
            Width = 177
            Height = 113
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            TabOrder = 0
            OnPeriodChanged = CxDateNav1PeriodChanged
            OnSelectionChanged = CxDateNav1SelectionChanged
          end
        end
        object cxPageAnio: TcxTabSheet
          Caption = 'cxPageAnio'
          ImageIndex = 1
          object cxlblAnio: TcxLabel
            Left = 78
            Top = 33
            Caption = 'A'#241'o:'
            Transparent = True
          end
          object CxTextAnio: TcxTextEdit
            Left = 16
            Top = 56
            TabOrder = 1
            Text = 'CxTextAnio'
            Width = 148
          end
        end
        object cxPageRango: TcxTabSheet
          Caption = 'cxPageRango'
          ImageIndex = 2
          object cxDateInicio: TcxDateEdit
            Left = 3
            Top = 24
            TabOrder = 0
            Width = 179
          end
          object cxDateTermino: TcxDateEdit
            Left = 3
            Top = 72
            TabOrder = 1
            Width = 179
          end
          object cxlblDesde: TcxLabel
            Left = 3
            Top = 8
            Caption = 'Desde:'
            Transparent = True
          end
          object cxlblHasta: TcxLabel
            Left = 3
            Top = 56
            Caption = 'Hasta:'
            Transparent = True
          end
        end
      end
    end
  end
  object cxspltr1: TcxSplitter
    Left = 217
    Top = 0
    Width = 6
    Height = 539
    HotZoneClassName = 'TcxSimpleStyle'
  end
  object pnl1: TPanel
    Left = 223
    Top = 0
    Width = 657
    Height = 539
    Align = alClient
    Caption = 'pnl1'
    TabOrder = 2
    object CxGridNominas: TcxGrid
      Left = 1
      Top = 42
      Width = 655
      Height = 496
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      PopupMenu = dxPopup1
      TabOrder = 0
      object CxDbGridNominas: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsNomina
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        Styles.Background = cxstyl1
        Styles.Content = cxstylFontContent
        Styles.Header = cxstylFont
        object CxColumnInicio: TcxGridDBColumn
          Caption = 'Inicio'
          DataBinding.FieldName = 'FechaNomina'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 49
        end
        object CxColumnTermino: TcxGridDBColumn
          Caption = 'T'#233'rmino'
          DataBinding.FieldName = 'FechaTerminoNomina'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 85
        end
        object CxColumnTitulo: TcxGridDBColumn
          Caption = 'T'#237'tulo'
          DataBinding.FieldName = 'Titulo'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 232
        end
        object CxColumnAnio: TcxGridDBColumn
          Caption = 'Listar de N'#243'minas del A'#241'o'
          DataBinding.FieldName = 'Anio'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          GroupIndex = 0
        end
        object CxColumnTituloTipoNomina: TcxGridDBColumn
          Caption = 'Tipo de N'#243'mina'
          DataBinding.FieldName = 'TituloGeneral'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 131
        end
        object CxColumnTipoCalculo: TcxGridDBColumn
          Caption = 'Tipo C'#225'lculo'
          DataBinding.FieldName = 'TipoCalculo'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 103
        end
        object CxColumnPersonalNomina: TcxGridDBColumn
          Caption = 'Personal Incluido'
          DataBinding.FieldName = 'CantidadPersonal'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 105
        end
        object CxColumnPagado: TcxGridDBColumn
          DataBinding.FieldName = 'Pagados'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 54
        end
        object CxColumnNoPagado: TcxGridDBColumn
          Caption = 'NO Pagados '
          DataBinding.FieldName = 'NOPagados'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 53
        end
        object CxColumnNeto: TcxGridDBColumn
          Caption = 'Total N'#243'mina'
          DataBinding.FieldName = 'Neto'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 100
        end
        object tcxColumnIdNomina: TcxGridDBColumn
          DataBinding.FieldName = 'IdNomina'
          Visible = False
        end
        object CxColumnGuardia: TcxGridDBColumn
          Caption = 'Guardia / Embarcaci'#243'n'
          DataBinding.FieldName = 'AgrupaGuardia'
          Visible = False
          GroupIndex = 1
        end
        object CxColumnMes: TcxGridDBColumn
          DataBinding.FieldName = 'mes'
          Visible = False
          GroupIndex = 2
        end
      end
      object cxLevel1: TcxGridLevel
        GridView = CxDbGridNominas
      end
    end
    object pnl2: TPanel
      Left = 1
      Top = 1
      Width = 655
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object cxlblTipoNomina: TcxLabel
        Left = 92
        Top = 15
        Caption = '  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel1: TcxLabel
        Left = -1
        Top = 15
        Caption = 'Tipo N'#243'mina:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
  end
  object CxImageList16: TcxImageList
    FormatVersion = 1
    DesignInfo = 5767400
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000090000
          000E000000100000001000000010000000100000001000000011000000110000
          001100000011000000100000000B00000003000000000000000017417CCA2159
          A8FF225BAAFF225AAAFF2159A9FF2158A9FF2057A8FF2057A7FF2055A7FF1F55
          A7FF1F54A6FF1E53A6FF1E52A4FF1A458DE303080F2900000002225DA8FF2F6B
          B0FF579AD3FF71BEECFF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
          E1FF389BE0FF369AE0FF3498DFFF2875C1FF0F284E8B000000082868B1FF4884
          BFFF4489C7FF9CD8F5FF63B9EBFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
          E5FF47A6E4FF44A4E4FF41A2E3FF3991D7FF1B4787D50000000D2C6FB7FF6CA7
          D2FF3C86C4FFA0D4EFFF94D5F4FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
          EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2967B4FF040B142F2F75BCFF8FC7
          E6FF4D9CD0FF7FBCE2FFC3EEFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
          EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF408ACAFF112C4E81327CBFFFAFE3
          F5FF71C1E6FF56A3D6FFD2F5FDFFD4F6FEFFD2F4FEFFCDF3FDFFC8F1FDFFC2EE
          FCFFBCEBFBFFB5E7FAFFADE3F9FFA5DFF8FF82C0E6FF1E5189CB3582C4FFC7F5
          FEFF92DEF4FF7B93A8FF4CA0D6FF4A9DD5FF489CD4FF479AD2FF4698D2FF4596
          D1FF4394CFFF4292CEFF2D73BAFF2D72B9FF2C71B8FF2765A7EA3688C8FFCDF7
          FEFFA1E6F7FFBA8573FFFFFFFFFFFCF9F7FFFCF9F7FFFCF9F6FFFBF9F6FFFCF8
          F6FFFBF8F6FFFFFFFFFFB17B68FF0000001C0000000A00000007398ECBFFD0F8
          FEFFAAEAF8FFBC8A78FFFFFFFFFFCAA497FFC9A396FFC9A395FFC8A294FFC7A2
          93FFC7A092FFFFFFFFFFB47F6DFF0000001000000000000000003B92CEFFD3F9
          FEFFB2EEF9FFBF8E7DFFFFFFFFFFFDFBF9FFFDFAF8FFFCFBF8FFFCFAF8FFFCFA
          F8FFFCFAF7FFFFFFFFFFB78471FF0000000C00000000000000003D97D1FFE2FC
          FEFFDEF8FAFFC39381FFFFFFFFFFCCA99CFFCCA89BFFCBA79AFFCBA699FFCAA6
          98FFCAA598FFFFFFFFFFBB8776FF0000000700000000000000002E739DBF3E9A
          D3FF3D97D1FFC69785FFFFFFFFFFFCF9F6FFFCF9F5FFFBF9F5FFFBF7F4FFFBF8
          F4FFFAF7F3FFFFFFFFFFBE8C7BFF000000050000000000000000000000020000
          000300000005C99B8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC1907FFF000000030000000000000000000000000000
          000000000001977669BECB9E8DFFCA9D8CFFC99C8BFFC89B89FFC89A88FFC799
          87FFC69786FFC59785FF916E61BF000000020000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0002000000020000000200000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          00090000000E0000000F00000010000000100000001100000011000000110000
          001200000012000000110000000C000000030000000000000000000000087B50
          43C0AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFAA6D59FFAA6C
          59FFAA6C59FFA96C58FF794D3FC30000000B00000000000000000000000CAD73
          5FFFFDFBF9FFFBF5F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1EDFFF8F1
          ECFFF8F0EBFFF8F0EAFFD5B6ADFF0000001100000000000000000000000CB077
          62FFFDFBFAFFF7EDE6FF53A46CFF058131FF048030FF047F30FF037E2FFF037D
          2EFF027C2EFF027B2DFF02792CFF01792CFF00782BFF00511DAD0000000BB079
          66FFFDFBFBFFF8EEE8FF068332FFFAF6F6FF058131FFF9F5F3FF047F2FFFF8F2
          F1FFF7F2EFFF7DB68EFFF7EFEDFFF6EEEBFF7BB48BFF01782BFF0000000AB37C
          69FFFEFCFBFFF8F0EAFF068433FFFBF7F6FF058231FFF9F5F4FF048030FFF8F4
          F2FF037E2FFF037D2FFF027C2EFF7DB68DFFF6EEEBFF01792CFF00000009B67F
          6CFFFEFDFCFFF9F0EBFF078533FF81BE95FFFBF7F6FF80BD94FF048131FFF9F5
          F2FF047F30FF037E2FFF7EB88FFFF6F1EEFF037B2DFF017A2DFF00000009B983
          71FFFEFDFCFFFAF3EEFF068634FFFCF8F8FF068433FFFBF7F6FF068231FFFAF5
          F3FF048030FF047F30FFF8F3F0FF037D2EFF027C2EFF027A2DFF00000008BC88
          77FFFEFEFDFFFBF4EFFF078634FFFBFAF9FF078533FFFAF8F7FF068333FFFAF7
          F5FF058131FF058030FF7EB991FFF8F2F0FFF7F2EFFF027C2DFF00000007BF8C
          7AFFFEFEFDFFFBF6F1FF55AA71FF078634FF078534FF068534FF068433FF0683
          32FF058332FF058131FF058030FF047F30FF037E2FFF025420AD00000006C18F
          7FFFFEFEFEFFFAF6F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
          EFFFFAF4EEFFFDF9F8FFDEC3BAFF0000000B000000000000000000000006C493
          82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
          F1FFFBF5F0FFFDFBF9FFBF8C7BFF0000000B000000000000000000000005C799
          85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFDFCFAFFC28F7FFF0000000A000000000000000000000004C99A
          89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFC49382FF000000080000000000000000000000029775
          67C0CA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
          87FFC79887FFC89886FF927163C2000000050000000000000000000000010000
          0002000000030000000400000004000000050000000500000005000000060000
          0006000000060000000600000005000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000009041225510D33
          69BD114389EB114489EC0D3369BD051225520000000900000002000000000000
          0000000000000000000000000000000000010000000815204E872259A1FF629B
          D2FF7DB7E7FF7CB6E7FF619AD2FF1F57A0FF0923478800000009000000000000
          000000000000000000040000000D0000001112112D524E4DBAFD6687D9FFA6D4
          F4FF8EC5F0FF8EC5F0FF8EC5F0FF85BCEAFF275EA4FD0412244D000000000000
          0000000000000000000C4F413BBB3E32308F454396E06F77D4FF6A77DAFF698C
          DEFFACD7F5FF94C9F1FF95C9F1FF95C9F1FF6CA1D4FF0D3872C8000000000000
          0000000000000000000F8B756CFF62616173524FB7F7808BDFFF717DDBFF6E7B
          DBFF7091DFFFB1D9F5FFB1D9F5FFB1D9F5FFABD3F1FF114690F5000000000000
          0000000000000000000E877169FF605E5D725654BAF78B95E2FF7B88DFFF7481
          DCFF5F6BD4FFE5C89DFFDEB782FFDEB783FFDEB786FFA57250F2000000000000
          0000000000010000000E846E67FF7C7877905757A7DF868DDDFF8B97E3FF7C88
          DFFF6471D5FFEDD6B3FFE6C99EFFE7CA9FFFD9B891FF896345C6000000000000
          0001000000061A151449836C64FFA49E9BC0524E6694686ACCFD9AA4E7FF959E
          E6FF727FDAFFEEDBBBFFE9D2AAFFEAD2AEFFC49772FC2D211845000000010000
          0006292220637E6861FB96837BFFB1A29BFC4F4541864F4C7BB46A6CD0FF8E95
          E1FF8D97E1FFEFDEC6FFE2C6A5FFC99E73FF5C46327F00000004000000042922
          1F5E86716AFFA89890FFD9D1CCFFCBBEB7FFA4968DEF554C46884E495E935756
          9DD45D5FBBEAB58E66E68D6D4FB532271C450000000300000001050404137462
          5CE8AC9A92FFD5CDC7FFF0EDEAFFD7CFC9FFC0B5AEFFA5948BFC827269C0584C
          4791302826660202020C00000003000000010000000000000000322A276A9481
          7AFFC2B6AEFFEEEBE8FFFBFAF9FFE0DBD7FFD2C9C3FFB1A29BFFAD998CFFA693
          87FF8B766FFF3027256C000000040000000000000000000000005A4B47B2B5A7
          9FFFE4DFD9FFF9F8F6FFF8F8F5FFF8F8F5FFF8F8F5FFF6F6F3FFE7E3DEFFD5CC
          C4FFA6958DFF564844B300000006000000000000000000000000816E67F4EEEC
          E8FFCCC4C0FFAB9D98FF79635CFF77615AFF77615AFF79635CFFAB9D98FFCCC4
          C0FFEBE8E4FF7A665FEF00000006000000000000000000000000433A3773A997
          91F9D8D1CBFFEDEBE7FFF5F5F2FFF8F8F5FFF8F8F5FFF5F4F1FFEAE7E3FFD2CA
          C4FF9E8E86F93D3331740000000300000000000000000000000000000003110E
          0E214A403C7E71625DBE7F6E68D598847DFF97837BFF7C6A64D56C5D58BF453C
          387F110F0E250000000300000001000000000000000000000000}
      end>
  end
  object cxStyleReposEstilosGrid: TcxStyleRepository
    Left = 232
    Top = 136
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxstylFont: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
    end
    object cxstylFontContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
    end
    object cxstylSexo: TcxStyle
      AssignedValues = [svBitmap]
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000010000
        000300000006000000080000000B0000000D0000000E0000000F0000000F0000
        00100000000F0000000E0000000C000000090000000500000001000000030310
        2141082852920A346DBD0C3A7AD30E4797FF0E4595FF0D4594FF0D4393FF0C43
        91FF0B428FFF083471D6072D63C105214A99020D1D4900000006000000071354
        A7FF267BCDFF2683D8FF2889DEFF2C96ECFF2994ECFF2792EAFF2490E9FF238E
        E8FF228DE8FF1D7ED7FF1B76CFFF176AC0FF0D4494FF0000000D000000061453
        A1E965BCF2FF4EB1F5FF37A3F2FF36A2F1FF359FF1FF339FF0FF319CF0FF309B
        EFFF2E98EEFF2D97EDFF339BEDFF389BE8FF0F4791EE0000000C000000030C2D
        567B307AC7FF60AEE6FF74CBFAFF4BACF1FF2E7CCAFF2565B4FF225EABFF266C
        B9FF3FA0E9FF56B5F5FF4098DEFF2169BAFF0929518800000006000000000000
        00030616293C134884B32D79C9FF5094D1FF67A0D6FF72A5D4FF5E89BFFF3C68
        ABFF3471B6FF246EBFFF10427DBA051528460000000700000001000000000000
        00000000000100000003051221321A5594CC5181B4FF325994FF2C538FFF315A
        97FF164D8DCD04111F3600000007000000030000000100000000000000000000
        0000000000000000000000000007121F336B4572ACFF659FD7FF629CD6FF3968
        A5FF0B192F6F0000000800000000000000000000000000000000000000000000
        000000000000000000010000000E2B466EC379AFDAFF90CCF5FF77B4E8FF5991
        CBFF1D3A66CA0000000E00000001000000000000000000000000000000000000
        0000000000000101010315253F8A36598DF8BAE1F6FFBDE6FCFF8CC9F2FF69A5
        DBFF21447AF70D19349501010103000000000000000000000000000000000000
        000000000000010101052A4B7DE2385F95FFD5F0FBFFD1EDFBFF94CFF3FF6DA7
        DDFF24467DFF172C59E201010105000000000000000000000000000000000000
        0000000000000101010538649EFA3C6CA8FFBAD7E9FF698EB7FF325A91FF2B50
        86FF28518FFE1D3869FA01010105000000000000000000000000000000000000
        00000000000001010104386498DC539CE0FF497BB7FF5390CDFF4E8FD3FF3C76
        C1FF396CB1FF223F72FF01010105000000000000000000000000000000000000
        000000000000010101021525374D4B84C2F17FB9E7FF86BDE9FF8DC4EEFF75A8
        DAFF5683B8FF1C3359BF01010104000000000000000000000000000000000000
        00000000000000000000010101020E16202B37618DB03D6B9FD24276B3FF3054
        85D51C3251930305071200000001000000000000000000000000000000000000
        0000000000000000000000000000000000010101010301010105010101050101
        0104010101030000000100000000000000000000000000000000}
    end
  end
  object cdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 208
  end
  object cdNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 256
  end
  object cdDatosExcel: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 160
  end
  object dsNomina: TDataSource
    DataSet = cdNomina
    Left = 424
    Top = 256
  end
  object dsTipoNomina: TDataSource
    DataSet = cdTipoNomina
    Left = 424
    Top = 208
  end
  object dsDatosExcel: TDataSource
    Left = 424
    Top = 160
  end
  object dxPopup1: TdxRibbonPopupMenu
    BarManager = Form2.dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxSubImprimir'
      end>
    UseOwnFont = False
    Left = 584
    Top = 248
  end
  object cdListaConceptos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 320
  end
  object mDeducciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 808
    Top = 152
  end
  object cdImss: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 808
    Top = 200
  end
  object mPercepciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 808
    Top = 248
  end
  object cdFirmantes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 320
  end
  object cdDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 304
  end
  object DxManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 576
    Top = 192
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object cdDesgloseGral: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 372
  end
  object cdCejas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 424
  end
  object dlgSaveExcel: TSaveDialog
    Left = 584
    Top = 304
  end
  object cdDesgloses: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 480
  end
  object cdFExcel: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 376
  end
end
