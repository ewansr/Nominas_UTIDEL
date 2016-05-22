object FrmMaestroCuentasContables: TFrmMaestroCuentasContables
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo de Cuentas Contables'
  ClientHeight = 498
  ClientWidth = 857
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
  object cxGB1: TcxGroupBox
    Left = 0
    Top = 53
    Align = alClient
    Caption = 'Cat'#225'logo de cuentas.'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Silver'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
    TabOrder = 0
    Height = 445
    Width = 857
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 851
      Height = 420
      Align = alClient
      TabOrder = 0
      object CxGridCuenta: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCuentasContables
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object CxColumnCxGridCuentaColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Clave'
          Width = 97
        end
        object CxColumnCxGridCuentaColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Clase'
          Width = 133
        end
        object CxColumnCxGridCuentaColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 195
        end
        object CxColumnCxGridCuentaColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'TituloMoneda'
          Width = 166
        end
      end
      object CxGridSubCuenta: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCuentasContables
        DataController.DetailKeyFieldNames = 'IdClaveCC'
        DataController.MasterKeyFieldNames = 'IdMaestroCuentas'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object CxColumnDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'descripcion'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = CxGridCuenta
        object CxLevelGrid1Level2: TcxGridLevel
          GridView = CxGridSubCuenta
        end
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 53
    Align = alClient
    Caption = 'Cat'#225'logo de cuentas.'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 3
    Height = 445
    Width = 857
    object cxGrid2: TcxGrid
      Left = 3
      Top = 15
      Width = 851
      Height = 420
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blue'
      object CxGridHijo0: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.InfoPanel.DisplayMask = 'Registro No: [RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = CxGridHijo0CellClick
        DataController.DetailKeyFieldNames = 'IdClaveCC'
        DataController.KeyFieldNames = 'IdMaestroCuentas'
        DataController.MasterKeyFieldNames = 'IdMaestroCuentas'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Clave'
          Width = 97
        end
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Clase'
          Width = 133
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 195
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'TituloMoneda'
          Width = 166
        end
        object CxColumnNivel: TcxGridDBColumn
          Caption = 'Nivel'
          DataBinding.FieldName = 'NIvel'
        end
        object CxGridHijo0Column1: TcxGridDBColumn
          Caption = 'ClaveCC'
          DataBinding.FieldName = 'IdClaveCC'
        end
      end
      object CxGridHijo1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = CxGridHijo0CellClick
        DataController.DetailKeyFieldNames = 'IdClaveCC'
        DataController.KeyFieldNames = 'IdMaestroCuentas'
        DataController.MasterKeyFieldNames = 'IdMaestroCuentas'
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
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'descripcion'
        end
        object CxColumnCxGridHijo1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Nivel'
        end
        object CxColumnCxGridHijo1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'IdTipo'
        end
        object CxColumnCxGridHijo1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'IdClaveCC'
        end
      end
      object CxGridHijo2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = CxGridHijo0CellClick
        DataController.DetailKeyFieldNames = 'IdClaveCC'
        DataController.KeyFieldNames = 'IdMaestroCuentas'
        DataController.MasterKeyFieldNames = 'IdMaestroCuentas'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object CxGridHijo2Column1: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'descripcion'
        end
        object CxColumnCxGridHijo2Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Nivel'
        end
        object CxColumnCxGridHijo2Column3: TcxGridDBColumn
          DataBinding.FieldName = 'IdTipo'
        end
        object CxColumnCxGridHijo2Column4: TcxGridDBColumn
          DataBinding.FieldName = 'IdClaveCC'
        end
      end
      object CxGridHijo3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = CxGridHijo0CellClick
        DataController.DetailKeyFieldNames = 'IdClaveCC'
        DataController.KeyFieldNames = 'IdMaestroCuentas'
        DataController.MasterKeyFieldNames = 'IdMaestroCuentas'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object CxColumnCxGridHijo3Column1: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'descripcion'
        end
        object CxColumnCxGridHijo3Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Nivel'
        end
        object CxColumnCxGridHijo3Column3: TcxGridDBColumn
          DataBinding.FieldName = 'IdTipo'
        end
        object CxColumnCxGridHijo3Column4: TcxGridDBColumn
          DataBinding.FieldName = 'IdClaveCC'
        end
      end
      object CxGridHijo4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = CxGridHijo0CellClick
        DataController.DetailKeyFieldNames = 'IdClaveCC'
        DataController.KeyFieldNames = 'IdMaestroCuentas'
        DataController.MasterKeyFieldNames = 'IdMaestroCuentas'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object CxColumnCxGridHijo4Column1: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'descripcion'
        end
        object CxColumnCxGridHijo4Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Nivel'
        end
        object CxColumnCxGridHijo4Column3: TcxGridDBColumn
          DataBinding.FieldName = 'IdTipo'
        end
        object CxColumnCxGridHijo4Column4: TcxGridDBColumn
          DataBinding.FieldName = 'IdClaveCC'
        end
      end
      object CxGridHijo5: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = CxGridHijo0CellClick
        DataController.DetailKeyFieldNames = 'IdClaveCC'
        DataController.KeyFieldNames = 'IdMaestroCuentas'
        DataController.MasterKeyFieldNames = 'IdMaestroCuentas'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object CxColumnCxGridHijo5Column1: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'descripcion'
        end
        object CxColumnCxGridHijo5Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Nivel'
        end
        object CxColumnCxGridHijo5Column3: TcxGridDBColumn
          DataBinding.FieldName = 'IdTipo'
        end
        object CxColumnCxGridHijo5Column4: TcxGridDBColumn
          DataBinding.FieldName = 'IdClaveCC'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = CxGridHijo0
        object cxGridLevel2: TcxGridLevel
          GridView = CxGridHijo1
          object CxLevel3: TcxGridLevel
            GridView = CxGridHijo2
            object CxLevel4: TcxGridLevel
              GridView = CxGridHijo3
              object CxLevel5: TcxGridLevel
                GridView = CxGridHijo4
                object CxLevel6: TcxGridLevel
                  GridView = CxGridHijo5
                end
              end
            end
          end
        end
      end
    end
  end
  object cxGBDatos: TcxGroupBox
    Left = 160
    Top = 200
    Caption = 'Ingresar una cuenta contable:'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 6
    Visible = False
    Height = 209
    Width = 313
    object CxDbTxtClave: TcxDBTextEdit
      Left = 77
      Top = 48
      DataBinding.DataField = 'Clave'
      DataBinding.DataSource = dsUptCuenta
      TabOrder = 0
      Width = 225
    end
    object CxDbTxtDescripcion: TcxDBTextEdit
      Left = 77
      Top = 75
      DataBinding.DataField = 'Descripcion'
      DataBinding.DataSource = dsUptCuenta
      TabOrder = 1
      Width = 225
    end
    object CxDbCBoxClase: TcxDBComboBox
      Left = 77
      Top = 129
      DataBinding.DataField = 'Clase'
      DataBinding.DataSource = dsUptCuenta
      Properties.Items.Strings = (
        'REGISTRO'
        'CONTROL')
      TabOrder = 2
      Width = 225
    end
    object CxLblCuentaPadre: TcxLabel
      Left = 144
      Top = 25
      Caption = 'CUENTA PADRE O SUPERIOR'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object CxLblClave: TcxLabel
      Left = 13
      Top = 49
      Caption = 'Clave:'
      Style.TransparentBorder = True
      Transparent = True
    end
    object CxLblDescripcion: TcxLabel
      Left = 13
      Top = 76
      Caption = 'Descripci'#243'n:'
      Style.TransparentBorder = True
      Transparent = True
    end
    object CxLblMOneda: TcxLabel
      Left = 13
      Top = 103
      Caption = 'Moneda:'
      Style.TransparentBorder = True
      Transparent = True
    end
    object CxLblClase: TcxLabel
      Left = 13
      Top = 130
      Caption = 'Clase:'
      Style.TransparentBorder = True
      Transparent = True
    end
    object BtnGuardar: TcxButton
      Left = 149
      Top = 165
      Width = 75
      Height = 25
      Caption = '&Guardar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      ModalResult = 1
      TabOrder = 8
      OnClick = BtnGuardarClick
    end
    object BtnCancel: TcxButton
      Left = 230
      Top = 165
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      ModalResult = 2
      TabOrder = 9
    end
    object CxCbbMon: TcxDBLookupComboBox
      Left = 77
      Top = 102
      DataBinding.DataField = 'IdMoneda'
      DataBinding.DataSource = dsUptCuenta
      Properties.KeyFieldNames = 'IdMoneda'
      Properties.ListColumns = <
        item
          FieldName = 'LeyendaMoneda'
        end>
      Properties.ListSource = dsMoneda
      TabOrder = 10
      Width = 225
    end
    object CxLbl1: TcxLabel
      Left = 13
      Top = 25
      Caption = 'Cuenta Padre:'
      Style.TransparentBorder = True
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
    Left = 760
    Top = 104
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
      FloatLeft = 746
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
          ItemName = 'DxBarBtnSelect'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonSubcuenta'
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
          ItemName = 'DxBLbuttonRefresh'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonSalir'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object DxBLbuttonAgregar: TdxBarLargeButton
      Caption = '&Agregar '#13#10'Cuenta'
      Category = 0
      Hint = 'Agregar '#13#10'Cuenta'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = DxBLbuttonAgregarClick
      AutoGrayScale = False
    end
    object DxBLbuttonSubcuenta: TdxBarLargeButton
      Tag = 1
      Caption = 'Agregar '#13#10'Subcuenta'
      Category = 0
      Hint = 'Agregar '#13#10'Subcuenta'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = DxBLbuttonSubcuentaClick
      AutoGrayScale = False
    end
    object DxBLbuttonEliminar: TdxBarLargeButton
      Tag = 2
      Caption = 'Eliminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeImageIndex = 306
      OnClick = DxBLbuttonEliminarClick
      AutoGrayScale = False
    end
    object DxBLbuttonEditar: TdxBarLargeButton
      Tag = 3
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 299
      OnClick = DxBLbuttonEditarClick
      AutoGrayScale = False
    end
    object DxBLbuttonSalir: TdxBarLargeButton
      Tag = 4
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      LargeImageIndex = 701
      OnClick = DxBLbuttonSalirClick
      AutoGrayScale = False
    end
    object DxBLbuttonRefresh: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 637
      OnClick = DxBLbuttonRefreshClick
      AutoGrayScale = False
    end
    object DxBarBtnSelect: TdxBarLargeButton
      Caption = '&Seleccionar'
      Category = 0
      Hint = 'Seleccionar'
      Visible = ivNever
      LargeImageIndex = 57
      OnClick = DxBarBtnSelectClick
      AutoGrayScale = False
    end
  end
  object CdCuentasContables: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 176
  end
  object dsCuentasContables: TDataSource
    DataSet = CdCuentasContables
    Left = 656
    Top = 176
  end
  object dsSubCuentas: TDataSource
    DataSet = CdSubCuentas
    Left = 680
    Top = 256
  end
  object CdSubCuentas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 256
  end
  object CdMoneda: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 168
  end
  object dsMoneda: TDataSource
    DataSet = CdMoneda
    Left = 560
    Top = 168
  end
  object CduptCuenta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 768
    Top = 240
  end
  object dsUptCuenta: TDataSource
    DataSet = CduptCuenta
    Left = 776
    Top = 184
  end
end
