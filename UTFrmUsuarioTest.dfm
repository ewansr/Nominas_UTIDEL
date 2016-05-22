object FrmUsuarioTest: TFrmUsuarioTest
  Left = 0
  Top = 0
  Caption = 'FrmUsuarioTest'
  ClientHeight = 428
  ClientWidth = 913
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
  object Rejilla: TStringGrid
    Left = 112
    Top = 16
    Width = 737
    Height = 81
    ColCount = 11
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 104
    Top = 128
    Width = 745
    Height = 273
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ClientModule1.DSCliente
    Left = 24
    Top = 136
  end
end
