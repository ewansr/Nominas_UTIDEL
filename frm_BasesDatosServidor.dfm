object frmBasesDatosServidor: TfrmBasesDatosServidor
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Bases de datos administradas por el servidor'
  ClientHeight = 262
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Padding.Left = 4
  Padding.Right = 4
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 90
    Width = 387
    Height = 23
    Caption = 'Solicitando bases de datos al servidor, espere...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object sgDatabases: TStringGrid
    Left = 4
    Top = 0
    Width = 594
    Height = 227
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    ColCount = 3
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goColSizing, goRowSelect]
    TabOrder = 0
    Visible = False
    OnDblClick = sgDatabasesDblClick
    OnDrawCell = sgDatabasesDrawCell
    ExplicitLeft = 1
    ColWidths = (
      211
      199
      120)
  end
  object Panel1: TPanel
    Left = 4
    Top = 227
    Width = 594
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 7
    ExplicitWidth = 474
    object Btn_Ok: TBitBtn
      Left = 433
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = Btn_OkClick
    end
    object Btn_Cancel: TBitBtn
      Left = 514
      Top = 6
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkCancel
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object Btn_Ok2: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      DoubleBuffered = True
      Enabled = False
      Kind = bkOK
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 2
      Visible = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 232
    Top = 176
  end
end
