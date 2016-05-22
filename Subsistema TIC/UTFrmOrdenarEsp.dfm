object FrmOrdenarEsp: TFrmOrdenarEsp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ordenar Especificaciones'
  ClientHeight = 369
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 336
    Width = 321
    Height = 33
    Align = alBottom
    TabOrder = 0
    object btnMoveUp: TNxButton
      Left = 1
      Top = 1
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Arriba'
      TabOrder = 0
      OnClick = btnMoveUpClick
    end
    object btnMoveDown: TNxButton
      Left = 76
      Top = 1
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Abajo'
      TabOrder = 1
      OnClick = btnMoveDownClick
      ExplicitLeft = 70
      ExplicitTop = 6
    end
    object btnSalir: TNxButton
      Left = 226
      Top = 1
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Salir'
      TabOrder = 2
      OnClick = btnSalirClick
    end
    object btnGuardar: TNxButton
      Left = 151
      Top = 1
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Guardar'
      TabOrder = 3
      OnClick = btnGuardarClick
      ExplicitLeft = 145
      ExplicitTop = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 336
    Align = alClient
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 11
      Top = 11
      Width = 299
      Height = 314
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'TituloDetalle'
          Width = 275
          Visible = True
        end>
    end
  end
  object dsdetalle: TDataSource
    DataSet = mdDetalle
    Left = 224
    Top = 72
  end
  object mdDetalle: TJvMemoryData
    FieldDefs = <>
    Left = 64
    Top = 72
  end
  object MemEspecDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = MemEspecDetalle
    Left = 224
    Top = 128
  end
end
