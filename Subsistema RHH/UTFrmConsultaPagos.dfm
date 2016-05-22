object FrmConsultaPagos: TFrmConsultaPagos
  Left = 0
  Top = 0
  Caption = 'Consulta de Pagos'
  ClientHeight = 258
  ClientWidth = 744
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 744
    Height = 258
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 447
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPagos
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,###,###,##9.99'
          FieldName = 'Importe'
          Column = cxGrid1DBTableView1Importe1
          DisplayText = 'Totalesxxxxxxx'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###,##9.99'
          Kind = skSum
          FieldName = 'Importe'
          Column = cxGrid1DBTableView1Importe1
          DisplayText = 'Totalesssssssss'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1TituloReferencia1: TcxGridDBColumn
        DataBinding.FieldName = 'TituloReferencia'
        Visible = False
        GroupIndex = 0
      end
      object cxGrid1DBTableView1Referencia1: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Visible = False
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Codigo Personal'
        DataBinding.FieldName = 'CodigoPersonal'
        Width = 100
      end
      object cxGrid1DBTableView1NombreCompleto1: TcxGridDBColumn
        Caption = 'Nombre Completo'
        DataBinding.FieldName = 'NombreCompleto'
        Width = 300
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Salario'
        FooterAlignmentHorz = taRightJustify
        GroupSummaryAlignment = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taRightJustify
        Width = 80
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Sal. Integ.'
        DataBinding.FieldName = 'SalarioIntegrado'
        Width = 78
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Puesto'
        DataBinding.FieldName = 'TituloCargo'
        Width = 118
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Departamento'
        DataBinding.FieldName = 'TituloDepartamento'
        Width = 122
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Inicio'
        DataBinding.FieldName = 'FechaInicio'
        Width = 79
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = 'T'#233'rmino'
        DataBinding.FieldName = 'FechaTermino'
        Width = 75
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = 'Dias Trab.'
        DataBinding.FieldName = 'DIAST'
        HeaderAlignmentHorz = taRightJustify
      end
      object cxGrid1DBTableView1Importe1: TcxGridDBColumn
        DataBinding.FieldName = 'Importe'
        FooterAlignmentHorz = taRightJustify
        GroupSummaryAlignment = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 115
      end
    end
    object cxGrid1TableView1: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPagos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView2Column1: TcxGridDBColumn
        DataBinding.FieldName = 'IdPersonal'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cdPagos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 64
  end
  object dsPagos: TDataSource
    DataSet = cdPagos
    Left = 304
    Top = 64
  end
end
