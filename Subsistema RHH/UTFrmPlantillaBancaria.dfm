object FrmPlantillaBancaria: TFrmPlantillaBancaria
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Generar Plantilla Bancaria'
  ClientHeight = 152
  ClientWidth = 378
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
  object cxGBDatos: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Generar Plantilla Bancaria para:'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 152
    Width = 378
    object dbTitulo: TDBText
      Left = 3
      Top = 15
      Width = 372
      Height = 17
      Align = alTop
      Alignment = taCenter
      Color = clInactiveCaption
      DataField = 'Titulo'
      DataSource = dsNomina
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitLeft = 10
      ExplicitTop = 24
      ExplicitWidth = 537
    end
    object dbFecha: TDBEdit
      Left = 38
      Top = 102
      Width = 337
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      DataField = 'Fecha'
      DataSource = dsBancosNomina
      ReadOnly = True
      TabOrder = 0
      Visible = False
    end
    object dbBanco: TDBEdit
      Left = 38
      Top = 118
      Width = 337
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      DataField = 'Banco'
      DataSource = dsBancosNomina
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
    object dbCuenta: TDBEdit
      Left = 38
      Top = 129
      Width = 337
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      DataField = 'Cuenta'
      DataSource = dsBancosNomina
      ReadOnly = True
      TabOrder = 2
      Visible = False
    end
    object Btn_Generar: TcxButton
      Left = 183
      Top = 112
      Width = 91
      Height = 25
      Caption = 'Generar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = Form2.CxImageModal
      TabOrder = 3
      OnClick = Btn_GenerarClick
    end
    object cxButton1: TcxButton
      Left = 280
      Top = 112
      Width = 91
      Height = 25
      Caption = '&Cerrar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      ModalResult = 2
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = Form2.CxImageModal
      TabOrder = 4
    end
    object CxCbbRegistroPat: TcxComboBox
      Left = 10
      Top = 75
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      TabOrder = 5
      Width = 361
    end
    object CxCbbReferencia: TcxComboBox
      Left = 10
      Top = 48
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      TabOrder = 6
      Width = 361
    end
  end
  object dsNomina: TDataSource
    Left = 368
    Top = 16
  end
  object cdBancosNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 16
  end
  object dsBancosNomina: TDataSource
    DataSet = cdBancosNomina
    Left = 376
    Top = 136
  end
  object cdPlantilla: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Plantilla Bancaria'
    Filter = '*.xls|*.xls|*.xlsx|*.xlsx'
    Title = 'Selecciona una ubicaci'#243'n para guardar la plantilla bancaria.'
    Left = 376
    Top = 72
  end
  object CdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
  end
  object CxItemRepos1: TcxEditRepository
    Left = 320
    Top = 16
    object cxCheckMetodoPago: TcxEditRepositoryCheckBoxItem
    end
    object cxdtrpstrychckgrptmCxItemRepos1CheckGroupItem1: TcxEditRepositoryCheckGroupItem
      Properties.Items = <>
    end
  end
end
