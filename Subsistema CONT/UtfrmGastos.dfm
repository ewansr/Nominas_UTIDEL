object FrmGastos: TFrmGastos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tesorerias Gastos'
  ClientHeight = 323
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TcxGroupBox
    Left = 0
    Top = 51
    Align = alTop
    Caption = 'Detalles del Gasto'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    OnDblClick = Panel1DblClick
    Height = 263
    Width = 877
    object editReferencia: TcxDBTextEdit
      Left = 85
      Top = 63
      DataBinding.DataField = 'sReferencia'
      DataBinding.DataSource = dsGastos
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Width = 233
    end
    object EditImporte: TcxDBTextEdit
      Left = 399
      Top = 90
      DataBinding.DataField = 'dImporteTotal'
      DataBinding.DataSource = dsGastos
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 8
      Width = 209
    end
    object editIva: TcxDBTextEdit
      Left = 399
      Top = 66
      DataBinding.DataField = 'dIva'
      DataBinding.DataSource = dsGastos
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 6
      Width = 57
    end
    object editNoPoliza: TcxDBTextEdit
      Left = 531
      Top = 66
      DataBinding.DataField = 'sPoliza'
      DataBinding.DataSource = dsGastos
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 7
      Width = 77
    end
    object cbbCargo: TcxDBExtLookupComboBox
      Left = 82
      Top = 18
      DataBinding.DataField = 'sIdArea'
      DataBinding.DataSource = dsGastos
      Properties.View = cxDbGridCargo
      Properties.KeyFieldNames = 'sIdArea'
      Properties.ListFieldItem = grdColumDbGridCargoColumn1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Width = 233
    end
    object cbbCuentaBancaria: TcxDBExtLookupComboBox
      Left = 82
      Top = 42
      DataBinding.DataField = 'sIdNumeroCuenta'
      DataBinding.DataSource = dsGastos
      Properties.View = cxDbGridCuentaBancaria
      Properties.KeyFieldNames = 'sidNUmerocuenta'
      Properties.ListFieldItem = grdColumDbGridCuentaBancariaColumn1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Width = 233
    end
    object cbbNoOrden: TcxDBExtLookupComboBox
      Left = 399
      Top = 42
      DataBinding.DataField = 'sNumeroOrden'
      DataBinding.DataSource = dsGastos
      Properties.View = cxDbGridOrden
      Properties.KeyFieldNames = 'sIdFolio'
      Properties.ListFieldItem = grdColumDbGridOrdenColumn1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 5
      Width = 209
    end
    object lbl2: TcxLabel
      Left = 10
      Top = 19
      Caption = 'Cargo:'
      Transparent = True
    end
    object lbl3: TcxLabel
      Left = 10
      Top = 43
      Caption = 'Cta Bancaria:'
      Transparent = True
    end
    object lbl4: TcxLabel
      Left = 10
      Top = 67
      Caption = 'Referencia:'
      Transparent = True
    end
    object lbl5: TcxLabel
      Left = 10
      Top = 91
      Caption = 'Beneficiario:'
      Transparent = True
    end
    object lbl6: TcxLabel
      Left = 347
      Top = 43
      Caption = 'Orden:'
      Transparent = True
    end
    object lbl7: TcxLabel
      Left = 347
      Top = 67
      Caption = 'I.V.A.:'
      Transparent = True
    end
    object lbl8: TcxLabel
      Left = 470
      Top = 69
      Caption = 'No. P'#243'liza:'
      Transparent = True
    end
    object lbl9: TcxLabel
      Left = 347
      Top = 91
      Caption = 'Importe:'
      Transparent = True
    end
    object cxdbmDescripcion: TcxDBMemo
      Left = 82
      Top = 115
      DataBinding.DataField = 'mDescripcion'
      DataBinding.DataSource = dsGastos
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 9
      Height = 126
      Width = 526
    end
    object lbl10: TcxLabel
      Left = 10
      Top = 115
      Caption = 'Descripci'#243'n:'
      Transparent = True
    end
    object lbl11: TcxLabel
      Left = 347
      Top = 19
      Caption = 'Fecha:'
      Transparent = True
    end
    object cbbPersonal: TcxDBExtLookupComboBox
      Left = 82
      Top = 90
      DataBinding.DataField = 'sIdProveedor'
      DataBinding.DataSource = dsGastos
      Properties.View = cxDbGridPersonal
      Properties.KeyFieldNames = 'sIdEmpleado'
      Properties.ListFieldItem = grdColumDbGridGridRepos1DBTableView1Column1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 3
      Width = 233
    end
    object dxDate1: TcxDBDateEdit
      Left = 399
      Top = 18
      DataBinding.DataField = 'dIdFecha'
      DataBinding.DataSource = dsGastos
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.Color = clGradientActiveCaption
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 4
      Width = 209
    end
  end
  object Panel2: TcxGroupBox
    Left = 0
    Top = 314
    Align = alClient
    Caption = 'Registros.'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Silver'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
    TabOrder = 5
    Visible = False
    OnDblClick = Panel2DblClick
    Height = 9
    Width = 877
    object cxDBGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 871
      Height = 9
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      object cxDbGridGastos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = dsGastos
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
        object grdColumDbGridGastosColumn1: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'dIdFecha'
        end
        object grdColumDbGridGastosColumn2: TcxGridDBColumn
          Caption = 'Movimiento'
          DataBinding.FieldName = 'sTipoMovimiento'
        end
        object grdColumDbGridGastosColumn3: TcxGridDBColumn
          Caption = 'Area'
          DataBinding.FieldName = 'sIdArea'
        end
        object grdColumDbGridGastosColumn4: TcxGridDBColumn
          Caption = 'N'#250'mero de Cuenta'
          DataBinding.FieldName = 'sIdNumeroCuenta'
        end
        object grdColumDbGridGastosColumn5: TcxGridDBColumn
          Caption = 'Referencia'
          DataBinding.FieldName = 'sReferencia'
        end
        object grdColumDbGridGastosColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'sNombreCompleto'
        end
        object grdColumDbGridGastosColumn7: TcxGridDBColumn
          Caption = 'Importe Total'
          DataBinding.FieldName = 'dImporteTotal'
        end
      end
      object CxGridNivelGrid1Level1: TcxGridLevel
        GridView = cxDbGridGastos
      end
    end
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
    ImageOptions.LargeImages = Form2.cxImageResIconosTodos24
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 552
    Top = 16
    DockControlHeights = (
      0
      0
      51
      0)
    object Paneldxbrmngr1Bar1: TdxBar
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 768
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBtnAgregar'
        end
        item
          Visible = True
          ItemName = 'dxBtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxBtnGuardar'
        end
        item
          Visible = True
          ItemName = 'dxBtnEliminar'
        end
        item
          Visible = True
          ItemName = 'dxBtnActualizar'
        end
        item
          Visible = True
          ItemName = 'dxBtn1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBtnAgregar: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivNever
      LargeImageIndex = 29
      OnClick = dxBtnAgregarClick
      AutoGrayScale = False
    end
    object dxBtnEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivNever
      LargeImageIndex = 300
      AutoGrayScale = False
    end
    object dxBtnGuardar: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 622
      OnClick = dxBtnGuardarClick
      AutoGrayScale = False
    end
    object dxBtnEliminar: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivNever
      LargeImageIndex = 306
      AutoGrayScale = False
    end
    object dxBtnActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivNever
      LargeImageIndex = 643
      AutoGrayScale = False
    end
    object dxBtn1: TdxBarLargeButton
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      LargeImageIndex = 710
      OnClick = dxBtn1Click
      AutoGrayScale = False
    end
  end
  object cdGastos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 616
    Top = 16
  end
  object dsGastos: TDataSource
    DataSet = cdGastos
    Left = 664
    Top = 16
  end
  object cxGridRepos1: TcxGridViewRepository
    Left = 96
    Top = 248
    object cxDbGridCuentaBancaria: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsCuentaBancaria
      DataController.KeyFieldNames = 'sidNUmerocuenta'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdColumDbGridCuentaBancariaColumn1: TcxGridDBColumn
        Caption = 'Descripci'#243'n del Area'
        DataBinding.FieldName = 'sNOmbreCuenta'
        Width = 70
      end
      object grdColumDbGridCuentaBancariaColumn2: TcxGridDBColumn
        Caption = 'Banco'
        DataBinding.FieldName = 'sIdBanco'
        Width = 70
      end
    end
    object cxDbGridCargo: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsCargo
      DataController.KeyFieldNames = 'sIdArea'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdColumDbGridCargoColumn1: TcxGridDBColumn
        Caption = 'Nombre de la Cuenta'
        DataBinding.FieldName = 'sDescripcion'
        Width = 70
      end
    end
    object cxDbGridOrden: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsOrden
      DataController.KeyFieldNames = 'sIdFolio'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdColumDbGridOrdenColumn1: TcxGridDBColumn
        Caption = 'Orden de Trabajo'
        DataBinding.FieldName = 'sDescripcionCorta'
        Width = 70
      end
    end
    object cxDbGridPersonal: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsPersonal
      DataController.KeyFieldNames = 'sIdEmpleado'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdColumDbGridGridRepos1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Nombre del Beneficiario'
        DataBinding.FieldName = 'sNombreCompleto'
        Width = 70
      end
    end
  end
  object cdOrden: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 256
  end
  object cdCuentaBancaria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 224
  end
  object cdCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 192
  end
  object dsOrden: TDataSource
    DataSet = cdOrden
    Left = 584
    Top = 216
  end
  object dsCuentaBancaria: TDataSource
    DataSet = cdCuentaBancaria
    Left = 536
    Top = 176
  end
  object dsCargo: TDataSource
    DataSet = cdCargo
    Left = 664
    Top = 208
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 248
  end
  object dsPersonal: TDataSource
    DataSet = cdPersonal
    Left = 536
    Top = 232
  end
end
