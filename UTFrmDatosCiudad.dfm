inherited FrmDatosCiudad: TFrmDatosCiudad
  Caption = 'Datos de la ciudad'
  ClientWidth = 340
  ExplicitWidth = 356
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    ExplicitWidth = 340
    Width = 340
    inherited BtnRec: TcxButton
      Left = 158
      ExplicitLeft = 158
    end
    inherited BtnAddNew: TcxButton
      Visible = False
      ExplicitLeft = 4
      ExplicitTop = 3
    end
    inherited BtnCancel: TcxButton
      Left = 249
      ExplicitLeft = 249
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 340
    Width = 340
    object Codigo: TcxLabel
      Left = 14
      Top = 22
      Caption = 'C'#243'digo:'
      Transparent = True
    end
    object Titulo: TcxLabel
      Left = 14
      Top = 46
      Caption = 'T'#237'tulo:'
      Transparent = True
    end
    object Codigo_estado: TcxLabel
      Left = 14
      Top = 69
      Caption = 'C'#243'digo Estado:'
      Transparent = True
    end
    object Descripcion: TcxLabel
      Left = 14
      Top = 128
      Caption = 'Descripci'#243'n:'
      Transparent = True
    end
    object DBEditCodigo: TDBEdit
      Left = 96
      Top = 19
      Width = 233
      Height = 19
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'codigociudad'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEditTitulo: TDBEdit
      Left = 96
      Top = 43
      Width = 233
      Height = 19
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'titulociudad'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 1
    end
    object EditCodigoEstado: TEdit
      Left = 96
      Top = 67
      Width = 206
      Height = 19
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = EditCodigoEstadoKeyPress
    end
    object EditTituloEstado: TEdit
      Tag = 99
      Left = 96
      Top = 92
      Width = 233
      Height = 21
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '*'
    end
    object BtnFindGrupo: TcxButton
      Left = 306
      Top = 67
      Width = 23
      Height = 19
      Caption = '...'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 3
      OnClick = BtnFindGrupoClick
    end
    object DBEditEstado: TDBEdit
      Left = 335
      Top = 19
      Width = 121
      Height = 21
      DataField = 'idestado'
      DataSource = dsDatos
      TabOrder = 6
      Visible = False
      OnChange = DBEditEstadoChange
    end
    object DBMemoDescripcion: TDBRichEdit
      Left = 14
      Top = 143
      Width = 315
      Height = 146
      BevelEdges = []
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
  inherited Timer1: TTimer
    Left = 120
    Top = 296
  end
  inherited Timer2: TTimer
    Left = 72
    Top = 288
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 96
    Top = 312
  end
  object cdEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 160
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = cdEstado
    Left = 120
    Top = 304
  end
end
