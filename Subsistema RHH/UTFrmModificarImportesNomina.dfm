object FrmModificarImportesNomina: TFrmModificarImportesNomina
  Left = 0
  Top = 0
  Caption = 'Mantenimiento a valores de N'#243'mina'
  ClientHeight = 391
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 65
    Align = alTop
    TabOrder = 0
    object DBText1: TDBText
      Left = 8
      Top = 1
      Width = 137
      Height = 17
      DataField = 'IdPersonal'
      DataSource = dsDetalle
    end
    object jvlbl1: TJvLabel
      Left = 387
      Top = 1
      Width = 93
      Height = 63
      Align = alRight
      Caption = 'Total Deducciones:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ExplicitHeight = 13
    end
    object lbl1: TLabel
      Left = 8
      Top = 46
      Width = 109
      Height = 13
      Caption = 'P E R C E P C I O N E S'
    end
    object lbl3: TLabel
      Left = 8
      Top = 24
      Width = 6
      Height = 13
      Caption = '*'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 309
    Width = 481
    Height = 82
    Align = alBottom
    TabOrder = 1
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 479
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Padding.Top = 4
      Padding.Right = 6
      TabOrder = 0
      object lblNeto: TJvLabel
        Left = 349
        Top = 4
        Width = 124
        Height = 28
        Align = alRight
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'lblNeto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Times New Roman'
        HotTrackFont.Style = []
        ExplicitLeft = 313
        ExplicitTop = -2
        ExplicitHeight = 16
      end
      object JvLabel3: TJvLabel
        Left = 285
        Top = 4
        Width = 64
        Height = 28
        Align = alRight
        Caption = 'Sueldo Neto:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        ExplicitHeight = 13
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 33
      Width = 479
      Height = 48
      Align = alClient
      BevelOuter = bvNone
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 1
      object Btn_Cancelar: TAdvGlowButton
        Left = 373
        Top = 4
        Width = 100
        Height = 40
        Align = alRight
        Caption = '&Cancelar'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = Btn_CancelarClick
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
      object Panel10: TPanel
        Left = 367
        Top = 4
        Width = 6
        Height = 40
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
      end
      object Btn_Aceptar: TAdvGlowButton
        Left = 267
        Top = 4
        Width = 100
        Height = 40
        Align = alRight
        Caption = '&Aceptar'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = Btn_AceptarClick
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
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 481
    Height = 244
    Align = alClient
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 1
      Top = 145
      Width = 479
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      Color = clMedGray
      ParentColor = False
      ExplicitLeft = 0
      ExplicitTop = 151
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 479
      Height = 144
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 117
        Width = 479
        Height = 27
        Align = alBottom
        BevelOuter = bvNone
        Padding.Top = 4
        Padding.Right = 6
        TabOrder = 0
        object lblPercepciones: TJvLabel
          Left = 349
          Top = 4
          Width = 124
          Height = 23
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'lblPercepciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Times New Roman'
          HotTrackFont.Style = []
          ExplicitLeft = 320
          ExplicitTop = 1
          ExplicitHeight = 16
        end
        object JvLabel2: TJvLabel
          Left = 253
          Top = 4
          Width = 96
          Height = 23
          Align = alRight
          Caption = 'Total Percepciones:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ExplicitHeight = 13
        end
        object lbl2: TLabel
          Left = 8
          Top = 8
          Width = 102
          Height = 13
          Caption = 'D E D U C C I O N E S'
        end
      end
      object DBPercepciones: TJvDBGrid
        Left = 0
        Top = 0
        Width = 479
        Height = 117
        Align = alClient
        DataSource = dsPerDetalle
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBPercepcionesDblClick
        AutoSizeColumns = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'CodigoConcepto'
            Title.Caption = 'C'#243'digo'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titulo'
            Title.Caption = 'T'#237'tulo'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 154
            Visible = True
          end>
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 148
      Width = 479
      Height = 95
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Panel7: TPanel
        Left = 0
        Top = 72
        Width = 479
        Height = 23
        Align = alBottom
        BevelOuter = bvNone
        Padding.Top = 4
        Padding.Right = 6
        TabOrder = 0
        object lblDeducciones: TJvLabel
          Left = 349
          Top = 4
          Width = 124
          Height = 19
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'JvLabel1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Times New Roman'
          HotTrackFont.Style = []
          ExplicitTop = 0
        end
        object JvLabel4: TJvLabel
          Left = 256
          Top = 4
          Width = 93
          Height = 19
          Align = alRight
          Caption = 'Total Deducciones:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ExplicitHeight = 13
        end
      end
      object DBDeducciones: TJvDBGrid
        Left = 0
        Top = 0
        Width = 479
        Height = 72
        Align = alClient
        DataSource = dsDedDetalle
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBPercepcionesDblClick
        AutoSizeColumns = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'CodigoConcepto'
            Title.Caption = 'C'#243'digo'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titulo'
            Title.Caption = 'T'#237'tulo'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 154
            Visible = True
          end>
      end
    end
  end
  object Panel_Captura1: TPanel
    Left = 25
    Top = 216
    Width = 417
    Height = 131
    TabOrder = 3
    Visible = False
    object lblCampo: TJvLabel
      Left = 8
      Top = 6
      Width = 45
      Height = 13
      Caption = 'lblCampo'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel5: TJvLabel
      Left = 18
      Top = 52
      Width = 64
      Height = 13
      Caption = 'Nuevo valor:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Nuevo: TJvDBCalcEdit
      Left = 88
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      DataField = 'Valor'
    end
    object Panel11: TPanel
      Left = 1
      Top = 89
      Width = 415
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 1
      object Btn_Ok1: TAdvGlowButton
        Left = 200
        Top = 0
        Width = 100
        Height = 37
        Align = alRight
        Caption = '&Ok'
        ImageIndex = 33
        Images = ClientModule1.ImagelistMenu
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = Btn_Ok1Click
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
      object Btn_Cancelar1: TAdvGlowButton
        Left = 311
        Top = 0
        Width = 100
        Height = 37
        Align = alRight
        Caption = '&Cancelar'
        ImageIndex = 61
        Images = ClientModule1.ImagelistMenu
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = Btn_Cancelar1Click
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
      object Panel12: TPanel
        Left = 300
        Top = 0
        Width = 11
        Height = 37
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
      end
    end
    object Panel13: TPanel
      Left = 8
      Top = 13
      Width = 400
      Height = 33
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 2
      object JvLabel1: TJvLabel
        Left = 7
        Top = 15
        Width = 67
        Height = 13
        Caption = 'Valor original:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object Original: TEdit
        Left = 80
        Top = 12
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Original'
      end
    end
  end
  object Panel_Captura2: TPanel
    Left = 24
    Top = 81
    Width = 417
    Height = 110
    TabOrder = 4
    Visible = False
    object Panel14: TPanel
      Left = 1
      Top = 1
      Width = 415
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblCampo2: TJvLabel
        Left = 8
        Top = 5
        Width = 45
        Height = 13
        Caption = 'lblCampo'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
    end
    object Panel15: TPanel
      Left = 1
      Top = 27
      Width = 415
      Height = 41
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Obrero: TJvDBGrid
        Left = 0
        Top = 0
        Width = 184
        Height = 41
        Align = alClient
        DataSource = dsObrero
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = ObreroDblClick
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'Titulo'
            Title.Caption = 'Cuota Obrero'
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 74
            Visible = True
          end>
      end
      object Patronal: TJvDBGrid
        Left = 184
        Top = 0
        Width = 231
        Height = 41
        Align = alRight
        DataSource = dsPatronal
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'Titulo'
            Title.Caption = 'Cuota Patronal'
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 75
            Visible = True
          end>
      end
    end
    object Panel16: TPanel
      Left = 1
      Top = 68
      Width = 415
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 2
      object Btn_Ok2: TAdvGlowButton
        Left = 200
        Top = 0
        Width = 100
        Height = 37
        Align = alRight
        Caption = '&Ok'
        ImageIndex = 33
        Images = ClientModule1.ImagelistMenu
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = Btn_Ok2Click
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
      object Btn_Cancelar2: TAdvGlowButton
        Left = 311
        Top = 0
        Width = 100
        Height = 37
        Align = alRight
        Caption = '&Cancelar'
        ImageIndex = 61
        Images = ClientModule1.ImagelistMenu
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
      object Panel17: TPanel
        Left = 300
        Top = 0
        Width = 11
        Height = 37
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
      end
    end
  end
  object dsDetalle: TDataSource
    Left = 384
    Top = 96
  end
  object cdPerDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeEdit = cdPerDetalleBeforeEdit
    AfterPost = cdPerDetalleAfterPost
    Left = 328
    Top = 16
    object cdPerDetalleCodigoConcepto: TStringField
      FieldName = 'CodigoConcepto'
      Size = 100
    end
    object cdPerDetalleIdGrupoConcepto: TIntegerField
      FieldName = 'IdGrupoConcepto'
    end
    object cdPerDetalleClave: TStringField
      FieldName = 'Clave'
      Size = 50
    end
    object cdPerDetalleTitulo: TStringField
      FieldName = 'Titulo'
      Size = 300
    end
    object cdPerDetalleDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 300
    end
    object cdPerDetalleModo: TStringField
      FieldName = 'Modo'
      Size = 50
    end
    object cdPerDetalleImprime: TStringField
      FieldName = 'Imprime'
      Size = 2
    end
    object cdPerDetalleValor: TStringField
      FieldName = 'Valor'
      Required = True
      Size = 500
    end
    object cdPerDetalleCargo: TStringField
      FieldName = 'Cargo'
      Size = 40
    end
  end
  object dsPerDetalle: TDataSource
    DataSet = cdPerDetalle
    Left = 392
    Top = 32
  end
  object cdDedDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeEdit = cdDedDetalleBeforeEdit
    AfterPost = cdDedDetalleAfterPost
    Left = 416
    Top = 88
    object StringField1: TStringField
      FieldName = 'CodigoConcepto'
      Size = 100
    end
    object IntegerField1: TIntegerField
      FieldName = 'IdGrupoConcepto'
    end
    object StringField2: TStringField
      FieldName = 'Clave'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'Titulo'
      Size = 300
    end
    object StringField4: TStringField
      FieldName = 'Descripcion'
      Size = 300
    end
    object StringField5: TStringField
      FieldName = 'Modo'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'Imprime'
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'Valor'
      Size = 500
    end
    object StringField8: TStringField
      FieldName = 'Cargo'
      Size = 40
    end
  end
  object dsDedDetalle: TDataSource
    DataSet = cdDedDetalle
    Left = 320
    Top = 80
  end
  object cdObrero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 72
    object cdObreroIdConcepto: TIntegerField
      FieldName = 'IdConcepto'
    end
    object cdObreroCodigoConcepto: TStringField
      FieldName = 'CodigoConcepto'
      Size = 100
    end
    object cdObreroTitulo: TStringField
      FieldName = 'Titulo'
      Size = 400
    end
    object cdObreroValor: TFloatField
      FieldName = 'Valor'
    end
    object cdObreroOrValor: TFloatField
      FieldName = 'OrValor'
    end
    object cdObreroCurValor: TFloatField
      FieldName = 'CurValor'
    end
  end
  object cdPatronal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 72
    object cdPatronalIdConcepto: TIntegerField
      FieldName = 'IdConcepto'
    end
    object cdPatronalCodigoConcepto: TStringField
      FieldName = 'CodigoConcepto'
      Size = 100
    end
    object cdPatronalTitulo: TStringField
      FieldName = 'Titulo'
      Size = 400
    end
    object cdPatronalValor: TFloatField
      FieldName = 'Valor'
    end
    object cdPatronalOrValor: TFloatField
      FieldName = 'OrValor'
    end
    object cdPatronalCurValor: TFloatField
      FieldName = 'CurValor'
    end
  end
  object dsObrero: TDataSource
    DataSet = cdObrero
    Left = 120
    Top = 72
  end
  object dsPatronal: TDataSource
    DataSet = cdPatronal
    Left = 168
    Top = 72
  end
end
