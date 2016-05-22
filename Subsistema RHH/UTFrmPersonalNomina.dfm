object FrmPersonalNomina: TFrmPersonalNomina
  Left = 0
  Top = 0
  Caption = 'Calcular N'#243'mina Seleccionando Personal'
  ClientHeight = 498
  ClientWidth = 1056
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Ctl3D = False
    PanelStyle.Active = True
    ParentCtl3D = False
    Style.BorderStyle = ebsNone
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    ExplicitWidth = 898
    ExplicitHeight = 382
    DesignSize = (
      1056
      433)
    Height = 433
    Width = 1056
    object Splitter1: TSplitter
      Left = 611
      Top = 57
      Height = 374
      Align = alRight
      Beveled = True
      Color = clBtnFace
      ParentColor = False
      ExplicitLeft = 456
      ExplicitTop = 6
      ExplicitHeight = 286
    end
    object Panel3: TcxGroupBox
      Left = 502
      Top = 57
      Align = alRight
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      ExplicitLeft = 344
      ExplicitHeight = 323
      Height = 374
      Width = 109
      object Button1: TcxButton
        Left = 6
        Top = 30
        Width = 100
        Height = 31
        Caption = 'Todos>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = cxImageRes1
        TabOrder = 0
        OnClick = Button1Click
      end
      object Btn_Agregar: TcxButton
        Left = 6
        Top = 67
        Width = 100
        Height = 31
        Caption = 'Agregar>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = cxImageRes1
        TabOrder = 1
        OnClick = Btn_AgregarClick
      end
      object Btn_Quitar: TcxButton
        Left = 6
        Top = 106
        Width = 100
        Height = 31
        Caption = '<Quitar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = cxImageRes1
        TabOrder = 2
        OnClick = Btn_QuitarClick
      end
      object Button4: TcxButton
        Left = 6
        Top = 143
        Width = 100
        Height = 31
        Caption = '<< Ninguno'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = cxImageRes1
        TabOrder = 3
        OnClick = Button4Click
      end
      object Btn_SeleccionarNomina: TcxButton
        Left = 6
        Top = 180
        Width = 100
        Height = 31
        Caption = 'Anterior'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = cxImageRes1
        TabOrder = 4
        Visible = False
        OnClick = Btn_SeleccionarNominaClick
      end
    end
    object cxGridSeleccionados: TcxGrid
      AlignWithMargins = True
      Left = 614
      Top = 57
      Width = 440
      Height = 374
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      RootLevelOptions.DetailTabsPosition = dtpTop
      ExplicitLeft = 616
      ExplicitTop = 58
      object cxGridDbSeleccionados: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridDbSeleccionadosNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 0
          end>
        Navigator.Buttons.Images = cxImageRes1
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount] Registros'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FilterBox.Visible = fvNever
        OnCellDblClick = cxGridDbSeleccionadosCellDblClick
        DataController.DataSource = dsSeleccionados
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Escribe aqu'#237' para filtrar los registros...'
        Images = cxImageRes1
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        Styles.Background = cxstyl1
        Styles.OnGetContentStyle = cxGridDbSeleccionadosStylesGetContentStyle
        object cxGridDbSeleccionadosIdPersonal1: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonal'
          Visible = False
        end
        object cxGridDbSeleccionadosCodigoPersonal1: TcxGridDBColumn
          Caption = 'C'#243'digo Personal'
          DataBinding.FieldName = 'CodigoPersonal'
          Width = 127
        end
        object cxGridDbSeleccionadosNombreCompleto1: TcxGridDBColumn
          Caption = 'Empleado'
          DataBinding.FieldName = 'NombreCompleto'
          Width = 296
        end
        object cxGridDbSeleccionadosRegPatIMSS1: TcxGridDBColumn
          DataBinding.FieldName = 'RegPatIMSS'
          Visible = False
          Width = 20
        end
        object cxGridDbSeleccionadosNumIMSS1: TcxGridDBColumn
          DataBinding.FieldName = 'NumIMSS'
          Visible = False
          Width = 80
        end
        object cxGridDbSeleccionadosDepartamento1: TcxGridDBColumn
          DataBinding.FieldName = 'Departamento'
          Width = 120
        end
        object cxGridDbSeleccionadosPuesto1: TcxGridDBColumn
          DataBinding.FieldName = 'Puesto'
          Width = 100
        end
        object cxGridDbSeleccionadosEstado1: TcxGridDBColumn
          DataBinding.FieldName = 'Estado'
          Visible = False
          Width = 40
        end
        object cxGridDbSeleccionadosColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'IdOrganizacion'
          Visible = False
        end
        object CxColumnEspecial2: TcxGridDBColumn
          DataBinding.FieldName = 'Especial'
        end
        object CxColumnPagado: TcxGridDBColumn
          DataBinding.FieldName = 'pagado'
          Visible = False
        end
      end
      object cxGridSeleccionadosLevel1: TcxGridLevel
        Caption = 'Listado de Empleados Seleccionados'
        GridView = cxGridDbSeleccionados
      end
    end
    object cxGridDetalle: TcxGrid
      AlignWithMargins = True
      Left = 9
      Top = 57
      Width = 493
      Height = 374
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BevelInner = bvNone
      PopupMenu = dxrbnpmn1
      TabOrder = 2
      LevelTabs.Style = 11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      RootLevelOptions.DetailTabsPosition = dtpTop
      ExplicitWidth = 335
      ExplicitHeight = 323
      object cxGridDbDetalle: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridDbDetalleNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 0
          end>
        Navigator.Buttons.Images = cxImageRes1
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount] Registros'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnCellDblClick = cxGridDbDetalleCellDblClick
        DataController.DataSource = dsDisponibles
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Escribe aqu'#237' para filtrar los registros...'
        OptionsBehavior.RecordScrollMode = rsmByRecord
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.Indicator = True
        Styles.Background = cxstyl1
        Styles.OnGetContentStyle = cxGridDbDetalleStylesGetContentStyle
        object cxGridDbDetalleIdOrganizacion1: TcxGridDBColumn
          DataBinding.FieldName = 'IdOrganizacion'
          Visible = False
        end
        object cxGridDbDetalleNombreOrganizacion1: TcxGridDBColumn
          DataBinding.FieldName = 'NombreOrganizacion'
          Visible = False
          GroupIndex = 0
          SortIndex = 0
          SortOrder = soAscending
        end
        object cxGridDbDetalleIdDepartamento1: TcxGridDBColumn
          DataBinding.FieldName = 'IdDepartamento'
          Visible = False
        end
        object cxGridDbDetalleIdPersonal1: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonal'
          Visible = False
        end
        object cxGridDbDetalleCodigoPersonal1: TcxGridDBColumn
          Caption = 'C'#243'digo Personal'
          DataBinding.FieldName = 'CodigoPersonal'
          Width = 122
        end
        object cxGridDbDetalleNombreCompleto1: TcxGridDBColumn
          Caption = 'Empleado'
          DataBinding.FieldName = 'NombreCompleto'
          Width = 243
        end
        object cxGridDbDetalleRegPatIMSS1: TcxGridDBColumn
          DataBinding.FieldName = 'RegPatIMSS'
          Visible = False
          Width = 80
        end
        object cxGridDbDetalleNumIMSS1: TcxGridDBColumn
          DataBinding.FieldName = 'NumIMSS'
          Visible = False
          Width = 80
        end
        object cxGridDbDetalleDepartamento1: TcxGridDBColumn
          DataBinding.FieldName = 'Departamento'
          Width = 213
        end
        object cxGridDbDetallePuesto1: TcxGridDBColumn
          DataBinding.FieldName = 'Puesto'
          Width = 123
        end
        object cxGridDbDetalleEstado1: TcxGridDBColumn
          DataBinding.FieldName = 'Estado'
          Visible = False
          Width = 40
        end
        object CxColumnEspecial: TcxGridDBColumn
          DataBinding.FieldName = 'Especial'
        end
      end
      object cxGridDetalleLevel1: TcxGridLevel
        Caption = 'Lista General de Empleados'
        GridView = cxGridDbDetalle
        Options.DetailTabsPosition = dtpTop
      end
    end
    object GroupBox1: TcxGroupBox
      Left = 2
      Top = 57
      Align = alLeft
      Caption = 'Informaci'#243'n de la Nomina'
      Style.BorderStyle = ebsUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 3
      Visible = False
      ExplicitHeight = 323
      Height = 374
      Width = 7
    end
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 2
      Align = alTop
      Caption = 'Informaci'#243'n General de la N'#243'mina'
      Ctl3D = False
      ParentCtl3D = False
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 4
      Height = 55
      Width = 1052
      object LblNomina: TcxLabel
        Left = 61
        Top = 20
        AutoSize = False
        Caption = '*'
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
        Height = 17
        Width = 199
      end
      object cxLabel2: TcxLabel
        Left = 5
        Top = 19
        Caption = 'N'#243'mina:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 8404992
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object lblInicio: TcxLabel
        Left = 308
        Top = 20
        AutoSize = False
        Caption = '*'
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
        Height = 17
        Width = 127
      end
      object cxLabel4: TcxLabel
        Left = 266
        Top = 20
        Caption = 'Inicio:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 8404992
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object LblTermino: TcxLabel
        Left = 498
        Top = 20
        AutoSize = False
        Caption = '*'
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
        Height = 17
        Width = 114
      end
      object cxLabel6: TcxLabel
        Left = 447
        Top = 20
        Caption = 'Finaliza:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 8404992
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
    end
    object cxLabel11: TcxLabel
      Left = 1004
      Top = 63
      Anchors = [akTop, akRight]
      Caption = 'Pagados'
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 991
      Top = 63
      Anchors = [akTop, akRight]
      Caption = '   '
      ParentColor = False
      Style.BorderColor = clBlack
      Style.BorderStyle = ebsFlat
      Style.Color = clPurple
    end
  end
  object Panel1: TcxGroupBox
    Left = 0
    Top = 433
    Align = alBottom
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    ExplicitTop = 382
    ExplicitWidth = 898
    Height = 46
    Width = 1056
    object Panel2: TcxGroupBox
      Left = 2
      Top = 2
      Align = alClient
      Ctl3D = False
      PanelStyle.Active = True
      ParentCtl3D = False
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      ExplicitWidth = 894
      Height = 42
      Width = 1052
      object BitBtn1: TcxButton
        AlignWithMargins = True
        Left = 861
        Top = 5
        Width = 90
        Height = 32
        Align = alRight
        Caption = 'Continuar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        ModalResult = 1
        OptionsImage.ImageIndex = 5
        OptionsImage.Images = cxImageRes1
        OptionsImage.NumGlyphs = 2
        TabOrder = 0
        OnClick = BitBtn1Click
        ExplicitLeft = 703
        ExplicitTop = 6
      end
      object BitBtn2: TcxButton
        AlignWithMargins = True
        Left = 957
        Top = 5
        Width = 90
        Height = 32
        Align = alRight
        Caption = 'Cancelar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        ModalResult = 2
        OptionsImage.ImageIndex = 6
        OptionsImage.Images = cxImageRes1
        OptionsImage.NumGlyphs = 2
        TabOrder = 1
        ExplicitLeft = 799
      end
    end
  end
  object StatusBar1: TdxStatusBar
    Left = 0
    Top = 479
    Width = 1056
    Height = 19
    Panels = <
      item
        Width = 200
      end>
    PaintStyle = stpsUseLookAndFeel
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 428
    ExplicitWidth = 898
  end
  object dsPersonalIncluido: TDataSource
    Left = 152
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 328
    Top = 280
    object ConsultarFichadePersonal1: TMenuItem
      Caption = 'Consultar Ficha de Personal'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ConsultarNminasdondeaparece1: TMenuItem
      Caption = 'Consultar N'#243'minas donde aparece'
    end
  end
  object cdNominaP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 216
  end
  object MemHExtras: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 360
    Top = 40
    object MemHExtrasIdPersonal: TIntegerField
      FieldName = 'IdPersonal'
    end
    object MemHExtrasPuesto: TStringField
      FieldName = 'Puesto'
      Size = 200
    end
    object MemHExtrasCodigoPersonal: TStringField
      FieldName = 'CodigoPersonal'
      Size = 100
    end
    object MemHExtrasNombre: TStringField
      FieldName = 'Nombre'
      Size = 300
    end
  end
  object MemHExtrasDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 248
    object IntegerField1: TIntegerField
      FieldName = 'IdPersonal'
    end
    object MemHExtrasDetalleIdPersonal_TE: TIntegerField
      FieldName = 'IdPersonal_TE'
    end
    object MemHExtrasDetalleFecha: TDateField
      FieldName = 'Fecha'
    end
    object MemHExtrasDetalleHoras: TFloatField
      FieldName = 'Horas'
    end
  end
  object DataSource1: TDataSource
    DataSet = MemHExtrasDetalle
    Left = 320
    Top = 200
  end
  object cdDisponibles: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 168
    object cdDisponiblesIdOrganizacion: TIntegerField
      FieldName = 'IdOrganizacion'
    end
    object cdDisponiblesNombreOrganizacion: TStringField
      FieldName = 'NombreOrganizacion'
      Size = 300
    end
    object cdDisponiblesIdDepartamento: TIntegerField
      FieldName = 'IdDepartamento'
    end
    object cdDisponiblesIdPersonal: TIntegerField
      FieldName = 'IdPersonal'
    end
    object cdDisponiblesCodigoPersonal: TStringField
      FieldName = 'CodigoPersonal'
      Size = 200
    end
    object cdDisponiblesNombreCompleto: TStringField
      FieldName = 'NombreCompleto'
      Size = 300
    end
    object cdDisponiblesRegPatIMSS: TStringField
      FieldName = 'RegPatIMSS'
    end
    object cdDisponiblesNumIMSS: TStringField
      FieldName = 'NumIMSS'
      Size = 15
    end
    object cdDisponiblesDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 200
    end
    object cdDisponiblesPuesto: TStringField
      FieldName = 'Puesto'
      Size = 200
    end
    object cdDisponiblesEstado: TStringField
      FieldName = 'Estado'
    end
    object strngfldDisponiblesEspecial: TStringField
      FieldName = 'Especial'
    end
    object intgrfldDisponiblesPagado: TIntegerField
      FieldName = 'Pagado'
    end
  end
  object cdSeleccionados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 328
    object cdSeleccionadosIdOrganizacion: TIntegerField
      FieldName = 'IdOrganizacion'
    end
    object cdSeleccionadosNombreOrganizacion: TStringField
      FieldName = 'NombreOrganizacion'
      Size = 300
    end
    object cdSeleccionadosIdDepartamento: TIntegerField
      FieldName = 'IdDepartamento'
    end
    object cdSeleccionadosIdPersonal: TIntegerField
      FieldName = 'IdPersonal'
    end
    object cdSeleccionadosCodigoPersonal: TStringField
      FieldName = 'CodigoPersonal'
      Size = 200
    end
    object cdSeleccionadosNombreCompleto: TStringField
      FieldName = 'NombreCompleto'
      Size = 300
    end
    object cdSeleccionadosRegPatIMSS: TStringField
      FieldName = 'RegPatIMSS'
    end
    object cdSeleccionadosNumIMSS: TStringField
      FieldName = 'NumIMSS'
      Size = 15
    end
    object cdSeleccionadosDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 200
    end
    object cdSeleccionadosPuesto: TStringField
      FieldName = 'Puesto'
      Size = 200
    end
    object cdSeleccionadosEstado: TStringField
      FieldName = 'Estado'
    end
    object strngfldSeleccionadosEspecial: TStringField
      FieldName = 'Especial'
      Size = 10
    end
    object intgrfldSeleccionadospagado: TIntegerField
      FieldName = 'pagado'
    end
  end
  object dsDisponibles: TDataSource
    DataSet = cdDisponibles
    Left = 272
    Top = 104
  end
  object dsSeleccionados: TDataSource
    DataSet = cdSeleccionados
    Left = 376
    Top = 144
  end
  object dxbrmngr1: TdxBarManager
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
    ImageOptions.Images = cxImageRes1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 856
    Top = 184
    DockControlHeights = (
      0
      0
      0
      0)
    object btn1: TdxBarLargeButton
      Caption = '&Consultar Ficha de Personal'
      Category = 0
      Hint = 'Consultar Ficha de Personal'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Consultar &Nominas donde aparece'
      Category = 0
      Hint = 'Consultar Nominas donde aparece'
      Visible = ivAlways
    end
  end
  object dxrbnpmn1: TdxRibbonPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 424
    Top = 296
  end
  object style1: TcxStyleRepository
    Left = 216
    Top = 296
    PixelsPerInch = 96
    object cxstyleItalicGray: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      TextColor = clGray
    end
    object cxstyleNormalRed: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxstylBoldBlack: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxImageRes1: TcxImageList
    FormatVersion = 1
    DesignInfo = 23068840
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000110000001600000006000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000001C4D80A9FF4C81A9FF00000037000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000001C4E82A9FF28A1F7FF32B1FFFF4791C4FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000001C4E82A9FF28A0F6FF2BADFFFFD4F4FFFF4594C9FF000000000000
          000000000000000000050000001F0000003E0000004300000042000000310000
          00235281A7FF28A0F7FF2BADFFFFD1F2FFFF418EC3FF00000000000000000000
          00000000000C030608484C86B3FF7FC9EEFF8BDAFEFF8CDBFFFF6EB2D8FF3E7C
          ACFD259EF4FF28A9FFFFD1F2FFFF418EC3FF0000000000000000000000000000
          00051424307486CDF0FF85D9FFFFE7C896FFFFC472FFFFC370FFB5CFCBFF8EDB
          FFFF487FA8FFD6F5FFFF418CC1FF000000000000000000000000000000000000
          002174B7DCFF99D9F1FFF0BB73FFECC885FFF1D592FFF6DE99FFF9E39BFFF4B8
          6FFF96DEFFFF428ABAFD00000005000000000000000000000000000000002D57
          77BC9CE2FFFFEAAE65FFEAC68DFFEECC87FFB57B31FFFEEEA9FFFDEEA7FFFAE3
          9CFFB5CCC7FF79BADEFF00000014000000000000000000000000000000004084
          B6FF9CE6FFFFE2AA65FFF3D9AFFFF9DFAAFFB27C38FFFFF4AEFFFFEEA9FFF7DF
          9AFFDF9F55FFA9EAFFFF00000016000000000000000000000000000000003E85
          B9FFA3EAFFFFDFA760FFF9E5C8FF9C6B2FFFAB7A3BFFB27D38FFB57B31FFF2D6
          92FFD0954FFFAFECFFFF00000016000000000000000000000000000000003C84
          B5F7AFEEFFFFD59A54FFF8EBDAFFF5E2C3FF9C6B2FFFF9DFAAFFEECC87FFEECA
          86FFBDA376FFA1DCF4FF0000000D000000000000000000000000000000000811
          172CBFF3FFFFB59463FFF3D8BAFFF8EBDAFFF9E5C8FFF3D9AFFFEDC990FFD3A4
          60FFB5F2FFFF4C96C8FF00000001000000000000000000000000000000000000
          00004693C7FFC0F5FFFFAD8E5DFFCF9550FFE2A962FFE5AD67FFB88645FFB9E6
          F2FFAEE2F6FF0306091400000000000000000000000000000000000000000000
          0000000000013B8DC6FFCEFAFFFFC5F9FFFFC3F9FFFFC3F9FFFFC8F8FFFF8DCB
          E8FF1228374C0000000000000000000000000000000000000000000000000000
          000000000000000000000D1E29383A8AC2F63A90CAFF3B90CBFF2A6086AC0000
          0001000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000C000000120000001400000014000000140000001400000014000000150000
          0015000000140000000D000000030000000000000000000000000000000B7A5B
          50C3AB7F6FFFAA7E6FFFAB7D6FFFAA7D6EFFAA7D6EFFA97C6DFFA97C6DFFAA7C
          6DFFA87B6CFF79584DC50000000D00000000000000000000000000000010AD82
          72FFFBF7F4FFFAF6F4FFFBF6F4FFFBF6F3FFFBF5F3FFFAF5F2FFFAF5F2FFFAF4
          F1FFFAF4F1FFAA7C6EFF0000001300000000000000000000000000000011AF84
          75FFFCF8F7FFF6EEE8FFF7EDE8FFF6EDE8FFF6EDE7FFF6EDE7FFF6ECE7FFF6EC
          E7FFFBF5F3FFAB7E6FFF0000001300000000000000000000000000000010B187
          78FFFDFAF8FFF8EFEAFFC39C8CFFC29B8AFFC29B89FFC29A89FFC19989FFC199
          88FFECE2DEFFDDD3D0FF000000260000000E00000003000000000000000FB389
          7BFFFDFBFAFFF8F1EDFFF8F0EDFFF8F0ECFFF7F0ECFFF7F0ECFFF7EFEBFFF7EF
          EBFFF2F1F1FF528771FF267255FF1A503BC50000000D000000000000000EB68D
          7EFFFEFCFCFFF9F2EFFFC6A191FFC5A090FFC5A090FFC59F8FFFEEE5E0FFE7DE
          D9FFD6CDC9FF2A7C5EFF27D596FF287758FF0000001F0000000C0000000DB890
          81FFFEFDFDFFFAF5F2FFF9F4F1FFF9F4F1FFF9F3F1FFF9F3F0FFF5F4F3FF60A0
          89FF2E8767FF2D8364FF33DBA0FF2B7D5FFF297B5DFF1D5641C20000000DBA93
          85FFFEFEFEFFFAF6F4FF00A361FF00A060FF009C5BFF009758FFB8DBCCFF3291
          70FF98F1D6FF41E2ADFF40E3AAFF3DE1AAFF3CE0A9FF2B7F61FF0000000CBC97
          88FFFFFEFEFFFBF8F6FFFBF7F6FFFAF7F6FFFBF7F5FFFAF7F4FFF9F8F7FF64AD
          94FF349674FF329372FF4AE8B6FF308D6CFF2F8A6AFF22634CC40000000BC099
          8BFFFFFFFFFFFCF8F8FFCDAD9DFFCCAC9DFFCCAB9CFFCBAB9BFFF1E9E5FFEEE5
          E1FFE9E0DCFF369A78FFB9F8E7FF339473FF0000000D000000050000000AC19D
          8EFFFFFFFFFFFCFAF9FFFCFAF9FFFCFAF8FFFCF9F8FFFBFAF8FFFCF9F8FFFBF9
          F8FFFCFCFCFF65B095FF379E7CFF28735AC0000000040000000000000009C4A0
          91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEEE4E1FF0000000D000000020000000100000000000000069379
          6EC3C5A294FFC5A294FFC4A193FFC4A092FFC3A092FFC39F91FFC29F90FFC29E
          90FFC29D8FFF8F7469C400000007000000000000000000000000000000010000
          00050000000800000009000000090000000900000009000000090000000A0000
          000A000000090000000700000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000003000000080000000C0000
          000E0000000D0000000800000003000000010000000000000000000000020000
          000A00000010000000110000001300000018050E0A3F16412DAC216043EC256A
          48FF216141ED163F2BAC050E09390000000900000001000000000000000A7B50
          43C2AB705CFFAB6F5AFFC29A8CFFA2A191FF307554FF2D9D71FF24BA82FF23CB
          8EFF23BA82FF25986BFF2C7050FD0A1E145C00000006000000000000000EAD73
          5FFFFDFBF9FFFAF4F2FFDCE4DEFF388260FF40C397FF28CD92FF40956DFF487E
          5DFF3F946CFF26CD91FF27BA84FF297150F5050F0A2F000000030000000EB077
          62FFFDFBFAFFF6EFEBFF80AD96FF54B593FF36D29CFF2ECE95FF4A8362FFFFFF
          FFFF4A8161FF2CD096FF2CCF95FF31A87AFF1B4833A1000000060000000CB079
          66FFFDFBFBFFF7F2EFFF499371FF6CDBBBFF469D76FF4D8865FF4D8765FFF6F1
          EBFF4D8665FF4D8664FF459B73FF33C892FF2B7453E7000000080000000BB37C
          69FFFEFCFBFFF8F4F1FF3C926DFF81E9CCFF508C6AFFEADBD3FFF8F3EFFFF9F3
          EFFFF8F3EFFFFFFFFFFF4E8968FF3FD5A3FF348662FA000000080000000AB67F
          6CFFFEFDFCFFF8F3F1FF4FA07DFFB1E9D8FF6CA98CFF528F6EFF528F6DFFFAF5
          F3FF528F6CFF518E6BFF5EA583FF76DCBBFF338260E70000000700000009B983
          71FFFEFDFCFFFAF5F2FF8CC2AAFF94CBB5FFE2FAF5FFC5F5E9FF539371FFECDE
          D8FF539270FFABF0DDFFB0F1DEFF84C6ADFF2358419A0000000400000007BC88
          77FFFEFEFDFFFBF4F0FFE4ECE6FF4EAA84FFC8E7DBFFEEFDFAFF7AB095FF5696
          74FF74AF94FFD9F9F2FFBEE5D8FF3E9873F208130E250000000100000006BF8C
          7AFFFEFEFDFFFBF6F1FFFBF6F4FFC9E2D5FF4FAD85FF93CEB7FFD2ECE3FFF3FC
          FBFFD2ECE3FF92CDB6FF4DA881FF122D2251000000020000000000000005C18F
          7FFFFEFEFEFFFAF6F3FFFAF5F3FFFAF7F4FFE5EEE7FF90CAB1FF5BB48FFF46AB
          82FF5BB48EFF8EC9B1FFC9BDB1FF00000008000000000000000000000004C493
          82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFBF6F3FFFCF8F6FFFCF7F6FFFCF9
          F7FFFBF8F5FFFCFBFAFFC49587FF00000005000000000000000000000003C799
          85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFDFCFAFFC28F7FFF00000004000000000000000000000002C99A
          89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFC49382FF000000030000000000000000000000019774
          67BECA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
          87FFC79887FFC89886FF927063BF000000020000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000070000
          000D0000000F0000000D00000007000000020000000000000000000000020000
          00090000000F00000010000000110000001100000014020101214C28168E8648
          27DAA55831FF854627DB4A28158C020100150000000400000000000000098B63
          56C1C18977FFC08976FFC08875FFC59584FFCFAFA3FFB0704EFFC07C4AFFDEA6
          69FFEDBC78FFDEA76AFFBF7C4BFF844728D406030217000000020000000CC38E
          79FFFDFBFAFFFBF7F4FFFCF6F3FFF7F4F1FFC8A28CFFC48656FFEDBC7CFFEEBF
          7FFFEEC183FFEFC383FFEFC181FFC38657FF58321C93000000070000000DC591
          7EFFFDFCFBFFF8EFE8FFF7EEE8FFF2EDE9FFBA7D57FFE4B377FFF5D9ABFFF5DA
          AFFFF6DCB2FFF6DEB3FFF6DBB2FFE5B77FFF995C36E30000000B0000000CC794
          81FFFEFCFBFFF9F0EAFFF8F0EAFFF3EFECFFBC784FFFF1CE95FF99541FFF944E
          1BFF8E4A16FF894512FF85400EFFF5DBAEFFB16F45FA0000000B0000000BC997
          86FFFEFDFCFFF9F2EDFFF9F2EDFFF5F0EDFFC68C65FFEFDDB7FFF3CF98FFF5D5
          9FFFF5D7A4FFF6DAA5FFF5D7A4FFEFDDB8FFA46942E2000000080000000ACB9C
          8BFFFEFDFDFFFAF3EFFFFAF4EEFFF8F3F0FFDBB9A4FFD8AE86FFF9F3D1FFF8E1
          B5FFF9DFAFFFF9E6BCFFFAF6D5FFD8AF89FF5E3E29850000000400000009CFA0
          8DFFFEFEFDFFFBF5F1FFFBF5F0FFFAF4F1FFF6F2EFFFD5A785FFDCB48DFFF2E9
          CAFFFAFDE1FFF2E9CAFFDCB38CFF996B4AC80202010A0000000100000009D0A3
          93FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF6F2FFF8F4F0FFE4C9B4FFDAAF
          8AFFD8A578FFDBAE8AFFD7B098FF02020117000000010000000000000008D3A8
          97FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF5F4FFFAF6F3FFFAF6
          F3FFF8F6F3FFFBF9F8FFDAB9ADFF0000000E000000000000000000000007D3AB
          9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6
          F2FFFBF6F1FFFDFBF9FFD0A493FF0000000C000000000000000000000006D8AE
          9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7F5FFFBF7
          F4FFFCF7F3FFFDFCFAFFD2A897FF0000000B000000000000000000000006D8B0
          A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8F6FFFBF7
          F6FFFCF7F5FFFEFCFCFFD5AA9AFF0000000B000000000000000000000005D9B3
          A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFE
          FEFFFEFEFEFFFEFEFDFFD7AE9EFF00000009000000000000000000000003A386
          7AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3A2FFD9B2
          A2FFD8B2A2FFD8B1A1FFA08277C2000000060000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          0007000000060000000300000006000000080000000400000001000000000000
          00000000000000000000000000000000000000000000000000030B082C4D2619
          99EA110A58A2010003160F0855A3160C7EEA0603244F00000004000000000000
          0001000000060000000A0000000B0000000B0000000B000000112E23A2EA6F85
          EAFF4150CBFF1F1689E63B48C9FF5C74E4FF180E82E700000007000000000000
          000680574CBDB37B69FFB37A68FFB37A68FFB27968FFDCC6BEFF756BC0FF7780
          DDFF6D8BEFFF5872E5FF6381EDFF6972D8FF1A13659F00000005000000000000
          0008B57D6BFFFBF7F3FFFBF6F3FFFBF6F3FFFBF5F2FFFAF5F3FFEFECEFFF4D46
          BDFF6A85EBFF7494F2FF6079E7FF262094E40101041300000002000000000000
          0008B67F6DFFFCF8F5FFF8EFECFFF7EEEAFFF7EEEAFFF9F5F3FF807DD4FF6B7E
          E2FF93B0F6FFA0B3F2FF8AA6F4FF5D6EDBFF1C186AA000000004000000000000
          0008B8826FFFFCF9F6FFCDA493FFCCA393FFCCA393FFEEE3DFFF615ED6FFB1C3
          F6FF8D99EAFF5F5DD2FF8995E7FFA6B8F3FF3B35AEE300000004000000000000
          0007BA8473FFFDF9F8FFF8F1EEFFF8F0EDFFF8F0ECFFFAF5F3FFCECDEEFF6564
          DEFF9291E2FFF2F1F3FF8982D3FF4340BCE71212334600000002000000000000
          0007BB8776FFFDFBF9FFCEA898FFCEA796FFCEA695FFCDA695FFE1CAC0FFEFE5
          E1FFE7D6D0FFFCF9F8FFE3CFC9FF0000000C0000000200000000000000000000
          0006BD8A78FFFDFBFAFFF9F2F0FFF9F2F0FFF8F2EFFFF9F1EFFFF8F1EEFFF9F1
          EEFFF8F0EDFFFDFAF8FFBB8675FF000000080000000000000000000000000000
          0006BF8D7BFFFEFCFBFFD1AE9DFFD0AC9CFFD0AB9BFFCFAA99FFCEA999FFCEA8
          97FFC69C8AFFFDFBF9FFBD8978FF000000080000000000000000000000000000
          0005C39381FFFEFDFDFFFBF6F4FFFBF5F4FFFBF4F2FFFAF4F2FFFAF4F1FFF9F3
          F1FFFAF3F1FFFEFCFBFFC18F7EFF000000070000000000000000000000000000
          0004C69887FFFFFEFEFFD5B2A3FFD4B2A2FFD4B1A0FFD3AF9FFFD2AD9DFFD1AD
          9CFFC9A090FFFEFDFDFFC59684FF000000060000000000000000000000000000
          0003C99B8AFFFFFEFEFFFBF7F6FFFCF7F6FFFCF6F5FFFBF6F5FFFCF6F5FFFBF5
          F5FFFBF6F4FFFFFEFEFFC79887FF000000050000000000000000000000000000
          0003CA9E8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFC99B8AFF000000040000000000000000000000000000
          00029B7F74BFD0AB9CFFD0AB9CFFD0AA9CFFCFA99BFFCFA99AFFCFA999FFCFA8
          99FFCEA899FFCFA898FF997B71C0000000030000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000C0000001000000012000000110000
          000E000000080000000200000000000000000000000000000000000000000000
          000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
          3AD20F2F21840001011500000005000000010000000000000000000000000000
          0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
          80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
          0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
          96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
          3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
          99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
          66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
          A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
          8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
          A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
          A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
          4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
          B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
          8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
          BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
          E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
          B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
          76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
          7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
          7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
          46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
          C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
          0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
          DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
          0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
          C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
          000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
          56B00E3226560000000600000002000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000B000000120000001300000013000000140000001400000014000000140000
          0014000000140000001500000015000000140000000D000000030000000B1C11
          6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
          93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
          9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
          D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
          A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
          BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
          A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
          CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
          ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
          B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
          B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
          BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
          C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
          D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
          D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
          A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
          DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
          BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
          DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
          F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
          A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
          DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
          0002000000030000000400000004000000040000000400000004000000040000
          0004000000040000000400000005000000050000000300000001}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090000
          000E000000100000001000000010000000100000001000000011000000110000
          001100000011000000100000000B00000003000000000000000017417CCA2159
          A8FF225BAAFF225AAAFF2159A9FF2158A9FF2057A8FF2057A7FF2055A7FF1F55
          A7FF1F54A6FF1E53A6FF1E52A4FF1A458DE303080F2900000002225DA8FF2F6B
          B0FF579AD3FF71BEECFF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
          E1FF389BE0FF369AE0FF3498DFFF2875C1FF0F284E8B000000082868B1FF4884
          BFFF4489C7FF9CD8F5FF63B9EBFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
          E5FF47A6E4FF44A4E4FF41A2E3FF3991D7FF1B4787D50000000D2C6FB7FF6CA7
          D2FF3C87C6FFA0D4EFFF94D5F4FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
          EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2967B4FF040B142F2F75BCFF8FC7
          E6FF4FA0D5FF7FBCE2FFC3EEFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
          EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF408ACAFF112C4E81327CBFFFAFE3
          F5FF75C8EDFF55A3D7FFD2F5FDFFD4F6FEFFD2F4FEFFCDF3FDFFC8F1FDFFC2EE
          FCFFBCEBFBFFB5E7FAFFADE3F9FFA5DFF8FF82C0E6FF1E5189CB3582C4FFC7F5
          FEFF97E5FCFF62BBE7FF4AA0D6FF4A9DD5FF91C3E3FF8DBCDCFF8FBDE0FF5FA3
          D6FF4394CFFF4292CEFF2D73BAFF2D72B9FF2C71B8FF2765A7EA3688C8FFCDF7
          FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFFBBE6F3FFA68E78FFA6BABDFFB2E1
          F3FFB9E6F7FFB3E0F0FF8EADD1FF000000180000000B00000007398ECBFFD0F8
          FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFD3EDF3FFAD744CFF9A6841FFBEB8
          ADFFD1E1E3FF975D32FF8A6E59FF0C07032E00000007000000013B92CEFFD3F9
          FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF9CC3E0FFAD886CFFDBB891FFB07F
          53FF9B643AFF9F663DFFDBB67EFF8E5D33EF311D0F67000000063D97D1FFE2FC
          FEFFE2FCFEFFE1FCFEFFD3F3FAFF428FC1EC0B111523382A1E58C49870FFEAD2
          B1FFFCF0D0FFFEF2D3FFFEE9BBFFF7E6C5FFA36C43FF000000082E739DBF3E9A
          D3FF3E99D3FF3E99D3FF3E97D2FF143245590000000200000003382C204E9877
          58CABF946DFAC3966DFFEAD3B4FFB7906CEE3D2E215B00000003000000020000
          0003000000030000000400000003000000020000000000000000000000010000
          000200000005CAA27AFF846A50AC110D0A1B0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000000000000000000000}
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 952
    Top = 216
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxstylPersonalEspecial: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
    object cxstylPersonalEspecialPagado: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      TextColor = clGrayText
    end
    object cxstylPagado: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
  object cxStyleReposEstilosGrid: TcxStyleRepository
    Left = 64
    Top = 192
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
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
end
