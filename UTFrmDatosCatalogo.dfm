object FrmDatosCatalogo: TFrmDatosCatalogo
  Left = 0
  Top = 0
  Caption = 'Datos'
  ClientHeight = 344
  ClientWidth = 546
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBarraLugar: TcxGroupBox
    Left = 0
    Top = 307
    Align = alBottom
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    Height = 37
    Width = 546
    object BtnRec: TcxButton
      AlignWithMargins = True
      Left = 364
      Top = 3
      Width = 87
      Height = 31
      Hint = 'Haga click aqu'#237' para Guardar la captura realizada'
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Guardar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      OptionsImage.ImageIndex = 8
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnRecClick
    end
    object BtnAddNew: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 3
      Width = 115
      Height = 31
      Hint = 'Haga click aqu'#237' para a'#241'adir un nuevo registro'
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Guardar y Nuevo'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      OptionsImage.ImageIndex = 9
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnAddNewClick
    end
    object BtnCancel: TcxButton
      AlignWithMargins = True
      Left = 455
      Top = 3
      Width = 87
      Height = 31
      Hint = 
        'Haga click aqu'#237' para cancelar la captura realizada y cerrar la v' +
        'entana'
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Cancelar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      OptionsImage.ImageIndex = 6
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnCancelClick
    end
  end
  object PanelDatosLugares: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Ingrese la siguiente informaci'#243'n:'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 307
    Width = 546
  end
  object dsDatos: TDataSource
    Left = 408
  end
  object CdTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 328
    Top = 40
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer2Timer
    Left = 264
    Top = 64
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 144
    Top = 24
  end
end
