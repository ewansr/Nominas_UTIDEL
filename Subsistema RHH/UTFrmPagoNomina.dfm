object FrmPagoNomina: TFrmPagoNomina
  Left = 0
  Top = 0
  Caption = 'Pago de N'#243'minas'
  ClientHeight = 429
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Right = 2
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 377
    Width = 954
    Height = 52
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 2
    Padding.Right = 6
    Padding.Bottom = 2
    TabOrder = 0
    object Btn_Cancelar: TcxButton
      AlignWithMargins = True
      Left = 831
      Top = 18
      Width = 105
      Height = 28
      Margins.Top = 15
      Align = alRight
      Caption = '&Cerrar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'MoneyTwins'
      ModalResult = 2
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = Form2.CxImageModal
      TabOrder = 0
      OnClick = Btn_CancelarClick
    end
    object Panel2: TPanel
      Left = 939
      Top = 3
      Width = 8
      Height = 46
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Btn_Generar: TcxButton
      AlignWithMargins = True
      Left = 713
      Top = 18
      Width = 112
      Height = 28
      Margins.Top = 15
      Align = alRight
      Caption = 'Generar Pago'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'MoneyTwins'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = Form2.CxImageModal
      TabOrder = 2
      OnClick = Btn_GenerarClick
    end
    object btn1: TcxButton
      Left = 395
      Top = 6
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 3
      Visible = False
      OnClick = btn1Click
    end
    object chkboxTimbrar: TcxCheckBox
      Left = 3
      Top = 1
      Caption = 'Generar Timbrado'
      TabOrder = 4
      Width = 117
    end
    object CxChkBoxPrueba: TcxCheckBox
      Left = 3
      Top = 23
      Caption = 'Timbrado Prueba'
      TabOrder = 5
      Width = 117
    end
  end
  object pnlOrganizacion: TPanel
    Left = 0
    Top = 0
    Width = 954
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object JvLabel2: TJvLabel
      Left = 30
      Top = 6
      Width = 57
      Height = 13
      Caption = 'EMPRESA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
    object CxLCbbEmpresa: TcxLookupComboBox
      Left = 93
      Top = 4
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'IdOrganizacion'
      Properties.ListColumns = <
        item
          Caption = 'Organizaci'#243'n Con la que desea Timbrar'
          FieldName = 'NombreOrganizacion'
        end>
      Properties.ListSource = dsOrganizacion
      Properties.OnChange = CxLCbbEmpresaPropertiesChange
      TabOrder = 0
      Width = 273
    end
    object CxChkBoxOrganizacion: TcxCheckBox
      Left = 13
      Top = 2
      Properties.OnChange = CxChkBoxOrganizacionPropertiesChange
      TabOrder = 1
      Width = 13
    end
  end
  object cxGBProceso: TcxGroupBox
    Left = 0
    Top = 50
    Align = alClient
    TabOrder = 2
    Height = 327
    Width = 369
    object GroupBox2: TcxGroupBox
      Left = 3
      Top = 175
      Align = alBottom
      Caption = 'Detalles del Pago:'
      Ctl3D = True
      ParentCtl3D = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Height = 149
      Width = 363
      object JvLabel1: TJvLabel
        Left = 10
        Top = 16
        Width = 78
        Height = 13
        Caption = 'Forma de Pago:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object jvlbl1: TJvLabel
        Left = 10
        Top = 61
        Width = 58
        Height = 13
        Caption = 'Referencia:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 10
        Top = 38
        Width = 72
        Height = 13
        Caption = 'Fecha Movto.:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object LBL1: TJvLabel
        Left = 10
        Top = 84
        Width = 35
        Height = 13
        Caption = 'Banco:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object cbFormaPago: TComboBox
        Left = 94
        Top = 16
        Width = 267
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbFormaPagoChange
      end
      object cbbReferencia: TcxComboBox
        Left = 94
        Top = 61
        OnFocusChanged = cbbReferenciaFocusChanged
        TabOrder = 1
        Width = 267
      end
      object FechaPago: TJvDateTimePicker
        Left = 94
        Top = 38
        Width = 97
        Height = 21
        Date = 0.559424814811791300
        Time = 0.559424814811791300
        TabOrder = 2
        DropDownDate = 41690.000000000000000000
      end
      object cbbBancos: TcxExtLookupComboBox
        Left = 94
        Top = 84
        Properties.View = cxDbGridGridRepos1DBTableView1
        Properties.KeyFieldNames = 'IdCuentaBAnco'
        Properties.ListFieldItem = grdColumDbGridGridRepos1DBTableView1Column2
        TabOrder = 3
        Width = 267
      end
      object cbbGastos: TcxExtLookupComboBox
        Left = 94
        Top = 107
        Enabled = False
        Properties.View = cxDbGridGastos
        Properties.KeyFieldNames = 'iIdFolio'
        Properties.ListFieldItem = grdColumDbGridGridRepos1DBTableView2Column2
        Properties.OnCloseUp = cbbGastosPropertiesCloseUp
        TabOrder = 4
        Width = 267
      end
      object chkboxGastos: TcxCheckBox
        Left = 10
        Top = 103
        Caption = 'Reg. Gasto'
        TabOrder = 5
        OnClick = chkboxGastosClick
        Width = 85
      end
      object btn2: TcxButton
        Left = 336
        Top = 123
        Width = 26
        Height = 21
        Enabled = False
        OptionsImage.ImageIndex = 29
        OptionsImage.Images = Form2.cxImageResIconosTodos16
        TabOrder = 6
        Visible = False
        OnClick = btn2Click
      end
    end
    object GroupBox1: TcxGroupBox
      Left = 3
      Top = 22
      Align = alClient
      Caption = 'Personal incluido en este pago:'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Height = 153
      Width = 363
      object lbPersonal: TcxListBox
        Left = 3
        Top = 15
        Width = 357
        Height = 128
        Align = alClient
        ItemHeight = 13
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Whiteprint'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Whiteprint'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Whiteprint'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Whiteprint'
        TabOrder = 0
      end
    end
  end
  object cxGBLogCnt: TcxGroupBox
    Left = 369
    Top = 50
    Align = alRight
    TabOrder = 3
    Visible = False
    Height = 327
    Width = 585
    object cxGBLog: TcxGroupBox
      Left = 3
      Top = 22
      Align = alClient
      Caption = 'Log de Timbrado'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Height = 302
      Width = 579
      object Memo1: TcxMemo
        AlignWithMargins = True
        Left = 3
        Top = 75
        Margins.Left = 0
        Margins.Top = 60
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Lines.Strings = (
          'Me'
          'mo'
          '1')
        Properties.ScrollBars = ssVertical
        TabOrder = 0
        Height = 217
        Width = 573
      end
      object CxProgressBarIndividual: TcxProgressBar
        Left = 102
        Top = 19
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 1
        Width = 476
      end
      object CxProgressBarTotal: TcxProgressBar
        Left = 102
        Top = 42
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 2
        Width = 476
      end
      object cxLabel1: TcxLabel
        Left = 4
        Top = 19
        Caption = 'Progeso Individual'
        Transparent = True
      end
      object CxLbl1: TcxLabel
        Left = 4
        Top = 42
        Caption = 'Progeso Total'
        Transparent = True
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 954
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object JvLabel4: TJvLabel
      Left = 11
      Top = 7
      Width = 271
      Height = 13
      Caption = 'GENERAR PAGO DE PERSONAL POR UN MONTO DE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
    object LblImporte: TJvLabel
      Left = 288
      Top = 6
      Width = 23
      Height = 13
      Caption = '***'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
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
  object dsFormaPago: TDataSource
    Left = 760
    Top = 248
  end
  object dsPersonal: TDataSource
    Left = 576
    Top = 432
  end
  object ItemRes1: TcxEditRepository
    Left = 672
    Top = 8
    object ItemCboxFormaPago: TcxEditRepositoryComboBoxItem
    end
    object ItemCboxHistorialReferencias: TcxEditRepositoryComboBoxItem
    end
  end
  object cdReferencias: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 224
  end
  object dsPersonalIncluido: TDataSource
    Left = 576
    Top = 128
  end
  object cdPersonalIncluido: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 112
  end
  object dsDeducciones: TDataSource
    Left = 576
    Top = 360
  end
  object cdTimbrado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 152
  end
  object cdBancos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 704
    Top = 256
  end
  object dsBancos: TDataSource
    DataSet = cdBancos
    Left = 640
    Top = 248
  end
  object cxGridRepos1: TcxGridViewRepository
    Left = 272
    Top = 376
    object cxDbGridGridRepos1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBancos
      DataController.KeyFieldNames = 'IdCuentaBAnco'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdColumDbGridGridRepos1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Banco'
      end
      object grdColumDbGridGridRepos1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'Descripcion'
      end
      object grdColumDbGridGridRepos1DBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'Sucursal'
      end
      object grdColumDbGridGridRepos1DBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'Cuenta'
      end
    end
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
      DataController.KeyFieldNames = 'iIdFolio'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object grdColumDbGridGridRepos1DBTableView2Column1: TcxGridDBColumn
        Caption = 'Movimiento'
        DataBinding.FieldName = 'sTipoMovimiento'
      end
      object grdColumDbGridGridRepos1DBTableView2Column2: TcxGridDBColumn
        Caption = 'Referencia'
        DataBinding.FieldName = 'sReferencia'
      end
      object grdColumDbGridGridRepos1DBTableView2Column3: TcxGridDBColumn
        Caption = 'Raz'#243'n Social'
        DataBinding.FieldName = 'sRazonSocial'
      end
      object grdColumDbGridGridRepos1DBTableView2Column4: TcxGridDBColumn
        Caption = 'Importe del Gasto'
        DataBinding.FieldName = 'dImporteTotal'
      end
    end
  end
  object cdGastos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 328
  end
  object dsGastos: TDataSource
    DataSet = cdGastos
    Left = 520
    Top = 320
  end
  object cdpGastos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 264
  end
  object dspGastos: TDataSource
    DataSet = cdpGastos
    Left = 688
    Top = 304
  end
  object CdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 8
  end
  object dsOrganizacion: TDataSource
    DataSet = CdOrganizacion
    Left = 536
    Top = 8
  end
  object FolderDXML: TFolderDialog
    DialogX = 0
    DialogY = 0
    Version = '1.1.0.1'
    Left = 312
    Top = 152
  end
  object cdIncapacidadCFDI: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 224
  end
end
