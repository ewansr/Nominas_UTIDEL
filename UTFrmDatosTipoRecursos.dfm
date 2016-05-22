inherited FrmDatosTipoRecursos: TFrmDatosTipoRecursos
  Caption = 'Tipo de Recursos'
  ClientHeight = 157
  ClientWidth = 544
  ExplicitWidth = 560
  ExplicitHeight = 195
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TPanel
    Top = 108
    Width = 544
    ExplicitTop = 108
    ExplicitWidth = 544
  end
  inherited PanelDatosLugares: TPanel
    Width = 544
    Height = 108
    ExplicitWidth = 544
    ExplicitHeight = 108
    object JvLabel1: TJvLabel
      Left = 32
      Top = 16
      Width = 39
      Height = 13
      Caption = 'C'#243'digo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 39
      Top = 43
      Width = 32
      Height = 13
      Caption = 'Titulo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 11
      Top = 70
      Width = 60
      Height = 13
      Caption = 'Descripci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object DBEdit1: TDBEdit
      Left = 77
      Top = 13
      Width = 121
      Height = 21
      DataField = 'Codigo'
      DataSource = dsDatos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 77
      Top = 40
      Width = 121
      Height = 21
      DataField = 'Titulo'
      DataSource = dsDatos
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 77
      Top = 67
      Width = 452
      Height = 21
      DataField = 'Descripcion'
      DataSource = dsDatos
      TabOrder = 2
    end
  end
  inherited Timer1: TTimer
    Left = 480
    Top = 72
  end
  inherited Timer2: TTimer
    Left = 360
    Top = 32
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 408
    Top = 72
  end
end
