object FrmAnalizaPerfiles: TFrmAnalizaPerfiles
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Analizar Perfiles'
  ClientHeight = 178
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 613
    Height = 145
    Align = alTop
    Caption = 
      'Indique el rango de exactitud que desea  para an'#225'lisis de Perfil' +
      'es'
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 21
      Top = 32
      Width = 36
      Height = 13
      Caption = 'Desde:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 165
      Top = 32
      Width = 34
      Height = 13
      Caption = 'Hasta:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 21
      Top = 57
      Width = 607
      Height = 48
      AutoSize = False
      Caption = 
        'Estos valores determinan la exactitud que deben cumplir un conju' +
        'nto de documentos presentados por un postulante comparativamente' +
        ' con la cantidad de documentos que requiere una vacante para ser' +
        ' ocupada, un rango del 100/100 representa que todos los document' +
        'os deber'#225'n ser presentados por el postulante a manera de m'#237'nimos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel
      Left = 22
      Top = 99
      Width = 35
      Height = 13
      Caption = 'Filtros:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel5: TJvLabel
      Left = 424
      Top = 99
      Width = 58
      Height = 13
      Caption = 'Porcentaje:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object seInicio: TSpinEdit
      Left = 63
      Top = 29
      Width = 73
      Height = 22
      Increment = 10
      MaxValue = 100
      MinValue = 0
      TabOrder = 0
      Value = 100
    end
    object seFin: TSpinEdit
      Left = 205
      Top = 29
      Width = 73
      Height = 22
      Increment = 10
      MaxValue = 200
      MinValue = 1
      TabOrder = 1
      Value = 100
    end
    object ComboBox1: TComboBox
      Left = 21
      Top = 116
      Width = 372
      Height = 21
      TabOrder = 2
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
    end
    object CalcExperiencia: TJvCalcEdit
      Left = 424
      Top = 116
      Width = 145
      Height = 21
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 438
    Top = 151
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 530
    Top = 149
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41208.780192129600000000
    ReportOptions.LastChange = 41325.539178831000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 136
    Datasets = <
      item
        DataSet = frdsDoctosxCargo
        DataSetName = 'frdsDoctosxCargo'
      end
      item
        DataSet = frdsDocumentosPostulante
        DataSetName = 'frdsDocumentosPostulante'
      end
      item
        DataSet = frdsPerfiles
        DataSetName = 'frdsPerfiles'
      end
      item
        DataSet = FrmCatalogoPostulantes.frxDBDPostulante
        DataSetName = 'frxDBDPostulante'
      end
      item
        DataSet = FrmCatalogoPostulantes.frxDBOrganizacion
        DataSetName = 'frxDBOrganizacion'
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
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 536.693260000000000000
        Width = 740.409927000000000000
        DataSet = frdsPerfiles
        DataSetName = 'frdsPerfiles'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TituloCargo'
          DataSet = frdsPerfiles
          DataSetName = 'frdsPerfiles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[frdsPerfiles."TituloCargo"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frdsPerfiles
          DataSetName = 'frdsPerfiles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            ' [frdsPerfiles."CodigoCargo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 653.858690000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frdsPerfiles
          DataSetName = 'frdsPerfiles'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frdsPerfiles."Factor"] %')
          ParentFont = False
        end
        object frdsPerfilesExperiencia: TfrxMemoView
          Left = 377.953000000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Experiencia'
          DataSet = frdsPerfiles
          DataSetName = 'frdsPerfiles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[frdsPerfiles."Experiencia"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 733.228820000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 495.118430000000000000
        Width = 740.409927000000000000
        Condition = 'False'
        object Memo6: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            ' C'#243'digo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 98.267780000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Cargo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 653.858690000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Factor  ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 377.953000000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8W = (
            'Cargo')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 90.708720000000000000
        Top = 173.858380000000000000
        Width = 740.409927000000000000
        object Memo16: TfrxMemoView
          Top = 15.118120000000010000
          Width = 737.008350000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000110000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDPostulante."codigopostulante"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000210000
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDPostulante."NombreCompleto"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 49.133890000000000000
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        Condition = 'frdsDocumentosPostulante."idpostulante"'
        object Memo19: TfrxMemoView
          Width = 737.008350000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.000000000000057000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Documentos presentados por el Postulante:')
        end
        object Memo17: TfrxMemoView
          Left = 529.134200000000000000
          Top = 26.456709999999870000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha Exp.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 638.740570000000000000
          Top = 26.456709999999870000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha Vig.')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 359.055350000000000000
        Width = 740.409927000000000000
        DataSet = frdsDocumentosPostulante
        DataSetName = 'frdsDocumentosPostulante'
        RowCount = 0
        object Memo20: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 7.559060000000000000
          Width = 506.457020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nombredocumento'
          DataSet = frdsDocumentosPostulante
          DataSetName = 'frdsDocumentosPostulante'
          Memo.UTF8W = (
            '[frdsDocumentosPostulante."nombredocumento"]')
        end
        object Memo14: TfrxMemoView
          Left = 529.134200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fechaexpedicion'
          DataSet = frdsDocumentosPostulante
          DataSetName = 'frdsDocumentosPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsDocumentosPostulante."fechaexpedicion"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 638.740570000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fechavigencia'
          DataSet = frdsDocumentosPostulante
          DataSetName = 'frdsDocumentosPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsDocumentosPostulante."fechavigencia"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 22.677180000000000000
        Top = 578.268090000000000000
        Width = 740.409927000000000000
        DataSet = frdsDoctosxCargo
        DataSetName = 'frdsDoctosxCargo'
        RowCount = 0
        object Memo24: TfrxMemoView
          Left = 0.425170000000001000
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 37.795300000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[frdsDoctosxCargo."nombredocumento"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 740.409927000000000000
        object Memo11: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 26.456710000000000000
        Top = 445.984540000000000000
        Width = 740.409927000000000000
        object Memo23: TfrxMemoView
          Width = 737.008350000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000136000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'El perfil del Postulante aplica para los siguientes Cargos:')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 49.133890000000000000
        Top = 623.622450000000000000
        Width = 740.409927000000000000
        object Memo25: TfrxMemoView
          Width = 737.008350000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000045000
          Width = 359.055350000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'El "Factor" representa el porcentaje de aproximaci'#243'n que los doc' +
              'umentos presentados por el Postulante se ajustan a los documento' +
              's requeridos por el Cargo')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo26: TfrxMemoView
          Width = 737.008350000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 10.338590000000000000
          Top = 6.779529999999991000
          Width = 68.031540000000000000
          Height = 79.370130000000000000
          ShowHint = False
          DataField = 'imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBOrganizaciontituloorganizacion: TfrxMemoView
          Left = 93.488250000000000000
          Top = 3.000000000000000000
          Width = 638.740570000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'tituloorganizacion'
          DataSet = FrmCatalogoPostulantes.frxDBOrganizacion
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBOrganizacion."tituloorganizacion"]')
          ParentFont = False
        end
        object frxDBOrganizaciondescripcion: TfrxMemoView
          Left = 93.488250000000000000
          Top = 33.236240000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'descripcion'
          DataSet = FrmCatalogoPostulantes.frxDBOrganizacion
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBOrganizacion."descripcion"]')
          ParentFont = False
        end
        object frxDBOrganizacionrfc: TfrxMemoView
          Left = 93.488250000000000000
          Top = 55.913420000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rfc'
          DataSet = FrmCatalogoPostulantes.frxDBOrganizacion
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOrganizacion."rfc"]')
          ParentFont = False
        end
        object frxDBOrganizaciontelefono1: TfrxMemoView
          Left = 414.748300000000000000
          Top = 55.913420000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCatalogoPostulantes.frxDBOrganizacion
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' [frxDBOrganizacion."telefono1"]')
          ParentFont = False
        end
      end
    end
  end
  object cdPerfiles: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 133
  end
  object frdsPerfiles: TfrxDBDataset
    UserName = 'frdsPerfiles'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Activo=Activo'
      'codigocargo=codigocargo'
      'Grupo=Grupo'
      'idcargo=idcargo'
      'iddocumentos=iddocumentos'
      'IdSalario=IdSalario'
      'nivel=nivel'
      'titulocargo=titulocargo'
      'ExperienciaPostulanteDias=ExperienciaPostulanteDias'
      'factor=factor'
      'Experiencia=Experiencia')
    BCDToCurrency = False
    Left = 376
    Top = 133
  end
  object cdDoctosxCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 16
  end
  object dsPerfiles: TDataSource
    DataSet = cdPerfiles
    Left = 360
    Top = 133
  end
  object frdsDoctosxCargo: TfrxDBDataset
    UserName = 'frdsDoctosxCargo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idcargo=idcargo'
      'codigocargo=codigocargo'
      'titulocargo=titulocargo'
      'iddocumento=iddocumento'
      'nombredocumento=nombredocumento'
      'descripcion=descripcion')
    DataSet = cdDoctosxCargo
    BCDToCurrency = False
    Left = 32
    Top = 16
  end
  object cdDocumentosPostulante: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 40
  end
  object frdsDocumentosPostulante: TfrxDBDataset
    UserName = 'frdsDocumentosPostulante'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iddocxpostulante=iddocxpostulante'
      'iddocumento=iddocumento'
      'fechaexpedicion=fechaexpedicion'
      'fechavigencia=fechavigencia'
      'fechaaplicacion=fechaaplicacion'
      'documento=documento'
      'idpostulante=idpostulante'
      'codigodocumentospersonal=codigodocumentospersonal'
      'nombredocumento=nombredocumento'
      'descripcion=descripcion')
    DataSet = cdDocumentosPostulante
    BCDToCurrency = False
    Left = 416
  end
  object frcdpefilesplaza: TfrxDBDataset
    UserName = 'frcdpefilesplaza'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodigoPlazaDetalle=CodigoPlazaDetalle'
      'Fecha=Fecha'
      'FechaContratacion=FechaContratacion'
      'FechaRequerido=FechaRequerido'
      'IdCargo=IdCargo'
      'IdDepartamento=IdDepartamento'
      'codigocargo=codigocargo'
      'Grupo=Grupo'
      'iddocumentos=iddocumentos'
      'IdSalario=IdSalario'
      'nivel=nivel'
      'titulocargo=titulocargo'
      'CodigoPlaza=CodigoPlaza'
      'IdSolicitante=IdSolicitante'
      'Observaciones=Observaciones'
      'Factor=Factor'
      'titulodepartamento=titulodepartamento'
      'titulocargo=titulocargo')
    BCDToCurrency = False
    Left = 224
    Top = 16
  end
  object clientdata: TDataSource
    Left = 408
    Top = 56
  end
  object frxDBVacanteXPostulante: TfrxDBDataset
    UserName = 'frxDBVacanteXPostulante'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Activo=Activo'
      'AMaterno=AMaterno'
      'APaterno=APaterno'
      'Calle=Calle'
      'Ciudad=Ciudad'
      'Ciudad=Ciudad'
      'codigopostulante=codigopostulanteb'
      'Colonia=Colonia'
      'Contacto=Contacto'
      'CP=CP'
      'curp=curp'
      'Estado=Estado'
      'fechaalta=fechaalta'
      'gruposanguineo=gruposanguineo'
      'IdPlazaDetalle=IdPlazaDetalle'
      'idpostulante=idpostulante'
      'Imagen=Imagen'
      'Municipio=Municipio'
      'Nombres=Nombres'
      'numerosegurosocial=numerosegurosocial'
      'Pais=Pais'
      'rfc=rfc'
      'telefono=telefono'
      'TelefonoContacto=TelefonoContacto'
      'factor=factor')
    BCDToCurrency = False
    Left = 256
    Top = 16
  end
  object cdvacante: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 8
  end
  object frxDBplazadetalle: TfrxDBDataset
    UserName = 'frxDBplazadetalle'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPlazaDetalle=IdPlazaDetalle'
      'IdPlaza=IdPlaza'
      'CodigoPlaza=CodigoPlaza'
      'CodigoPlazaDetalle=CodigoPlazaDetalle'
      'IdDepartamento=IdDepartamento'
      'codigodepartamento=codigodepartamento'
      'titulodepartamento=titulodepartamento'
      'IdCargo=IdCargo'
      'codigocargo=codigocargo'
      'titulocargo=titulocargo'
      'IdPersonal=IdPersonal'
      'IdUsuario=IdUsuario'
      'Fecha=Fecha'
      'FechaRequerido=FechaRequerido'
      'FechaContratacion=FechaContratacion'
      'DoctoAutorizacion=DoctoAutorizacion'
      'Activo=Activo'
      'idgrupo=idgrupo')
    DataSet = cdvacante
    BCDToCurrency = False
    Left = 280
    Top = 16
  end
  object frxDBOrganizacion: TfrxDBDataset
    UserName = 'frxDBOrganizacion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigoorganizacion=codigoorganizacion'
      'nombreorganizacion=nombreorganizacion'
      'tituloorganizacion=tituloorganizacion'
      'descripcion=descripcion'
      'comentarios=comentarios'
      'telefono1=telefono1'
      'telefono2=telefono2'
      'telefono3=telefono3'
      'telefono4=telefono4'
      'telefono5=telefono5'
      'rfc=rfc'
      'codigopadre=codigopadre')
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 136
    Top = 65528
  end
  object MemPerfiles: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 133
  end
  object CdPerfilVacante: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 63
  end
  object MemPerfilVacante: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 62
  end
  object frxDBPerfilVacante: TfrxDBDataset
    UserName = 'frxDBPerfilVacante'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodigoPlazaDetalle=CodigoPlazaDetalle'
      'Fecha=Fecha'
      'FechaContratacion=FechaContratacion'
      'FechaRequerido=FechaRequerido'
      'IdCargo=IdCargo'
      'IdDepartamento=IdDepartamento'
      'codigocargo=codigocargo'
      'Grupo=Grupo'
      'iddocumentos=iddocumentos'
      'IdSalario=IdSalario'
      'nivel=nivel'
      'titulocargo=titulocargo'
      'CodigoPlaza=CodigoPlaza'
      'IdSolicitante=IdSolicitante'
      'Observaciones=Observaciones'
      'titulodepartamento=titulodepartamento'
      'codigoorganizacion=codigoorganizacion'
      'UnidadExperiencia=UnidadExperiencia'
      'ExperienciaMinimaMeses=ExperienciaMinimaMeses'
      'ExperienciaPostulanteDias=ExperienciaPostulanteDias'
      'FactorExp=FactorExp'
      'FactorDoc=FactorDoc'
      'Experiencia=Experiencia'
      'ExperienciaReq=ExperienciaReq')
    BCDToCurrency = False
    Left = 196
    Top = 63
  end
end
