inherited FrmDatosDetalleSubgrupo: TFrmDatosDetalleSubgrupo
  Caption = 'FrmDatosDetalleSubgrupo'
  ClientHeight = 228
  ExplicitHeight = 266
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TPanel
    Top = 179
    ExplicitTop = 179
  end
  inherited PanelDatosLugares: TPanel
    Height = 179
    ExplicitHeight = 179
    object JvLabel1: TJvLabel
      Left = 22
      Top = 47
      Width = 35
      Height = 13
      Caption = 'Codigo'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 23
      Top = 75
      Width = 28
      Height = 13
      Caption = 'Titulo'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 22
      Top = 100
      Width = 56
      Height = 13
      Caption = 'Descripcion'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel
      Left = 22
      Top = 23
      Width = 84
      Height = 13
      Caption = 'Codigo Subgrupo'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object DBEcodigo: TDBEdit
      Left = 112
      Top = 47
      Width = 303
      Height = 21
      DataField = 'codigodetallesubgrupo'
      DataSource = dsDatos
      TabOrder = 0
    end
    object DBEtitulo: TDBEdit
      Left = 112
      Top = 74
      Width = 303
      Height = 21
      DataField = 'titulo'
      DataSource = dsDatos
      TabOrder = 1
    end
    object DBMdescripcion: TDBMemo
      Left = 111
      Top = 101
      Width = 304
      Height = 56
      DataField = 'descripcion'
      DataSource = dsDatos
      TabOrder = 2
    end
    object EditCodigosubgrupo: TEdit
      Left = 111
      Top = 20
      Width = 304
      Height = 21
      TabOrder = 3
    end
    object BtnFindDisciplina: TBitBtn
      Left = 421
      Top = 20
      Width = 23
      Height = 22
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BtnFindDisciplinaClick
    end
    object DBEsubgrupo: TDBEdit
      Left = 464
      Top = 20
      Width = 39
      Height = 21
      DataField = 'idsubgrupo'
      DataSource = dsDatos
      TabOrder = 5
      Visible = False
      OnChange = DBEsubgrupoChange
    end
  end
  inherited dsDatos: TDataSource
    Left = 488
    Top = 16
  end
  object cdsubgrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 440
    Top = 72
  end
  object dssubgrupo: TDataSource
    Left = 488
    Top = 72
  end
end
