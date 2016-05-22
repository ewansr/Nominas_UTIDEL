object FrmFirmantesSolicitantesUpt: TFrmFirmantesSolicitantesUpt
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 208
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblDatos: TLabel
    Left = 54
    Top = 110
    Width = 45
    Height = 13
    Caption = 'Personal:'
  end
  object lblCodigo: TLabel
    Left = 62
    Top = 8
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblTipoFirma: TLabel
    Left = 42
    Top = 48
    Width = 57
    Height = 13
    Caption = 'Aplica Para:'
  end
  object Label1: TLabel
    Left = 75
    Top = 83
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object txtAplicaPara: TLabel
    Left = 112
    Top = 48
    Width = 77
    Height = 13
    Caption = 'txtAplicaPara'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtTipo: TLabel
    Left = 112
    Top = 83
    Width = 37
    Height = 13
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCodigo: TDBEdit
    Left = 112
    Top = 8
    Width = 161
    Height = 21
    DataField = 'Codigo'
    DataSource = dsAutorizacionesxCargoUpt
    TabOrder = 0
  end
  object lcbDatos: TDBLookupComboBox
    Left = 112
    Top = 110
    Width = 345
    Height = 21
    DataSource = dsAutorizacionesxCargoUpt
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 167
    Width = 499
    Height = 41
    Align = alBottom
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    TabOrder = 2
    object btn_Ok: TcxButton
      Left = 341
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
      OnClick = btn_OkClick
      ExplicitLeft = 335
    end
    object btn_Cancelar: TcxButton
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      OnClick = btn_CancelarClick
    end
  end
  object dsAutorizacionesxCargoUpt: TDataSource
    Left = 304
    Top = 24
  end
  object dsCargos: TDataSource
    Left = 456
  end
  object dsPersonal: TDataSource
    Left = 400
  end
end
