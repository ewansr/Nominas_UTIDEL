object FrmMachotes: TFrmMachotes
  Left = 0
  Top = 0
  Caption = 'Plantillas para C'#225'lculos de N'#243'mina'
  ClientHeight = 463
  ClientWidth = 847
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
  object CxGridMachotes: TcxGrid
    Left = 8
    Top = 89
    Width = 425
    Height = 374
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    object CxGridPlantillas: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = CxGridPlantillasCellClick
      DataController.DataSource = dsMachotes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      object CxColumnNombreMachote: TcxGridDBColumn
        Caption = 'Nombre Plantilla'
        DataBinding.FieldName = 'nombreMachote'
        Width = 370
      end
      object CxColumnAplica: TcxGridDBColumn
        Caption = 'Default'
        DataBinding.FieldName = 'Aplica'
        PropertiesClassName = 'TcxRadioGroupProperties'
        Properties.ImmediatePost = True
        Properties.Items = <>
        Width = 53
      end
    end
    object CxLevelNivel1: TcxGridLevel
      GridView = CxGridPlantillas
    end
  end
  object OLECntExcel: TOleContainer
    Left = 433
    Top = 89
    Width = 414
    Height = 374
    Align = alRight
    Caption = 'OLECntExcel'
    Color = clBtnFace
    DragMode = dmAutomatic
    TabOrder = 0
    OnStartDrag = OLECntExcelStartDrag
  end
  object cxGBFiltos: TcxGroupBox
    Left = 0
    Top = 53
    Align = alTop
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 4
    Height = 36
    Width = 847
    object CxLCbbTipoNomina: TcxLookupComboBox
      Left = 96
      Top = 8
      Properties.KeyFieldNames = 'IdTipoNomina'
      Properties.ListColumns = <
        item
          FieldName = 'Titulo'
        end>
      Properties.ListSource = dsTipoNomina
      TabOrder = 0
      Width = 273
    end
    object CxLbl1: TcxLabel
      Left = 13
      Top = 9
      Caption = 'Tipo de N'#243'mina'
      Transparent = True
    end
    object CxBtnFiltrar: TcxButton
      Left = 375
      Top = 5
      Width = 49
      Height = 25
      Caption = '&Buscar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 2
      OnClick = CxBtnFiltrarClick
    end
  end
  object CxSplitm: TcxSplitter
    Left = 0
    Top = 89
    Width = 8
    Height = 374
    Control = CxGridMachotes
  end
  object cxGBDatos: TcxGroupBox
    Left = 461
    Top = 8
    Caption = 'Datos de la nueva plantilla:'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 8
    Visible = False
    Height = 447
    Width = 378
    object CxDbTxtNombre: TcxDBTextEdit
      Left = 85
      Top = 24
      DataBinding.DataField = 'NombreMAchote'
      DataBinding.DataSource = dsMachoteUpt
      TabOrder = 0
      Width = 284
    end
    object CxBtnEdtPLantilla: TcxButtonEdit
      Left = 85
      Top = 51
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = CxBtnEdtPLantillaPropertiesButtonClick
      TabOrder = 1
      Width = 284
    end
    object CxLbl2: TcxLabel
      Left = 5
      Top = 25
      Caption = 'Nombre:'
      Transparent = True
    end
    object CxLbl3: TcxLabel
      Left = 5
      Top = 52
      Caption = 'Plantilla:'
      Transparent = True
    end
    object Panel1: TPanel
      Left = 3
      Top = 396
      Width = 372
      Height = 41
      Align = alBottom
      TabOrder = 4
      object CxBtnGuardar: TcxButton
        Left = 207
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Guardar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Blueprint'
        ModalResult = 1
        TabOrder = 0
        OnClick = CxBtnGuardarClick
      end
      object CxBtnCancelar: TcxButton
        Left = 288
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Cancelar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Blueprint'
        ModalResult = 2
        TabOrder = 1
        OnClick = CxBtnCancelarClick
      end
    end
    object OLECntDialog: TOleContainer
      AlignWithMargins = True
      Left = 6
      Top = 105
      Width = 366
      Height = 288
      Margins.Top = 90
      Align = alClient
      Caption = 'OLECntExcel'
      Color = clBtnFace
      DragCursor = crMultiDrag
      DragMode = dmAutomatic
      TabOrder = 5
      OnStartDrag = OLECntDialogStartDrag
    end
    object CxLCbbTipoNominaUpt: TcxLookupComboBox
      Left = 85
      Top = 78
      Properties.KeyFieldNames = 'IdTipoNomina'
      Properties.ListColumns = <
        item
          FieldName = 'Titulo'
        end>
      Properties.ListSource = dsTipoNomina
      TabOrder = 6
      Width = 284
    end
    object CxLblTipoNomina: TcxLabel
      Left = 5
      Top = 79
      Caption = 'Tipo N'#243'mina:'
      Transparent = True
    end
  end
  object DxBManagerMain: TdxBarManager
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
    ImageOptions.LargeImages = Form2.cxImageResIconosTodos24
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 816
    Top = 65528
    DockControlHeights = (
      0
      0
      53
      0)
    object DxBarMain: TdxBar
      Caption = 'MainTool'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 906
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBLbuttonAgregar'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonEditar'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonEliminar'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonActualizar'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonSalir'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object DxBLbuttonAgregar: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = DxBLbuttonAgregarClick
      AutoGrayScale = False
    end
    object DxBLbuttonEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Enabled = False
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 299
      OnClick = DxBLbuttonEditarClick
      AutoGrayScale = False
    end
    object DxBLbuttonEliminar: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Enabled = False
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeImageIndex = 315
      OnClick = DxBLbuttonEliminarClick
      AutoGrayScale = False
    end
    object DxBLbuttonActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 643
      OnClick = DxBLbuttonActualizarClick
      AutoGrayScale = False
    end
    object DxBLbuttonSalir: TdxBarLargeButton
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      LargeImageIndex = 722
      OnClick = DxBLbuttonSalirClick
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object CdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 296
  end
  object CdMachotes: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = CdMachotesAfterRefresh
    AfterPost = CdMachotesAfterRefresh
    AfterRefresh = CdMachotesAfterRefresh
    Left = 64
    Top = 240
  end
  object CdMachoteupt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 352
  end
  object dsTipoNomina: TDataSource
    DataSet = CdTipoNomina
    Left = 376
    Top = 320
  end
  object dsMachotes: TDataSource
    DataSet = CdMachotes
    Left = 320
    Top = 240
  end
  object dlgOpenExcel: TOpenDialog
    Filter = '*.xls|*.xls|*.xlsx|*.xlsx'
    Left = 480
    Top = 416
  end
  object dsMachoteUpt: TDataSource
    DataSet = CdMachoteupt
    Left = 744
  end
end
