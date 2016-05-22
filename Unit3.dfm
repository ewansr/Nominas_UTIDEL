object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 465
  ClientWidth = 682
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
  object Button1: TButton
    Left = 320
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = -8
    Top = 8
    Width = 320
    Height = 120
    DataSource = dsDatos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40977.487444479200000000
    ReportOptions.LastChange = 40977.487444479200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'var'
      
        '  MemoFirma : TfrxMemoView;                                     ' +
        '                                         '
      'begin'
      '                 '
      ' {      MemoFirma := TfrxMemoView.create(self);        }  '
      '       MemoFirma.Width := 2.50;'
      '       MemoFirma.Height := 2.50;'
      '       MemoFirma.left := 1.90;'
      '       MemoFirma.Top := 2.00;       '
      
        '                                                                ' +
        '                '
      'end.  '
      '')
    Left = 392
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object frxDBDataSet1: TfrxDBDataset
    UserName = 'frxDBDataSet1'
    CloseDataSource = False
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 312
  end
  object dsDatos: TDataSource
    DataSet = cdDatos
    Left = 392
    Top = 48
  end
  object cdDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 310
    Top = 48
  end
end
