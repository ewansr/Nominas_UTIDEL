object FrmConfiguracionDev: TFrmConfiguracionDev
  Left = 0
  Top = 0
  Caption = 'Configuraci'#243'n del Sistema'
  ClientHeight = 412
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 719
    Height = 412
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 24
    ExplicitTop = 8
    ExplicitWidth = 289
    ExplicitHeight = 193
    ClientRectBottom = 408
    ClientRectLeft = 4
    ClientRectRight = 715
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 100
        Width = 705
        Height = 281
        Margins.Top = 100
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -16
        ExplicitTop = 112
        ExplicitWidth = 250
        ExplicitHeight = 200
        object CxGridPrueba: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = CxGridPrueba
        end
      end
    end
  end
end
