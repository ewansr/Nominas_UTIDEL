inherited FrmDatosEstado: TFrmDatosEstado
  Caption = 'Datos del estado'
  ClientHeight = 341
  ClientWidth = 385
  ExplicitWidth = 401
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 304
    ExplicitTop = 304
    ExplicitWidth = 385
    Width = 385
    inherited BtnRec: TcxButton
      Left = 203
      ExplicitLeft = 203
    end
    inherited BtnAddNew: TcxButton
      Visible = False
      ExplicitLeft = 4
      ExplicitTop = 3
    end
    inherited BtnCancel: TcxButton
      Left = 294
      ExplicitLeft = 294
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 385
    ExplicitHeight = 304
    Height = 304
    Width = 385
    object Codigo_pais: TcxLabel
      Left = 12
      Top = 21
      Caption = 'Pa'#237's:'
      Transparent = True
    end
    object Codigo: TcxLabel
      Left = 12
      Top = 76
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Titulo: TcxLabel
      Left = 12
      Top = 102
      Caption = 'T'#237'tulo:'
      Transparent = True
    end
    object Descripcion: TcxLabel
      Left = 12
      Top = 129
      Caption = 'Descripci'#243'n:'
      Transparent = True
    end
    object EditCodigoPais: TEdit
      Left = 72
      Top = 21
      Width = 281
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = EditCodigoPaisKeyPress
    end
    object EditTituloPais: TEdit
      Tag = 99
      Left = 72
      Top = 47
      Width = 305
      Height = 21
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '*'
    end
    object DBEditIdPais: TDBEdit
      Left = 383
      Top = 23
      Width = 121
      Height = 21
      DataField = 'idpais'
      DataSource = dsDatos
      TabOrder = 6
      Visible = False
      OnChange = DBEditIdPaisChange
    end
    object DBEditCodigo: TDBEdit
      Left = 72
      Top = 73
      Width = 305
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'codigoestado'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEditTitulo: TDBEdit
      Left = 72
      Top = 99
      Width = 305
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'tituloestado'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 4
    end
    object BtnFindPais: TcxButton
      Left = 354
      Top = 21
      Width = 23
      Height = 19
      Caption = '...'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 1
      OnClick = BtnFindPaisClick
    end
    object DBMemoDescripcion: TDBRichEdit
      Left = 12
      Top = 146
      Width = 365
      Height = 139
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'descripcion'
      DataSource = dsDatos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PlainText = True
      TabOrder = 5
    end
  end
  inherited dsDatos: TDataSource
    Left = 56
    Top = 232
  end
  inherited Timer1: TTimer
    Left = 16
    Top = 240
  end
  inherited Timer2: TTimer
    Left = 48
    Top = 224
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 80
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = cdPaises
    Left = 88
    Top = 232
  end
  object cdPaises: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 118
    Top = 232
  end
end
