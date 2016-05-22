object FrmConsultaFichaPersonal: TFrmConsultaFichaPersonal
  Left = 0
  Top = 0
  Caption = 'FrmConsultaFichaPersonal'
  ClientHeight = 202
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
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 41502.718048807900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 216
    Top = 104
    Datasets = <
      item
        DataSetName = 'frxDBDocxPostulante'
      end
      item
        DataSetName = 'frxDBDPersonal'
      end
      item
        DataSetName = 'frxDBOrganizacion'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end>
    Variables = <
      item
        Name = ' Titulo'
        Value = Null
      end
      item
        Name = 'Contrato'
        Value = Null
      end
      item
        Name = 'organizacion'
        Value = Null
      end
      item
        Name = 'tituloorganizacion'
        Value = Null
      end
      item
        Name = 'nivel'
        Value = Null
      end
      item
        Name = 'autorizonombre'
        Value = Null
      end
      item
        Name = 'autorizopuesto'
        Value = Null
      end
      item
        Name = 'solicitonombre'
        Value = Null
      end
      item
        Name = 'solicitopuesto'
        Value = Null
      end
      item
        Name = 'rfc'
        Value = Null
      end
      item
        Name = 'domicilioorg'
        Value = Null
      end
      item
        Name = 'domiciliofiscalorg'
        Value = Null
      end
      item
        Name = 'telefono1'
        Value = Null
      end
      item
        Name = 'numerotexto'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object NAda: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 427.086604410000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo26: TfrxMemoView
          Width = 740.787401570000000000
          Height = 94.488250000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 7.559060000000000000
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
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 638.740570000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'tituloorganizacion'
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBOrganizacion."tituloorganizacion"]')
          ParentFont = False
        end
        object frxDBOrganizaciondescripcion: TfrxMemoView
          Left = 94.488250000000000000
          Top = 26.456710000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'descripcion'
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
        object Memo1: TfrxMemoView
          Left = 94.488250000000000000
          Top = 56.692950000000000000
          Width = 638.740570000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ficha t'#233'cnica de Personal')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 94.488250000000000000
          Width = 740.787404020000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Century'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            ' [frxDBDPersonal."NombreCompleto"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 120.944960000000000000
          Height = 117.165430000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSetName = 'frxDBDPersonal'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo6: TfrxMemoView
          Left = 125.196845510000000000
          Top = 189.007847170000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CURP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPostulantecurp: TfrxMemoView
          Left = 252.921254960000000000
          Top = 189.007847170000000000
          Width = 411.968503940000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'curp'
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."curp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 125.196845510000000000
          Top = 207.905484960000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RFC:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPostulanterfc: TfrxMemoView
          Left = 252.921254960000000000
          Top = 207.905484960000000000
          Width = 411.968503940000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rfc'
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."rfc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 125.196845510000000000
          Top = 226.803122760000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'GRUPO SANGUINEO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPostulantegruposanguineo: TfrxMemoView
          Left = 252.921460000000000000
          Top = 226.803122760000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'gruposanguineo'
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."gruposanguineo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 125.196970000000000000
          Top = 132.283550000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CODIGO PERSONAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPostulantecodigopostulante: TfrxMemoView
          Left = 252.921460000000000000
          Top = 132.283550000000000000
          Width = 411.968503940000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."CodigoPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 125.196845510000000000
          Top = 151.181200000000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ASIGNADO A PLAZA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPostulanteIdPlazaDetalle: TfrxMemoView
          Left = 252.921254960000000000
          Top = 151.181200000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IdPlazaDetalle'
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."IdPlazaDetalle"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 125.196845510000000000
          Top = 170.110221570000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA CAPTURA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPostulantefechaalta: TfrxMemoView
          Left = 252.921254960000000000
          Top = 170.110221570000000000
          Width = 411.968503940000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fechaalta'
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."fechaalta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 260.787570000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Black'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'DOMICILIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 18.897650000000000000
          Top = 309.921460000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COLONIA:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 291.023810000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CALLE Y N'#218'MERO:')
          ParentFont = False
          VAlign = vaBottom
        end
        object frxDBDPostulanteCalle: TfrxMemoView
          Left = 120.944960000000000000
          Top = 291.023810000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."Calle"], [frxDBDPersonal."Numero"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object frxDBDPostulanteColonia: TfrxMemoView
          Left = 120.944960000000000000
          Top = 312.700990000000000000
          Width = 600.945270000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."Colonia"], [frxDBDPersonal."CP"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 355.275820000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Black'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'CONTACTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPostulantetelefono: TfrxMemoView
          Left = 3.779530000000000000
          Top = 381.732530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telefono'
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."telefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 3.779530000000000000
          Top = 404.409710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TEL'#201'FONO:')
          ParentFont = False
        end
        object frxDBDPostulanteTelefonoContacto: TfrxMemoView
          Left = 71.811070000000000000
          Top = 407.189240000000000000
          Width = 650.079160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TelefonoContacto'
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8W = (
            '[frxDBDPersonal."TelefonoContacto"]')
          ParentFont = False
        end
      end
      object Memo2: TfrxMemoView
        Left = 646.299630000000000000
        Top = -49.133890000000000000
        Width = 740.787404020000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Style = fsDouble
        Frame.Typ = [ftTop]
        Memo.UTF8W = (
          '[frxDBDPersonal."NombreCompleto"]')
        ParentFont = False
        VAlign = vaBottom
      end
      object PageHeader1: TfrxPageHeader
        Height = 59.692950000000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        object Memo27: TfrxMemoView
          Left = 1.000000000000000000
          Top = 7.559059999999990000
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '"DOCUMENTOS PRESENTADOS"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Top = 33.236240000000100000
          Width = 593.386210000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 665.197280000000000000
          Top = 33.236240000000100000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA '
            'VIGENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 593.386210000000000000
          Top = 33.236240000000100000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA EXPEDICION')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 589.606680000000000000
        Width = 740.409927000000000000
        DataSetName = 'frxDBDocxPostulante'
        RowCount = 0
        object iddocxpostulante: TfrxMemoView
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Cursor = crHandPoint
          TagStr = '[frxDBDocxPostulante."iddocxpostulante"]'
          DataField = 'nombredocumento'
          DataSetName = 'frxDBDocxPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDocxPostulante."nombredocumento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDocxPostulantecodigodocumentospersonal: TfrxMemoView
          Left = 593.386210000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fechaexpedicion'
          DataSetName = 'frxDBDocxPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDocxPostulante."fechaexpedicion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDocxPostulantefechaexpedicion: TfrxMemoView
          Left = 665.197280000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fechavigencia'
          DataSetName = 'frxDBDocxPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDocxPostulante."fechavigencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
