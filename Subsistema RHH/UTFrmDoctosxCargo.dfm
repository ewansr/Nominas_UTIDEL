object FrmDoctosxCargo: TFrmDoctosxCargo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Documentaci'#243'n por Puesto de Trabajo'
  ClientHeight = 523
  ClientWidth = 702
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
  object Panel1: TPanel
    Left = 0
    Top = 481
    Width = 702
    Height = 42
    Align = alBottom
    Color = clMenu
    ParentBackground = False
    TabOrder = 1
    object btnAgregar: TcxButton
      Left = 456
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Agregar'
      TabOrder = 0
      OnClick = btnAgregarClick
    end
    object btnAceptar: TcxButton
      Left = 537
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      ModalResult = 1
      TabOrder = 1
      OnClick = btnAgregarClick
    end
    object btnCancelar: TcxButton
      Left = 618
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object lblLeyenda: TcxLabel
      Left = 13
      Top = 6
      Caption = 'Documentos en gris son de Asignaci'#243'n General.'
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 702
    Height = 390
    Align = alTop
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    object cxGridDoctosxCargo: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDoctosxCargo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = cxGridDoctosxCargoStylesGetContentStyle
      object gridColumnDocumento: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'nombredocumento'
        Width = 132
      end
      object gridColumnDescripcion: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'descripcion'
        Width = 160
      end
      object gridColumnObligatorio: TcxGridDBColumn
        Caption = 'Obligatorio'
        DataBinding.FieldName = 'obligatorio'
        Width = 104
      end
      object IdCargo: TcxGridDBColumn
        DataBinding.FieldName = 'IdCargo'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGridDoctosxCargo
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 390
    Align = alClient
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    ParentBackground = False
    ParentColor = False
    Style.BorderColor = clNone
    Style.BorderStyle = ebsNone
    Style.Color = clSilver
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 0
    Height = 91
    Width = 702
    object cxLabel2: TcxLabel
      Left = 29
      Top = 47
      Caption = 'Documento:'
      ParentColor = False
      Style.Color = clWindow
      StyleHot.BorderColor = clWindow
      StyleHot.BorderStyle = ebsOffice11
      StyleHot.Color = clDefault
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 54
      Top = 19
      Caption = 'Puesto:'
      StyleHot.BorderColor = clWindow
      StyleHot.BorderStyle = ebsOffice11
      StyleHot.Color = clDefault
      Transparent = True
    end
    object lcbDocumentos: TcxLookupComboBox
      Left = 97
      Top = 45
      Properties.KeyFieldNames = 'IdDocumento'
      Properties.ListColumns = <
        item
          FieldName = 'NombreDocumento'
        end>
      Properties.ListSource = dsDocumentos
      TabOrder = 1
      Width = 193
    end
    object lcbCargos: TcxLookupComboBox
      Left = 97
      Top = 18
      Properties.KeyFieldNames = 'Idcargo'
      Properties.ListColumns = <
        item
          FieldName = 'TituloCargo'
        end>
      Properties.ListSource = dsCargos
      TabOrder = 0
      OnClick = lcbCargosClick
      Width = 193
    end
    object chkAplicaTodos: TcxCheckBox
      Left = 296
      Top = 18
      Caption = 'Aplica para todos los puestos.'
      StyleHot.BorderColor = clWindow
      StyleHot.BorderStyle = ebsOffice11
      StyleHot.Color = clDefault
      TabOrder = 2
      Transparent = True
      OnClick = chkAplicaTodosClick
      Width = 169
    end
  end
  object dxBarManager1: TdxBarManager
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
    Left = 856
    Top = 24
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object cdCargos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 400
  end
  object cdDocumentos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 392
  end
  object cdUptDoctosxCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 232
  end
  object dsCargos: TDataSource
    DataSet = cdCargos
    Left = 472
    Top = 440
  end
  object dsDocumentos: TDataSource
    DataSet = cdDocumentos
    Left = 400
    Top = 440
  end
  object dsUptDoctosxCargo: TDataSource
    DataSet = cdUptDoctosxCargo
    Left = 544
    Top = 424
  end
  object cdDoctosxCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 240
  end
  object dsDoctosxCargo: TDataSource
    DataSet = cdDoctosxCargo
    Left = 640
    Top = 440
  end
  object StyleRegistro1: TcxStyleRepository
    Left = 600
    Top = 56
    PixelsPerInch = 96
    object StyleRegistroGris: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14803425
      TextColor = clBlack
    end
    object StyleGeneral: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
  end
end
