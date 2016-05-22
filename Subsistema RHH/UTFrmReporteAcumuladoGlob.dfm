object FrmReporteAcumuladoGlob: TFrmReporteAcumuladoGlob
  Left = 0
  Top = 0
  Caption = 'Reporte Acumulado Global'
  ClientHeight = 353
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 384
    Top = 8
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 0
    OnClick = btn1Click
  end
  object cdDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 216
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 200
  end
  object memRubrosIMSS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 200
  end
  object memPercepciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 104
  end
  object memObligacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 152
  end
  object memDeptoPercepciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 56
  end
  object memDeducciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 24
  end
  object memDeptoDeducciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 72
  end
  object cdGruposConcepto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 256
  end
  object cdDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 144
  end
  object cdNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 160
  end
  object cdRegistroPatronal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 216
  end
end
