object FrmSeleccionarCargo: TFrmSeleccionarCargo
  Left = 0
  Top = 0
  Caption = 'Seleccionar Puesto de Trabajo'
  ClientHeight = 411
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 447
    Height = 329
    Align = alClient
    TabOrder = 0
    object cxGridCargos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCargo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridCargosColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'CodigoCargo'
      end
      object cxGridCargosColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'TituloCargo'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGridCargos
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 447
    Height = 41
    Align = alBottom
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 289
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Aceptar'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 364
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    Seleccione un Puesto de Trabajo:'
    TabOrder = 2
  end
  object dsCargo: TDataSource
    DataSet = ClientModule1.cdCargo
    Left = 216
    Top = 208
  end
end
