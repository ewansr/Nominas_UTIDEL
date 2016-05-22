object FrmFormatosEmbarcados: TFrmFormatosEmbarcados
  Left = 0
  Top = 0
  Caption = 'FrmFormatosEmbarcados'
  ClientHeight = 452
  ClientWidth = 822
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
  object cxbtnExporta: TcxButton
    Left = 16
    Top = 40
    Width = 75
    Height = 25
    Caption = 'cxbtnExporta'
    TabOrder = 0
    OnClick = cxbtnExportaClick
  end
  object cdConceptosNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 136
  end
  object cdDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 200
  end
  object cdDatosEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 288
  end
end
