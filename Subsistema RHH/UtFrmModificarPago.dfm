object frmModificarPago: TfrmModificarPago
  Left = 0
  Top = 0
  Caption = 'frmModificarPago'
  ClientHeight = 425
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object groupBoxPagos: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'P A G  O S   R E G I S T R A D O S '
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    ExplicitLeft = 56
    ExplicitTop = 32
    Height = 372
    Width = 841
    object cxDBGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 835
      Height = 347
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      ExplicitLeft = -34
      ExplicitTop = 224
      object cxDbGridPagos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxDbGridPagosCellDblClick
        DataController.DataSource = dsNominaPersonal
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
        object grdColumDbGridPagosColumn1: TcxGridDBColumn
          Caption = 'Codigo Personal'
          DataBinding.FieldName = 'CodigoPersonal'
        end
        object grdColumDbGridPagosColumn2: TcxGridDBColumn
          Caption = 'Nombre Completo'
          DataBinding.FieldName = 'NombreCompleto'
        end
        object grdColumDbGridPagosColumn3: TcxGridDBColumn
          Caption = 'Forma Pago'
          DataBinding.FieldName = 'Titulo'
        end
        object grdColumDbGridPagosColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'Referencia'
          Visible = False
          GroupIndex = 0
        end
      end
      object CxGridNivelGrid1Level1: TcxGridLevel
        GridView = cxDbGridPagos
      end
    end
  end
  object pnl1: TPanel
    Left = 32
    Top = 120
    Width = 337
    Height = 121
    TabOrder = 5
    Visible = False
    object btnAceptar: TcxButton
      Left = 175
      Top = 92
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      TabOrder = 0
      OnClick = btnAceptarClick
    end
    object btnCancelar: TcxButton
      Left = 256
      Top = 92
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object lbl1: TcxLabel
      Left = 4
      Top = 39
      Caption = 'Forma de Pago:'
    end
    object lbl2: TcxLabel
      Left = 4
      Top = 66
      Caption = 'Referencia:'
    end
    object lbl3: TcxLabel
      Left = 4
      Top = 7
      Caption = 'PERSONAL'
    end
    object cbbFormaPago: TcxExtLookupComboBox
      Left = 90
      Top = 38
      Properties.View = cxDbGridFormaPago
      Properties.KeyFieldNames = 'IdFormaPago'
      Properties.ListFieldItem = grdColumDbGridFormaPagoColumn1
      Properties.OnChange = cbbFormaPagoPropertiesChange
      TabOrder = 5
      Width = 239
    end
    object cbbReferencia: TcxComboBox
      Left = 90
      Top = 65
      TabOrder = 6
      Text = 'cbbReferencia'
      Width = 239
    end
  end
  object cdNominaPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 376
  end
  object dsNominaPersonal: TDataSource
    DataSet = cdNominaPersonal
    Left = 144
    Top = 376
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
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 776
    Top = 8
    DockControlHeights = (
      0
      0
      0
      53)
    object tbdxbrmngr1Bar1: TdxBar
      Caption = 'Toolbar1'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 875
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnBtnEditar'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnBtnEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000090000
        0017000000100000000500000001000000000000000000000000000000000000
        000000000000000000000000000000000000000000040000000F0000001E0000
        00250000002500000021000000130000000500000001000000000000000D3D4A
        52A80D151B560000002800000015000000090000000100000000000000000000
        0000000000000000000000000000000000060000001B00130A51004C29A8005C
        31C0005C30C100532CB40023136A00000023000000090000000100000003424E
        54B855646EFF31678BD0050F155D000000300000001500000004000000000000
        00000000000000000000000000010000001800351D87009152FF00BE81FF00D0
        93FF00D194FF00C588FF009D5FFF00522CB40000002300000005000000001C2A
        3258638C9DF687D6FDFF5DA2D1FE2C5A7FCA1425357C0000001F000000060000
        000000000000000000000000000900281667009258EE00CB8EFF00CA8AFF39D3
        A1FF56D9AEFF00C889FF00CB8EFF00A768FF0047269900030218000000000811
        16245695B2CC89D6FDFF8FD0F7FF63B4EFFF228DDFFF1B3145900000001E0000
        0004000000000000000000000013006B3EC500BE80FF00C788FF00C382FFA9EA
        D3FFFFFFFFFF00C17EFF00C687FF00C88BFF008953E2001A0E45000000000000
        00031D48659C9FE0FCFFD0EEFDFF3AA8FDFF1897FFFF268DDDFF1525357F0000
        001C000000040000000000000016009E5EFF00C484FF01BE7DFF01BB75FFA9E7
        CFFFFFFFFFFF01B973FF01BD7BFF00C383FF00B173FF002E1964000000000000
        000107121A2F51A0D5FE91DEFFFF9AD6FFFF31A4FFFF1999FFFF2A88D3FF1525
        347F0000001F00000006000000160CA164FF0CC284FFFEFFFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF01BC7AFF19B77FFF002E1964000000000000
        000000000001122A435846AAE6FF83D8FFFFB5E0FFFF39A9FFFF1999FFFF268D
        DDFF1C3145900000001E000000141FA46AFF1FC58BFF54D0A2FF55CE9EFFC6EE
        DDFFFFFFFFFF55CD9CFF55D0A1FF00BB78FF3DBE8EFF002E1861000000000000
        000000000000000000001229425943B2ECFF76D2FFFFB5E0FFFF31A4FFFF1A98
        FFFF278DDEFF1625357F00000022218555D73DC898FF00BA78FF00B775FFA9E6
        CEFFFFFFFFFF00B671FF00BA78FF2AC895FF41A77CEB00221246000000000000
        00000000000000000000000000011836577343B2ECFF84D8FFFF9CD7FFFF31A4
        FFFF1999FFFF2C87D5FF1724378003341D7C44B183F646CFA0FF16BD80FF72D5
        AEFFA9E4CCFF0DB979FF39CA97FF65CAA3FF045A33A20006030E000000000000
        0000000000000000000000000000000000011229415846AAE6FF83D8FFFFB5E0
        FFFF39A9FFFF1A99FFFF2A8CE0FF1E394EA2044D29A038AF7CFF61CDA6FF69D5
        ADFF6AD5ACFF64D1ABFF46B889FF07693CBC00120A2400000000000000000000
        000000000000000000000000000000000000000000001229425943B2ECFF76D2
        FFFFB5E0FFFF31A4FFFF1A98FFFF2B8BE1FF1824388000160B45007038D30086
        45FE008645FE007C40E900351C65000000010000000000000000000000000000
        00000000000000000000000000000000000000000000000000011836577343B3
        ECFF82D4FDFF9CD7FFFF31A4FFFF1A99FFFF2F86D7FF1724377F0000001F0000
        0006000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000001122A
        415843A1E1FF83D4FDFFB6E0FFFF3AA9FFFF1A99FFFF298CE0FF1D3147900000
        001E000000040000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000122A42593EA4E5FF77D3FFFFB5E0FFFF31A4FFFF1A98FFFF278DDEFF1625
        357F0000001C0000000400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000011837577343B2ECFF84D8FFFF9CD7FFFF31A4FFFF1999FFFF2B88
        D3FF1525347F0000001F00000006000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000011229415846AAE6FF83D8FFFFB5E0FFFF39A9FFFF1999
        FFFF268EDDFF1B3145900000001E000000040000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001229425943B2ECFF76D2FFFFB5E0FFFF31A4
        FFFF1999FFFF208EE1FF1125387F0000001C0000000400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000011836577343B2ECFF84D8FFFF9BD7
        FFFF2BA5FFFF578EB4FF7E7770FF2829257F0000001F00000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000011229415846AAE6FF7ED9
        FFFFBED7E8FFB2ACA6FF848280FF7A7F72FF452F5C8F00000018000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000102943597F8E
        A1FFF2EDE9FFEFEFEDFF9EA19AFFC586C4FFB079BCFF33244364000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000014F4A
        4573C3C0BCFFD6D3D4FFE6CDE5FFCC97CBFFB07DBCFA3425445F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000137363458C299CBFFE9C5E7FFC698C4F0845F97C3120D171F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003F2D4559BB88D0FFB684CFFF0000000400000000}
      OnClick = btnBtnEditarClick
      AutoGrayScale = False
    end
    object btnBtnGuardar: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
    end
  end
  object cdReferencias: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 216
  end
  object dsReferencias: TDataSource
    DataSet = cdReferencias
    Left = 520
    Top = 216
  end
  object dsFormaPago: TDataSource
    DataSet = cdFormaPago
    Left = 520
    Top = 160
  end
  object cdFormaPago: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 160
  end
  object cxGridRepos1: TcxGridViewRepository
    Left = 440
    Top = 272
    object cxDbGridFormaPago: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsFormaPago
      DataController.KeyFieldNames = 'IdFormaPago'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object grdColumDbGridFormaPagoColumn1: TcxGridDBColumn
        Caption = 'Forma de Pago'
        DataBinding.FieldName = 'Titulo'
      end
    end
    object cxDbGridReferencias: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsReferencias
      DataController.KeyFieldNames = 'referencia'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object grdColumDbGridReferenciasColumn1: TcxGridDBColumn
        Caption = 'Referencias'
        DataBinding.FieldName = 'Referencia'
        PropertiesClassName = 'TcxTextEditProperties'
      end
    end
  end
  object dsuptNominaPersonal: TDataSource
    DataSet = cduptNominaPersonal
    Left = 312
    Top = 384
  end
  object cduptNominaPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 384
  end
  object ItemRes1: TcxEditRepository
    Left = 464
    Top = 16
    object ItemCboxItemRes1ComboBoxItem1: TcxEditRepositoryComboBoxItem
    end
  end
end
