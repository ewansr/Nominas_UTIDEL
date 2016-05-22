object TFrmHistorialGuardias: TTFrmHistorialGuardias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Historial de Contrataciones'
  ClientHeight = 401
  ClientWidth = 824
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
  object panelTabla: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 353
    Align = alTop
    TabOrder = 0
    object gridHistorialContrataciones: TcxGrid
      Left = 1
      Top = 1
      Width = 822
      Height = 351
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsHistorialContratacion
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object TipoMovimiento: TcxGridDBColumn
          Caption = 'Tipo de Movimiento'
          DataBinding.FieldName = 'TipoMovimiento'
          Width = 98
        end
        object Guardia: TcxGridDBColumn
          Caption = 'Periodo de Guardia'
          DataBinding.FieldName = 'LeyendaGuardia'
          Visible = False
          GroupIndex = 0
          Width = 222
        end
        object fechaalta: TcxGridDBColumn
          Caption = 'fecha de alta'
          DataBinding.FieldName = 'fechaalta'
          Width = 92
        end
        object Titulo: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'Titulo'
          Width = 136
        end
        object TituloSalario: TcxGridDBColumn
          Caption = 'Salario Integrado'
          DataBinding.FieldName = 'SalarioIntegrado'
          Width = 106
        end
        object FechaMovimiento: TcxGridDBColumn
          Caption = 'Fecha de Movimiento'
          DataBinding.FieldName = 'FechaMovimiento'
          Width = 117
        end
        object TituloTipoNomina: TcxGridDBColumn
          Caption = 'Tipo de Nomina'
          DataBinding.FieldName = 'TituloTipoNomina'
          Width = 120
        end
        object TituloGuardia: TcxGridDBColumn
          Caption = 'Guardia'
          DataBinding.FieldName = 'TituloGuardia'
          Width = 124
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        Caption = 'Historial de Contrataciones'
        GridView = cxgrdbtblvwGrid1DBTableView1
        Options.DetailTabsPosition = dtpTop
      end
    end
  end
  object panelBotones: TPanel
    Left = 0
    Top = 353
    Width = 824
    Height = 48
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object btnReporte: TcxButton
      Left = 644
      Top = 10
      Width = 83
      Height = 25
      Caption = 'Imprimir'
      Default = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 0
      OnClick = btnReporteClick
    end
    object btnCerrar: TcxButton
      Left = 733
      Top = 10
      Width = 83
      Height = 25
      Caption = 'Cerrar'
      Default = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      ModalResult = 1
      TabOrder = 1
      OnClick = btnCerrarClick
    end
  end
  object cdHistorialContratacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 528
    Top = 168
  end
  object dsHistorialContratacion: TDataSource
    DataSet = cdHistorialContratacion
    Left = 648
    Top = 168
  end
  object frxReporteHistorialGuardias: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41137.595257256900000000
    ReportOptions.LastChange = 41905.574184236110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 160
    Top = 208
    Datasets = <
      item
        DataSet = dsReporteHistorialGuardias
        DataSetName = 'dsReporteHistorialGuardias'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      HGuides.Strings = (
        '7.55906')
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 5.559060000000000000
          Top = 3.000000000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Top = 120.944960000000000000
          Width = 740.787880000000000000
          Height = 7.559060000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          Frame.Width = 3.000000000000000000
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 158.740260000000000000
          Top = 57.569573340000010000
          Width = 577.596166670000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 158.740260000000000000
          Top = 90.805813340000000000
          Width = 577.596166670000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Top = 2.779530000000001000
          Width = 578.929500000000000000
          Height = 36.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Historial de Contrataciones')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 158.740260000000000000
          Top = 58.472480000000000000
          Width = 577.596166670000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'de Guardias del Personal')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 56.692950000000010000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        Condition = 'dsReporteHistorialGuardias."IdPeriodosGuardia"'
        object dsReporteHistorialGuardiasLeyendaGuardia: TfrxMemoView
          Left = 134.519790000000000000
          Top = 10.000000000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15719113
          DataField = 'LeyendaGuardia'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."LeyendaGuardia"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 6.015770000000000000
          Top = 10.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15719113
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PERIODO DE GUARDIA:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 18.133890000000000000
          Top = 37.574830000000020000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'MOVIMIENTO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 90.165430000000000000
          Top = 37.574830000000020000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'FECHA DE MOV.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 173.315090000000000000
          Top = 37.472480000000020000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NOMINA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 304.598640000000000000
          Top = 37.574830000000020000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'SAL. INTEGRADO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 485.795610000000000000
          Top = 37.574830000000020000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TIPO DE NOMINA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 618.079160000000000000
          Top = 37.574830000000020000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'GUARDIA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 391.630180000000000000
          Top = 37.677180000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'SALARIO DIARIO')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 75.590600000000000000
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        object dsReporteHistorialGuardiasNombreCompleto: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779529999999966000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."NombreCompleto"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779529999999966000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOMBRE:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 18.897650000000000000
          Top = 26.456709999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUESTO:')
          ParentFont = False
        end
        object dsReporteHistorialGuardiastitulocargo: TfrxMemoView
          Left = 71.811070000000000000
          Top = 26.456709999999990000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'titulocargo'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."titulocargo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 18.897650000000000000
          Top = 49.133890000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA DE ALTA:')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasfechaalta1: TfrxMemoView
          Left = 113.385900000000000000
          Top = 49.133890000000010000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fechaalta'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."fechaalta"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 389.291590000000000000
        Width = 740.409927000000000000
        DataSet = dsReporteHistorialGuardias
        DataSetName = 'dsReporteHistorialGuardias'
        RowCount = 0
        object dsReporteHistorialGuardiasTipoMovimiento: TfrxMemoView
          Left = 17.897650000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TipoMovimiento'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."TipoMovimiento"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasfechaalta: TfrxMemoView
          Left = 89.708720000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."FechaMovimiento"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasTitulo: TfrxMemoView
          Left = 172.874150000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Titulo'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."Titulo"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasTituloSalario: TfrxMemoView
          Left = 304.732530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."SalarioIntegrado"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasTituloTipoNomina: TfrxMemoView
          Left = 485.929500000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TituloTipoNomina'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."TituloTipoNomina"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasTituloGuardia: TfrxMemoView
          Left = 618.213050000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TituloGuardia'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."TituloGuardia"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasSalarioDiario: TfrxMemoView
          Left = 391.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SalarioDiario'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."SalarioDiario"]')
          ParentFont = False
        end
      end
    end
  end
  object dsReporteHistorialGuardias: TfrxDBDataset
    UserName = 'dsReporteHistorialGuardias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'TipoMovimiento=TipoMovimiento'
      'fechaalta=fechaalta'
      'Titulo=Titulo'
      'TituloSalario=TituloSalario'
      'FechaMovimiento=FechaMovimiento'
      'TituloTipoNomina=TituloTipoNomina'
      'TituloGuardia=TituloGuardia'
      'LeyendaGuardia=LeyendaGuardia'
      'NombreCompleto=NombreCompleto'
      'titulocargo=titulocargo'
      'IdPeriodosGuardia=IdPeriodosGuardia'
      'SalarioDiario=SalarioDiario'
      'SalarioIntegrado=SalarioIntegrado')
    DataSet = cdHistorialContratacion
    BCDToCurrency = False
    Left = 304
    Top = 208
  end
end
