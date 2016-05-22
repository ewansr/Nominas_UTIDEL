object FrmDimm: TFrmDimm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Generador DIMM'
  ClientHeight = 271
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxSpinAnio: TcxSpinEdit
    Left = 41
    Top = 211
    TabOrder = 0
    Width = 272
  end
  object btn1: TcxButton
    Left = 157
    Top = 238
    Width = 75
    Height = 25
    Caption = '&Generar'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btnCancel: TcxButton
    Left = 238
    Top = 238
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    ModalResult = 3
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object lstTipoNomina: TcxCheckListBox
    Left = 8
    Top = 24
    Width = 305
    Height = 181
    Columns = 2
    Items = <>
    TabOrder = 3
  end
  object cxlbl1: TcxLabel
    Left = 8
    Top = 212
    Caption = 'A'#241'o:'
    Transparent = True
  end
  object cxlbl2: TcxLabel
    Left = 8
    Top = 8
    Caption = 'Seleccionar los tipos de N'#243'mina:'
    Transparent = True
  end
  object CdDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 112
  end
  object CdCuerpo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 64
  end
  object CdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 160
  end
  object dsTipoNomina: TDataSource
    DataSet = CdTipoNomina
    Left = 296
    Top = 16
  end
  object dxrbnrdlmn1: TdxRibbonRadialMenu
    ItemLinks = <>
    UseOwnFont = False
    Left = 208
  end
end
