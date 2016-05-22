object FrmEstructuraO: TFrmEstructuraO
  Left = 0
  Top = 0
  Caption = 'FrmEstructuraO'
  ClientHeight = 463
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TRibbon
    Left = 0
    Top = 0
    Width = 759
    Height = 143
    Caption = 'Ribbon1'
    Tabs = <
      item
        Caption = 'RibbonPage1'
        Page = RibbonPage1
      end
      item
        Caption = 'RibbonPage2'
        Page = RibbonPage2
      end>
    TabIndex = 1
    DesignSize = (
      759
      143)
    StyleName = 'Ribbon - Luna'
    object RibbonPage1: TRibbonPage
      Left = 0
      Top = 50
      Width = 758
      Height = 93
      Caption = 'RibbonPage1'
      Index = 0
      object RibbonGroup1: TRibbonGroup
        Left = 4
        Top = 3
        Width = 98
        Height = 86
        Caption = 'RibbonGroup1'
        GroupIndex = 0
      end
      object RibbonGroup5: TRibbonGroup
        Left = 104
        Top = 3
        Width = 53
        Height = 86
        Caption = 'RibbonGroup5'
        GroupIndex = 1
      end
    end
    object RibbonPage2: TRibbonPage
      Left = 0
      Top = 50
      Width = 758
      Height = 93
      Caption = 'RibbonPage2'
      Index = 1
      object RibbonGroup2: TRibbonGroup
        Left = 4
        Top = 3
        Width = 100
        Height = 86
        Caption = 'RibbonGroup2'
        GroupIndex = 0
      end
      object RibbonGroup3: TRibbonGroup
        Left = 106
        Top = 3
        Width = 158
        Height = 86
        Caption = 'RibbonGroup3'
        GroupIndex = 1
        object CbNiveles: TComboBox
          Left = 69
          Top = 2
          Width = 85
          Height = 21
          TabOrder = 0
        end
      end
      object RibbonGroup4: TRibbonGroup
        Left = 266
        Top = 3
        Width = 100
        Height = 86
        Caption = 'RibbonGroup4'
        GroupIndex = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 143
    Width = 759
    Height = 320
    Align = alClient
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 757
      Height = 318
      Align = alClient
      TabOrder = 0
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 128
  end
  object DataSource1: TDataSource
    Left = 504
    Top = 16
  end
end
