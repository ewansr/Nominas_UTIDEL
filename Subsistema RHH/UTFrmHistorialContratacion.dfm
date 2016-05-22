object FrmHistorialContratacion: TFrmHistorialContratacion
  Left = 0
  Top = 0
  Caption = 'Consulta de Altas y bajas del Personal'
  ClientHeight = 430
  ClientWidth = 662
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
  object CxGridMain: TcxGrid
    Left = 0
    Top = 0
    Width = 662
    Height = 430
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    ExplicitLeft = 56
    ExplicitTop = 48
    ExplicitWidth = 250
    ExplicitHeight = 200
    object CxGridDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPersonalImss
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object CxColumnEmpleado: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'NombreCompleto'
        Width = 134
      end
      object CxColumnLeyendaGuardia: TcxGridDBColumn
        Caption = 'Guardia'
        DataBinding.FieldName = 'LeyendaGuardia'
        Visible = False
        GroupIndex = 0
      end
    end
    object CxLevel1: TcxGridLevel
      Caption = 'Altas y bajas del Personal [TONO]'
      GridView = CxGridDatos
      Options.DetailTabsPosition = dtpTop
    end
  end
  object CdPersonalImss: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 144
  end
  object dsPersonalImss: TDataSource
    DataSet = CdPersonalImss
    Left = 416
    Top = 232
  end
end
