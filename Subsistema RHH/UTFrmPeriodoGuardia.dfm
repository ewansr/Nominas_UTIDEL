object FrmPeriodoGuardia: TFrmPeriodoGuardia
  Left = 0
  Top = 0
  Caption = 'Periodos de Guardia'
  ClientHeight = 670
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Informaci'#243'n General de la Guardia'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 106
    Width = 984
    object DBText1: TDBText
      Left = 12
      Top = 39
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'TituloGuardia'
      DataSource = dsGuardia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 12
      Top = 20
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'CodigoGuardia'
      DataSource = dsGuardia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel1: TJvLabel
      Left = 12
      Top = 58
      Width = 94
      Height = 13
      Caption = 'D'#237'as trabajados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
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
      HotTrackOptions.FrameColor = clBlack
    end
    object JvLabel2: TJvLabel
      Left = 188
      Top = 58
      Width = 85
      Height = 13
      Caption = 'D'#237'as descanso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
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
    end
    object DBText3: TDBText
      Left = 112
      Top = 58
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'Trabajados'
      DataSource = dsGuardia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 277
      Top = 58
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'Descanso'
      DataSource = dsGuardia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 185
      Top = 77
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'FechaInicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 270
      Top = 77
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'FechaTermino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object JvLabel3: TJvLabel
      Left = 12
      Top = 77
      Width = 168
      Height = 13
      Caption = 'Periodos de Guardia desde el:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
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
    end
    object JvLabel4: TJvLabel
      Left = 241
      Top = 77
      Width = 12
      Height = 13
      Caption = 'al'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4655623
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 106
    Width = 984
    Height = 564
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 104
      Top = 292
      Width = 338
      Height = 197
      TabOrder = 0
      Visible = False
      object Label1: TLabel
        Left = 78
        Top = 7
        Width = 54
        Height = 13
        Caption = 'D'#237'as extras'
      end
      object Label2: TLabel
        Left = 7
        Top = 33
        Width = 125
        Height = 13
        Caption = 'Fecha de Reprogramaci'#243'n'
      end
      object AdvGlowButton3: TAdvGlowButton
        Left = 235
        Top = 151
        Width = 73
        Height = 31
        Caption = '&Cancelar'
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = AdvGlowButton2Click
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
      object AdvGlowButton4: TAdvGlowButton
        Left = 156
        Top = 153
        Width = 73
        Height = 31
        Caption = '&Aceptar'
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = AdvGlowButton4Click
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
      object Fecharepro: TJvDatePickerEdit
        Left = 138
        Top = 31
        Width = 180
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 2
      end
      object Diasext: TEdit
        Left = 139
        Top = 4
        Width = 182
        Height = 21
        TabOrder = 3
        Text = '0'
        OnKeyPress = DiasextKeyPress
      end
      object pnl_Periodo: TPanel
        Left = 7
        Top = 57
        Width = 314
        Height = 72
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 4
        object JvLabel9: TJvLabel
          Left = 7
          Top = 0
          Width = 43
          Height = 13
          Caption = 'Guardia:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel10: TJvLabel
          Left = 7
          Top = 27
          Width = 42
          Height = 13
          Caption = 'Periodo:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object cbbGuardias: TcxExtLookupComboBox
          Left = 56
          Top = 0
          Properties.View = cxDBGridGuardias
          Properties.KeyFieldNames = 'IdGuardia'
          Properties.ListFieldItem = grdColumGuardia
          Properties.OnCloseUp = cbbGuardiasPropertiesCloseUp
          TabOrder = 0
          Width = 258
        end
        object cbbPeriodosG: TcxExtLookupComboBox
          Left = 55
          Top = 27
          Properties.View = cxDBGridPeriodos
          Properties.KeyFieldNames = 'iidguardia'
          Properties.ListFieldItem = grdColumLeyenda
          Properties.OnCloseUp = cbbPeriodosGPropertiesCloseUp
          TabOrder = 1
          Width = 258
        end
      end
    end
    object cxGBPersonalActivo: TcxGroupBox
      Left = 1
      Top = 421
      Align = alClient
      Caption = 'Personal Activo'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Height = 142
      Width = 982
      object GridPersonal: TNextGrid
        Left = 3
        Top = 15
        Width = 976
        Height = 117
        Align = alClient
        Options = [goHeader, goIndicator, goMultiSelect, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxTextColumn8: TNxTextColumn
          DefaultWidth = 107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'C'#243'digo Personal'
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 107
        end
        object NxTextColumn9: TNxTextColumn
          DefaultWidth = 189
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Nombre'
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 189
        end
        object NxTextColumn10: TNxTextColumn
          DefaultWidth = 112
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Rfc'
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 112
        end
        object NxTextColumn1: TNxTextColumn
          DefaultWidth = 111
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Curp'
          ParentFont = False
          Position = 3
          SortType = stAlphabetic
          Width = 111
        end
        object NxTextColumn2: TNxTextColumn
          DefaultWidth = 112
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Cargo'
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Width = 112
        end
        object NxTextColumn3: TNxTextColumn
          DefaultWidth = 91
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Infonavit'
          ParentFont = False
          Position = 5
          SortType = stAlphabetic
          Width = 91
        end
        object NxTextColumn4: TNxTextColumn
          DefaultWidth = 88
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Fecha Reingreso'
          ParentFont = False
          Position = 6
          SortType = stAlphabetic
          Width = 88
        end
        object NxTextColumn5: TNxTextColumn
          DefaultWidth = 67
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Fecha Baja'
          ParentFont = False
          Position = 7
          SortType = stAlphabetic
          Width = 67
        end
        object NxTextColumn6: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'IdPersonal'
          ParentFont = False
          Position = 8
          SortType = stAlphabetic
          Visible = False
        end
        object ColExtras: TNxCheckBoxColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Reprogramaci'#243'n'
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
          ParentFont = False
          Position = 9
          SortType = stBoolean
        end
      end
    end
    object cxGBPeriodos: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Periodos de Guardia'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Height = 420
      Width = 982
      object YP: TImage
        Left = 201
        Top = 15
        Width = 778
        Height = 395
        Align = alClient
        ExplicitLeft = 65
        ExplicitTop = 101
        ExplicitWidth = 761
        ExplicitHeight = 294
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 15
        Width = 198
        Height = 395
        Align = alLeft
        DataSource = dsPeriodo
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FechaInicio'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FechaTermino'
            Width = 106
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 608
    Top = 215
    Width = 361
    Height = 170
    TabOrder = 2
    Visible = False
    object JvLabel5: TJvLabel
      Left = 8
      Top = 75
      Width = 194
      Height = 13
      Caption = 'Generar autom'#225'ticamente los siguientes'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel6: TJvLabel
      Left = 255
      Top = 75
      Width = 43
      Height = 13
      Caption = 'Periodos'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel
      Left = 29
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Inicio:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel8: TJvLabel
      Left = 16
      Top = 41
      Width = 44
      Height = 13
      Caption = 'T'#233'rmino:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvSpinEdit1: TJvSpinEdit
      Left = 208
      Top = 72
      Width = 41
      Height = 21
      MaxValue = 50.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      TabOrder = 3
    end
    object FechaInicio: TJvDatePickerEdit
      Left = 66
      Top = 14
      Width = 92
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 0
      OnChange = FechaInicioChange
    end
    object FechaTermino: TJvDatePickerEdit
      Left = 66
      Top = 39
      Width = 92
      Height = 21
      AllowNoDate = True
      Checked = True
      Enabled = False
      TabOrder = 1
      OnChange = FechaTerminoChange
    end
    object cbTermino: TCheckBox
      Left = 176
      Top = 40
      Width = 153
      Height = 17
      Caption = 'Modificar fecha de T'#233'rmino'
      TabOrder = 2
      OnClick = cbTerminoClick
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 185
      Top = 114
      Width = 73
      Height = 31
      Caption = '&Aceptar'
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = AdvGlowButton1Click
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
    object AdvGlowButton2: TAdvGlowButton
      Left = 264
      Top = 114
      Width = 73
      Height = 31
      Caption = '&Cancelar'
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = AdvGlowButton2Click
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
  object dsGuardia: TDataSource
    Left = 336
    Top = 144
  end
  object cdPeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdPeriodoAfterScroll
    Left = 672
    Top = 120
  end
  object dsPeriodo: TDataSource
    DataSet = cdPeriodo
    Left = 824
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 232
    object AgregarPeriodo1: TMenuItem
      Caption = 'Agregar Periodo'
      OnClick = AgregarPeriodo1Click
    end
    object EditarPeriodo1: TMenuItem
      Caption = 'Editar Periodo'
      OnClick = EditarPeriodo1Click
    end
    object EliminarPeriodo1: TMenuItem
      Caption = 'Eliminar Periodo'
      OnClick = EliminarPeriodo1Click
    end
    object Reprogramacin1: TMenuItem
      Caption = 'Reprogramaci'#243'n'
      OnClick = Reprogramacin1Click
    end
  end
  object cdFecha: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 320
  end
  object cdTraslape: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 296
  end
  object cdPersonalimss: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 296
  end
  object dsPersonalimss: TDataSource
    DataSet = cdPersonalimss
    Left = 688
    Top = 279
  end
  object cdPdoGuardias: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 604
    Top = 304
  end
  object dsPdoGuardias: TDataSource
    DataSet = cdPdoGuardias
    Left = 688
    Top = 328
  end
  object dsGuardia1: TDataSource
    DataSet = cdGuardia1
    Left = 96
    Top = 320
  end
  object dsPeriodosG1: TDataSource
    DataSet = cdPeriodosG1
    Left = 192
    Top = 336
  end
  object cxGridRepos1: TcxGridViewRepository
    Left = 16
    Top = 160
    object cxDBGridGuardias: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsGuardia1
      DataController.KeyFieldNames = 'IdGuardia'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdColumGuardia: TcxGridDBColumn
        DataBinding.FieldName = 'TituloGuardia'
      end
      object grdColumTRabajados: TcxGridDBColumn
        DataBinding.FieldName = 'Trabajados'
      end
      object grdColumDescanso: TcxGridDBColumn
        DataBinding.FieldName = 'Descanso'
      end
    end
    object cxDBGridPeriodos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPeriodosG1
      DataController.KeyFieldNames = 'iidguardia'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdColumFechasubida: TcxGridDBColumn
        DataBinding.FieldName = 'dfechainicial'
        Width = 50
      end
      object grdColumFechaBajada: TcxGridDBColumn
        DataBinding.FieldName = 'dfechafinal'
        Width = 50
      end
      object grdColumConvenio: TcxGridDBColumn
        DataBinding.FieldName = 'snumerodeordenaux'
        Width = 40
      end
      object grdColumCOntrataro: TcxGridDBColumn
        Caption = 'snumerodeordenaux'
        DataBinding.FieldName = 'scontrato'
        Width = 30
      end
      object grdColumLeyenda: TcxGridDBColumn
        DataBinding.FieldName = 'leyenda'
        Width = 50
      end
    end
  end
  object cdGuardia1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 296
  end
  object cdPeriodosG1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 296
  end
end
