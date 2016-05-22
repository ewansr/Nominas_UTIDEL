object FrmFirmantesExcepciones: TFrmFirmantesExcepciones
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Firmantes Personal'
  ClientHeight = 248
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblPersonal: TLabel
    Left = 16
    Top = 137
    Width = 41
    Height = 13
    Caption = 'Personal'
  end
  object Codigo: TLabel
    Left = 16
    Top = 5
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object lblTipoFirma: TLabel
    Left = 16
    Top = 51
    Width = 53
    Height = 13
    Caption = 'Aplica Para'
  end
  object txtTipo: TLabel
    Left = 111
    Top = 91
    Width = 24
    Height = 13
    Caption = 'Tipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtAplicaPara: TLabel
    Left = 111
    Top = 51
    Width = 63
    Height = 13
    Caption = 'Aplica Para'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTipo: TLabel
    Left = 16
    Top = 91
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object edtCodigo: TDBEdit
    Left = 111
    Top = 2
    Width = 121
    Height = 21
    DataField = 'Codigo'
    DataSource = dsAutorizacionesxPersonalUpt
    TabOrder = 0
  end
  object cbPuestoPersonal: TComboBox
    Left = 575
    Top = 8
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = 'Por Puesto'
    Items.Strings = (
      'Por Puesto'
      'Por Personal')
  end
  object lcbPersonal: TDBLookupComboBox
    Left = 111
    Top = 129
    Width = 161
    Height = 21
    DataField = 'IdPersonal'
    DataSource = dsAutorizacionesxPersonalUpt
    KeyField = 'IdPersonal'
    ListField = 'NombreCompleto'
    ListSource = dsPersonal
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 207
    Width = 505
    Height = 41
    Align = alBottom
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    TabOrder = 3
    object cxButton1: TcxButton
      Left = 347
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object btn_Cancelar: TButton
      Left = 422
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btn_CancelarClick
    end
  end
  object dsAutorizacionesxPersonalUpt: TDataSource
    Left = 400
    Top = 120
  end
  object dsPersonal: TDataSource
    Left = 400
    Top = 16
  end
end
