object FrmListaNominasExcel: TFrmListaNominasExcel
  Left = 0
  Top = 0
  Caption = 'Exportar N'#243'minas a Excel'
  ClientHeight = 362
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CxGridMain: TcxGrid
    Left = 0
    Top = 0
    Width = 662
    Height = 321
    Align = alClient
    TabOrder = 2
    LockedStateImageOptions.Effect = lsieLight
    RootLevelOptions.DetailTabsPosition = dtpLeft
    object CxGridNominas: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object CxColumnAnio: TcxGridDBColumn
      end
      object CxColumnTipoNomina: TcxGridDBColumn
      end
      object CxColumnTituloNomina: TcxGridDBColumn
        Width = 256
      end
    end
    object CxGridMainDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object CxColumnCxGridMainDBTableView1Column1: TcxGridDBColumn
      end
    end
    object CxGridMainDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object CxGridMainDBTableView2Column1: TcxGridDBColumn
      end
    end
  end
  object pnlBotones: TPanel
    Left = 0
    Top = 321
    Width = 662
    Height = 41
    Align = alBottom
    Caption = 'pnlBotones'
    TabOrder = 5
  end
  object DxBManagerMain: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 600
    Top = 24
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object CdNominas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 88
  end
  object dsNominas: TDataSource
    Left = 512
    Top = 88
  end
  object CdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 144
  end
end
