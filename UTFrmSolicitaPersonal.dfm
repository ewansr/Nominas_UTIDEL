object FrmSolicitaPersonal: TFrmSolicitaPersonal
  Left = 0
  Top = 0
  Caption = 'Solicitud de c'#243'digo de personal'
  ClientHeight = 143
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel1: TJvLabel
    Left = 16
    Top = 75
    Width = 196
    Height = 16
    Caption = 'Indique el c'#243'digo de personal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -13
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel3: TJvLabel
    Left = 348
    Top = 78
    Width = 206
    Height = 13
    Caption = 'PERSONAL LOCALIZADO PULSE <OK>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel2: TJvLabel
    Left = 16
    Top = 8
    Width = 509
    Height = 26
    Caption = 
      'Si conoce el "Codigo de Personal", por favor introduzcalo en la ' +
      'casilla de abajo y presione al tecla "ENTER"'#13#10'Si no lo conoce, p' +
      'resione el boton "...", para buscar al empelado que desea locali' +
      'zar.'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object Edit1: TEdit
    Left = 218
    Top = 74
    Width = 103
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyDown = Edit1KeyDown
  end
  object BitBtn1: TBitBtn
    Left = 417
    Top = 110
    Width = 75
    Height = 25
    DoubleBuffered = True
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 498
    Top = 110
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object BitBtn3: TBitBtn
    Left = 323
    Top = 71
    Width = 19
    Height = 21
    Hint = 'Busqueda en cat'#225'logo de personal'
    Caption = '...'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 3
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 3
  end
end
