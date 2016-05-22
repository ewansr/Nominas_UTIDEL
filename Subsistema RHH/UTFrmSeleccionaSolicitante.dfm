object FrmSeleccionaSolicitante: TFrmSeleccionaSolicitante
  Left = 0
  Top = 0
  Caption = 'Seleccionar Solicitante'
  ClientHeight = 288
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 447
    Height = 247
    Align = alClient
    TabOrder = 0
    ExplicitTop = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSolicitantes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'CodigoPersonal'
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'NombreCompleto'
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'TituloCargo'
        Visible = False
        GroupIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 247
    Width = 447
    Height = 41
    Align = alBottom
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    TabOrder = 1
    object btn_Ok: TcxButton
      Left = 289
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Ok'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 184
    end
    object btn_Cancelar: TcxButton
      Left = 364
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 344
      ExplicitTop = 6
    end
  end
  object dsSolicitantes: TDataSource
    Left = 328
    Top = 80
  end
end
