object FrmSelPersonal: TFrmSelPersonal
  Left = 0
  Top = 0
  Caption = 'Seleccion de personal'
  ClientHeight = 374
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = -5
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 628
    Height = 333
    Align = alClient
    TabOrder = 1
    OnResize = Panel2Resize
    object Splitter1: TSplitter
      Left = 177
      Top = 1
      Height = 331
      MinSize = 121
      ResizeStyle = rsUpdate
      ExplicitLeft = 122
      ExplicitHeight = 270
    end
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 176
      Height = 331
      Align = alLeft
      Indent = 19
      ReadOnly = True
      TabOrder = 0
      OnDblClick = TreeView1DblClick
    end
    object JvListView1: TJvListView
      Left = 180
      Top = 1
      Width = 447
      Height = 331
      Align = alClient
      Columns = <>
      TabOrder = 1
      ExtendedColumns = <>
      ExplicitLeft = 344
      ExplicitTop = 46
      ExplicitWidth = 250
      ExplicitHeight = 150
    end
    object Panel3: TPanel
      Left = 224
      Top = 0
      Width = 105
      Height = 49
      BevelOuter = bvNone
      Caption = 'Espere...'
      Padding.Left = 4
      Padding.Top = 4
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 2
      object AdvCircularProgress1: TAdvCircularProgress
        Left = 4
        Top = 4
        Width = 97
        Height = 41
        Align = alClient
        Appearance.BackGroundColor = clNone
        Appearance.BorderColor = clNone
        Appearance.ActiveSegmentColor = 16752543
        Appearance.InActiveSegmentColor = clSilver
        Appearance.TransitionSegmentColor = 10485760
        Appearance.ProgressSegmentColor = 4194432
        Interval = 100
        ExplicitLeft = -8
        ExplicitTop = -8
        ExplicitWidth = 60
        ExplicitHeight = 60
      end
    end
  end
end
