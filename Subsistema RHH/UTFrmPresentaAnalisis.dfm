object FrmPresentaAnalisis: TFrmPresentaAnalisis
  Left = 0
  Top = 0
  Caption = 'Presentaci'#243'n de An'#225'lisis de Personal'
  ClientHeight = 438
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseMove = FormMouseMove
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PreviewAnalisis: TfrxPreview
    Left = 0
    Top = 41
    Width = 870
    Height = 356
    Hint = 'Mostrar Documentos'
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 397
    Width = 870
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object PanelMovimiento: TPanel
    Left = 32
    Top = 41
    Width = 585
    Height = 290
    TabOrder = 3
    Visible = False
    object cxLabel1: TcxLabel
      Left = 32
      Top = 45
      Caption = 'Nombre:'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 428
      Top = 15
      Caption = 'Condici'#243'n:'
      Transparent = True
    end
    object lblDocumentacion2: TcxLabel
      Left = 32
      Top = 91
      Caption = 'Documentaci'#243'n Entregada:'
      Transparent = True
    end
    object lblDocumentacion1: TcxLabel
      Left = 32
      Top = 68
      Caption = 'Documentaci'#243'n Requerida:'
      Transparent = True
    end
    object PanelBotones: TPanel
      Left = 1
      Top = 245
      Width = 583
      Height = 44
      Align = alBottom
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 4
      object btnAceptar: TcxButton
        Left = 427
        Top = 11
        Width = 75
        Height = 27
        Align = alRight
        Caption = 'Aceptar'
        ModalResult = 6
        TabOrder = 0
        OnClick = btnAceptarClick
      end
      object btnCancelar: TcxButton
        Left = 502
        Top = 11
        Width = 75
        Height = 27
        Align = alRight
        Caption = 'Cancelar'
        ModalResult = 2
        TabOrder = 1
      end
      object lblAsignadoInfo: TcxLabel
        Left = 5
        Top = 32
        Caption = 
          '*Asignado, se consierar'#225' al Postulante para ocupar esta plaza de' +
          ' manera definitiva.'
        Style.TextColor = clBlue
        Transparent = True
        Visible = False
      end
      object lblPostulanteInfo: TcxLabel
        Left = 5
        Top = 20
        Caption = 
          '*Postulante, se considerar'#225' a esta persona como Postulante a est' +
          'a plaza.'
        Style.TextColor = clGreen
        Transparent = True
        Visible = False
      end
      object lblPersonalInfo: TcxLabel
        Left = 5
        Top = 6
        Caption = 
          '*Personal, se dejar'#225' de considerar a esta persona como Postulant' +
          'e a esta plaza.'
        Style.TextColor = clRed
        Transparent = True
      end
    end
    object lblPregunta: TcxLabel
      Left = 1
      Top = 155
      Align = alBottom
      AutoSize = False
      Caption = #191'Pregunta del millon?'
      Style.BorderStyle = ebsNone
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 40
      Width = 583
      AnchorX = 293
      AnchorY = 175
    end
    object lblNombre: TcxLabel
      Left = 83
      Top = 45
      Caption = 'Nombre:'
      Transparent = True
    end
    object lblStatus: TcxLabel
      Left = 497
      Top = 15
      Caption = 'Status'
      Transparent = True
    end
    object lblRequerido: TcxLabel
      Left = 172
      Top = 68
      HelpType = htKeyword
      HelpKeyword = 'Hola'
      AutoSize = False
      Caption = 'Documentaci'#243'n Requerida'
      DragCursor = crHandPoint
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clGradientActiveCaption
      Transparent = True
      OnClick = lblRequeridoClick
      Height = 17
      Width = 129
    end
    object lblEntregado: TcxLabel
      Left = 171
      Top = 91
      Caption = 'Documentaci'#243'n Entregada'
      DragCursor = crHandPoint
      DragMode = dmAutomatic
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 32
      Top = 15
      Caption = 'Codigo Personal:'
      Transparent = True
    end
    object lblCodigo: TcxLabel
      Left = 123
      Top = 15
      Caption = 'Codigo'
      Transparent = True
    end
    object lblDocumentacion3: TcxLabel
      Left = 32
      Top = 114
      Caption = 'Documentaci'#243'n Adicional:'
      Transparent = True
    end
    object lblAdicional: TcxLabel
      Left = 171
      Top = 114
      Caption = 'Documentaci'#243'n Adicional'
      Transparent = True
    end
    object rgCondicion2: TcxRadioGroup
      Left = 1
      Top = 195
      Align = alBottom
      Caption = 'Condici'#243'n'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Personal'
        end
        item
          Caption = 'Asignado'
        end>
      Properties.OnEditValueChanged = RGCondicion2PropertiesEditValueChanged
      Style.BorderStyle = ebsNone
      TabOrder = 14
      Visible = False
      Height = 50
      Width = 583
    end
    object gridDocumentos: TcxGrid
      Left = 248
      Top = 45
      Width = 284
      Height = 86
      TabOrder = 15
      Visible = False
      object gridListaDocumentos1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsDocumentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object ColumnaNombre: TcxGridDBColumn
          Caption = 'Documentaci'#243'n Requerida'
          DataBinding.FieldName = 'NombreDocumento'
        end
      end
      object gridDocumentosLevel1: TcxGridLevel
        GridView = gridListaDocumentos1
      end
    end
  end
  object ReporteAnalisis: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = PreviewAnalisis
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42135.788111053200000000
    ReportOptions.LastChange = 42138.705504710650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Child1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Child1.Visible := <AnalisisPostulante."TituloOrganizacion"> <>' +
        ' '#39#39';               '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  MasterData1.Visible := <AnalisisPostulante."NombreDocumento"> ' +
        '<> '#39#39';                                                          ' +
        '                                                                ' +
        '                '
      'end;'
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <AnalisisPostulante."NumeroDocumentos"> = <AnalisisPostulan' +
        'te."CtaDoc"> then'
      '  begin              '
      '    NumeroDocumentos.Font.Color := clGreen;'
      '    CtaDoc.Font.Color := clGreen;'
      
        '    CtaMaxExtra.Font.Color := clGreen;                          ' +
        '                                               '
      '  end;                  '
      ''
      
        '  if (<AnalisisPostulante."NumeroDocumentos"> > <AnalisisPostula' +
        'nte."CtaDoc">) and (<AnalisisPostulante."CtaDoc"> > 0) then'
      '  begin              '
      '    NumeroDocumentos.Font.Color := clBlue;'
      '    CtaDoc.Font.Color := clBlue;'
      
        '    CtaMaxExtra.Font.Color := clBlue;                           ' +
        '                                              '
      '  end;                  '
      ''
      '  if <AnalisisPostulante."CtaDoc"> = 0 then'
      '  begin              '
      '    NumeroDocumentos.Font.Color := clRed;'
      '    CtaDoc.Font.Color := clRed;'
      
        '    CtaMaxExtra.Font.Color := clRed;                            ' +
        '                                             '
      '  end;    '
      'end;'
      ''
      'procedure BanderinRojoOnBeforePrint(Sender: TfrxComponent);'
      'begin  '
      
        '  if (<AnalisisPostulante."Asignado"> = '#39'No'#39') and (<AnalisisPost' +
        'ulante."Postulado"> = 0) then'
      '  begin              '
      '    banderinRojo.Top := 3;  '
      
        '    BanderinRojo.Visible := True;                               ' +
        '                                         '
      '  end'
      '  else'
      '    BanderinRojo.Visible := False;             '
      '    '
      'end;'
      ''
      'procedure BanderinAzulOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<AnalisisPostulante."Asignado"> = '#39'Si'#39') and (<AnalisisPost' +
        'ulante."Postulado"> = 1) then'
      '  begin              '
      '    banderinAzul.Top := 3;  '
      
        '    BanderinAzul.Visible := True;                               ' +
        '                                         '
      '  end'
      '  else'
      '    BanderinAzul.Visible := False;                 '
      '    '
      'end;'
      ''
      'procedure BanderinVerdeOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<AnalisisPostulante."Asignado"> = '#39'No'#39') and (<AnalisisPost' +
        'ulante."Postulado"> = 1) then'
      '  begin              '
      '    banderinVerde.Top := 3;  '
      
        '    BanderinVerde.Visible := True;                              ' +
        '                                          '
      '  end'
      '  else'
      '    BanderinVerde.Visible := False;                            '
      'end;  '
      'begin'
      ''
      'end.')
    OnClickObject = ReporteAnalisisClickObject
    Left = 568
    Top = 328
    Datasets = <
      item
        DataSet = frdsAnalisisPostulante
        DataSetName = 'AnalisisPostulante'
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
        Height = 15.118120000000000000
        Top = 279.685220000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frdsAnalisisPostulante
        DataSetName = 'AnalisisPostulante'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Width = 725.669760000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Width = 699.213050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NombreDocumento'
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[AnalisisPostulante."NombreDocumento"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Child = ReporteAnalisis.Child1
        Condition = 'AnalisisPostulante."IdPersonal"'
        object Memo23: TfrxMemoView
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 132.283550000000000000
          Top = 20.118120000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo de Personal: [AnalisisPostulante."CodigoPostulante"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 132.283550000000000000
          Top = 35.236240000000000000
          Width = 597.165740000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[AnalisisPostulante."NombreCompleto"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 117.165430000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Cursor = crHandPoint
          DataField = 'Imagen'
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          TagStr = '[AnalisisPostulante."IdPersonal"]'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo8: TfrxMemoView
          Left = 427.086890000000000000
          Top = 20.118120000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sexo: [AnalisisPostulante."Sexo"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 132.283550000000000000
          Top = 50.354360000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Calle: [AnalisisPostulante."Calle"]  No. [AnalisisPostulante."Nu' +
              'mero"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 457.323130000000000000
          Top = 50.354360000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Col. [AnalisisPostulante."Colonia"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 132.283550000000000000
          Top = 65.472480000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ciudad: [AnalisisPostulante."Ciudad"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 457.323130000000000000
          Top = 65.472480000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C.P.: [AnalisisPostulante."CP"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 457.323130000000000000
          Top = 80.590600000000000000
          Width = 279.685049130000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Del: [AnalisisPostulante."Delegacion"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 132.283550000000000000
          Top = 95.708720000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pa'#237's: [AnalisisPostulante."Pais"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 117.165430000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nacimiento: [AnalisisPostulante."FechaNacimiento"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 158.740260000000000000
          Top = 117.165430000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RFC: [AnalisisPostulante."rfc"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 132.283550000000000000
          Top = 80.370130000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estado: [AnalisisPostulante."Estado"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 313.700990000000000000
          Top = 117.165430000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CURP: [AnalisisPostulante."CURP"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 468.661720000000000000
          Top = 117.165430000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'No. IMSS: [AnalisisPostulante."NumeroSeguroSocial"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel'#233'fono: [AnalisisPostulante."Telefono"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 253.228510000000000000
          Top = 132.283550000000000000
          Width = 389.291590000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Correo: [AnalisisPostulante."Correo"]')
          ParentFont = False
        end
        object CtaDoc: TfrxMemoView
          Left = 298.582870000000000000
          Top = 4.559059999999999000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Documentos Cumplidos: [AnalisisPostulante."CtaDoc"]')
          ParentFont = False
        end
        object CtaMaxExtra: TfrxMemoView
          Left = 484.559370000000000000
          Top = 4.669232760000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Documentos Adicionales: [AnalisisPostulante."CtaMaxExtra"]')
          ParentFont = False
        end
        object NumeroDocumentos: TfrxMemoView
          Left = 132.283550000000000000
          Top = 4.669232760000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Documentos Requeridos: [AnalisisPostulante."NumeroDocumentos"]')
          ParentFont = False
        end
        object BanderinRojo: TfrxPictureView
          Left = 665.197280000000000000
          Top = 7.559059999999999000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          Visible = False
          OnBeforePrint = 'BanderinRojoOnBeforePrint'
          ShowHint = False
          Cursor = crHandPoint
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000002800000
            00D60806000000418533E0000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000EBF00000EBF0138055324000013
            004944415478DAEDDDBDCB2DDB5DC0F139182E512E0ADA6AA16877C9BF2088A4
            110453DC5E1052585AA4B1B44961651510EC6F11AB342282FF42B0F22516DA1A
            50AE222141CFF39C33E73CE79EBDF7ACB566FDD6DB7C3ECDBD84DC67CFCC9EBD
            E7BBD79A9757FFF7DAF6DAAB57AFB6DDDBFF09008005BD7A0AC097F1F7921004
            0058CFC300DC09410080752405E04E080200CC2F2B0077421000605E4501B813
            820000F33915803B210800308FBB01F81FBFFA9BCFFFFC957FFFE7E43F260401
            00C67718803B210800B086E400DC09410080B96507E04E080200CCA938007742
            1000602EA7037027040100E6502D00773921F8440C0200B4553D007742100060
            4C6101B81382000063090FC09D1004001843B300DC09410080BE9A07E04E0802
            00F4D12D005F720B190080768608C09D10040088375400EE842000409C210370
            27040100EA1B3A0077421000A09E29027027040100CE9B2A0077421000A0DC94
            01B813820000F9A60EC09D10040048B74400EE842000C0B1A5027027040100EE
            5B320077421000E0634B07E04E080200BC778900DC094100808B05E04E080200
            5776C900DC094100E08A2E1D803B2108005C89007C410802005720006F108200
            C0CA04E0034210005891004C9013824FC4200030320198410802002B10800584
            200030330178821004006624002B108200C04C0460454210009881000CE21632
            00C0A80460302108008C460036220401805108C0C6842000D09B00EC44080200
            BD08C0CE842000D09A001C841004005A11808311820040340138282108004411
            8083138200406D027012421000A845004E460802006709C049094100A094009C
            9C1004007209C0450841002095005C8C1004008E08C045094100E01E01B83821
            08007C9500BC08210800EC04E0C508410040005E544E083E118300B00E017871
            421000AE4700F24C0802C07508403E200401607D02909B842000AC4B00F29010
            0480F5084092B9850C00AC4100924D0802C0DC0420C58420ACE2EFB62F7FEDDB
            DB4F0EFF7F9F6DBFF0F77FBD7DFD377A2FEFB19FFCC96F6D5F7E91F11F7CE33B
            DB2FFDE08FB69FEBBDE0D08800E4342158D7CFBEF707DB7FFED93FD4FDA39F7F
            6FFBE53FFF9DA6EB917D00AEE9E4C13C66D9078BA7BFFDCEF6E33FFCFEB9BF31
            5034557FCF3AAEDBF177408F7DE9FE8F844FFEEA9FB64F7FB7ED367AE9F8BDEF
            FFD97BF49E7EED4FFF66FBC56FFF7AF3651280542304CF0B89BF5B8283B0D97A
            DC55FE85DF2C5C3B0546D47BD325027EF497DB7FFDF677B79F06BF4CCB0374D6
            FBD3F087DDE3CFC5B7B64FFFEDBBDB274D96E443E9DBABDF321E8FB0F7593601
            487542B0D4BF6EFFFB7BDFDCFEE7870D5F3224423AACC70D6541923A155A53A3
            2FFF26B1B4D2BA7C2C3E72F33F3BADE274CC00CCDB5EBD46DA042097230473F5
            0BA7BA5F8C630460D93AF508C0B72247736A4CF7A60A1ED9EC7A6A41F8FA95EC
            7F6DA637870CC0DCFDBADBB4BE00E4A28460AACEE154EDCB718C009C6704F0A5
            800341CBF88B5A87279D46FD6E8B8AAEC2FDAF41D88C1880F93F067A9D0B2800
            B9382178648470AAF14534C27A947ED1F70EC027150F065DA229E020DB3C62D3
            D49F122EDFFFA2A7A7C70BC0B26DD5671A5800C2332178CF08E1B455184D1860
            3D8AD76184003CB3FC2FE5BE0FC707A1B41197CA017822FED2A2E8DCFE5A37BC
            4EEC7F5DA7DE3B044CE97ED1651A5800C20784E0571D1D884A0EAC85079453E7
            A345AC472B47DBABDD7B7076A422F9EAC8C2F7FA7E10F41CC13CBF6FF59D563C
            F7032472746BB4003C732E68FB2BD60520DC240477C1E194F98BB9FC4B5200DE
            95F51E9C79ADB490A87120FC38346B1DCCF262A8EE413D7354B0DAA8D2D911E8
            B890182B001F6DA7CFB64F3E7FBDBC5F3CF8F1D3FCBEA802101E12826DC229F9
            9773F1414D001E497E0F4A0F5409A1597BB4E85D085639B8E60458DCC133E79E
            7C75B6E7E3FDEF6B9F7F6BDBBEF8FEC311D1A851C09102F0E1FBF2F4BDF517DB
            F6DF0F478E470AD61ECBF386006438D70DC176E1941A2065A32A023045DA7B50
            766038FCDB033DC1E3A6D491D216EB913C6A5B63DF3808C0D771F7F57FFC6697
            A75E8C13808FBF5FDE04F076F803A2ED34B000842CD70BC196E19438C252349A
            2300EBBCD61BF907AAE3F7B6DF0D71EB6D97A6119B1A81A7473F0FD6FDE9EFFF
            F18F8ECF8B0C98E21C26001F9E17FAFEF379387ADB741A58004291EB8460E370
            4A3AC1BEE48B4900A64A9962CC8FB5B6EB505BDAB4EBA8171D9CDDB60901F83A
            5A7A3CFB7694003C9CFEDD7F141C7EBFB5DC8704209CB27E08B60FA798038900
            4C9612E1B92315431DF872B5BB78256AD9CE8DAEA60560C87E73608C004C99FE
            7DBFED8FBEDFDA8D840B40A862DD10EC104E09535BF5A72005E07B0953F1B953
            9D130760D2E85FF32B385F489A0A3EB37D1303704B1B91AC19CA4304E0C3ED7F
            E3B379F47E353B8D40004255EB856087704A1849C8FF952C00D3F508C051B77F
            CA79A9BD973DEDDCD9F2F04A0FC0A451C08A813342003E5C869BEB3ACAE91002
            1042E484E0937163B04738254C6B658FB808C01CD5AFD84D08833E53A8E797BB
            EBE8DF5BB1A394190198B82CB5DEEBFE01787C85F4AD1FAA634C030B4008357F
            08F608A784110D0118BAECF56FD91211F5F18E636690FD2674E42D2F00D3CE4B
            AC1317DD033077FA37E9BFDB1A4D030B406862DE101480FD0D38055C7DFB3F19
            ED3CC080A9F09ECB5ABC9FE40660D495E41FEB1D80F9D3BFBB11A68105203435
            5F080AC0FE5A1F2C8E47704A0EDE49B72C1926A8E2B64394B8A9D7FC006C350A
            D83700CBA67FD3967D6B30222E00A18B794270CC73005D0412B8EC215761A7FD
            DD67A34C05476D878ECB5B16AC250198B63C67DFEB9E01F838B8133E9387DBA7
            6FC00A4008367E088E7915B0DBC0C42DFBF1485DE98121F1691A4F0688C069CE
            FF7B27EA3CCBC2006C700575BF003C58B7A491ECE3F72BF607860084618C790B
            9911EF03E846D061CB1E7CD56BDA133502D6ABC07CCF2E8E3A67B13400B7F051
            C06E0178F039491D69ED3B0D2C0061386385E0884F02F128B898654F19A13BFB
            5A89CF7B7EA9CB6860C479A8F1623E3B2702306999CA47BA7A05E0E9E9DF5DD7
            69600108C31A23045B87534284148D6208C087929EC1BCD5899ED4D78A78ED64
            73DEB666C4008CBC454D9F00AC31FDBBEB390D2C0061787D43B06D38A58C1694
            9DC85E30F254419DAB44630330E9EADC67F50E087953C15FD124BCE6BA027817
            73DEE2C900DCE24601BB0460A5E9DFE46D1376AA81008469F409C1860118FA4C
            D33E0158E7CBBB7E00E60758FD11D25311F824F21CBC499F5C326A0046DD16A6
            47003E7ECD82ED1B72CE730A0108D3691B828D0230715AB07CD4A5530056F912
            CDB87A3644E0F478EAAD611E0A38504D1A803131512300636E0EDD3E000FB645
            C4453605DBA5CEEB0A4018569B106C1080C91170E60B4900166971A56BE93981
            91CB3ADB3D009397BB5F00468C02360FC083ED1B7331CB16F439148030BDD810
            8C0CC0BCB03977C01580B95A074EFAB988076A9C23D86D5AEEA4A1033065F9F2
            FE5EEB000C7BBD2EFB9B008465A486605E04D60FC0A203FDE983FACAE700D6D5
            F7E2865AEFD3C903A6007CA1620056BE3974DB00ACB91D32FFF616F1B91480B0
            9CA310AC1B800D5489A895AF02AE63AC29CD3AEB5CBCFD05E00B95C3A7E22860
            D3000C9AFE4D5B9780F51180B08E3E2380C1AA9DFBB2F27D006BEAF3A51FBAEE
            252333CE017CA1FEC857ADDBC2B40BC0A3EF8F0AAFD57C9F138030BDBEE70006
            AA7ABF37019863BCB839B91F068C528DB78D52967B8C00AC7573E8660178B4BC
            55BEAB5A3F7D4600C2B4C6B80A3846FD83EBCA0198B6ECB9E75E0E193805EBB1
            CB9A0E9EF43630C7B75AE9F024903B6A8C02B60AC0A3ED5A6B5F8879FFEE1180
            309DB1EE035857DC050802F09DE4DBEE8CBC4D4AF6CB8CF54908C0399F04324E
            00D6B82D4C9B006C30FDBB6BFAC34300C234C67C12480D2D424300E6FDCDB75A
            DC07F08CDC7B0826AFCF9C8F828BB99F5CDCD5AF676F0EDD24009B4CFFEE5A4E
            030B4018DED8CF022ED37EFA4C00E6FFDD37460C9DAFCA99164EDBF712B64D93
            6712E7888A87BEB73F7914222D02B0D5F46FEAEBD5FBAE128030ACBEE1B79B39
            9C56598FA800DC1247D046BB32F8B6E4670B27054B424C0D373A1A356A191980
            5BD22909F7963B3E003B4452B3D30F04200C678CF0DBCD1C4EABAC4760006E31
            CF68ED256D2430EDC0D6FEBE6C27859D3F161C8049B30CB7B775780056795675
            802637981780D0CC58E1B79B399C56598FD8003C73001E4FCA9462DAF66A3715
            5749D8CDABA3033065D96FBF4E7400567B3C617535F63D0108DD8D197EBB99C3
            6995F5880EC0EDD434DC685246349346C226BB1760DC886583004C5AFE8FF7F3
            D800ECF30CEE54E73F8F0210BA193BFC763387D32AEBD12000A73CE7ED8E5AE7
            50A59C1F39CC85209117ADB409C092ED1D1A80A34EFFEE4E7F1E0520343747F8
            ED660EA755D6A34500561C39EBAED6C510134D8D878E56360AC02D7F14303200
            C79DFE7DEFDCE7510042337385DF6EE6705A653DDA04E09CB73EB9E538DC52A7
            CF6A3DB3365AC9F469BA760198BB0F860560EEFD257B09BD058F0084D3E60CBF
            DDCCE1B4CA7AB40AC0E89068A5E2ED5052A6017B4F8D874F55B70CC0BC8B6FA2
            02F070191AFD108ABD125D004298B9C36F377338ADB21EED0270D647A07DE838
            00D347EDEA5D551C257E94B26D00266DF3B7D1FDB390003C1E416E36EADB736A
            5F0042BE35C26F377338ADB21E0D0370A6F3DEEE398CD8BCED95742E58AF51C0
            262394AD03306DBD9EC2E7E7FFE5D1485DE17E7AB8FFB4DCFF3B5EDC230021DD
            5AE1B79B399C56598F960138FFC520C7CB9F79604B3C1FACFDC868AB47F97508
            C0C4ABD23FFDFD1F6C5F560EC051A67F7771A7650840386DCDF0DBCD1C4EABAC
            47DB009CFB6290F4E9C39C11B1B42B425BEE4389CFE86EF1C488A87D21E5DE94
            DFF86CFBE90F6B0660CDD3071A6E878847FC0940B86FEDF0DBCD1C4EABAC47EB
            00AC3CEAF06E042D7E1B873DD62EF9AAD016FB5162FC6DB562A553006E676FC5
            52103087B1D5238A627ED4084028708DF0DBCD1C4EABAC47FB00AC7931C84751
            1675BE5CD28D7BCB0F6AE93112B92F653C9DA25A98F50BC073B763C97FAF0FDF
            E34E23DF31D3C00210925D2BFC763387D32AEBD121002B5E0C72F7E055330413
            9FDA70EE7CB8CC4783D58E85AC2753D43C78770CC0EDCC2860EE361870FA7717
            7275BE008443D70CBFDDCCE1B4CA7AF408C07A178374BD49F1072A1CD00A46A4
            4E5F8491FD9A8DCF090D1F152B7D266FE6FB3DE4F4EF2EE2518D0210EEBA76F8
            ED660EA79CF56821EA6ABDA8F7A0CEB947B9233829519912A7257F37C99967C4
            A6C652F1D467C4BED03B00CBDEEFDC8039DA4F7BDFFFB2FED5F9A5615DC183EF
            0D014857C2EF25015855D1C1B25700D619BD2B3B78D755FDE07D2602C374FA21
            D0E4BCB89258C908C0CAF78E0C51FD892F1D03F0C1F614807421FC6E11805585
            5CAD17F81EA484CED141A7732C858DDC0C158191D3752304E056B0BDD3B7C9E1
            8F94DE8FFB7B56FB26ED3D03F0FE68A500A429E1F78800AC6AB600AC74D03977
            3B8F72F127EDF73D883EEB7D0E5EB32B63733FC3A93174FC777B4FFFEEEA4E03
            0B402E4CF8A51080554D1780150F3A4D47CCDA9EC0DE679ABBD5676F94004C58
            9697523F6B334CFF262FEB96F17E08402E2627FA9E5C37FC76AB04E018E7A2CD
            760EE0B3DAB7A0080EC19E8FA96BB38FB5FECC8D14805BFD47F31DED8F434CFF
            BE77389A9EB1BCBD46E69D034853C2EF84475FB8C33E12ECB67E5F784F4E1CB8
            1F1CA49A4C4F3D3C48B6B8B9F2919EB7E8B8256074A5E767EDEEFBDFEB07E0E3
            1FA6799F8947EFD568FBD5D1F2E67F1F74F94E7415302D083F9847CEC1A8E748
            5FBEFC201CE5BC33684900729AF00380B908408A093F00989300249BF00380B9
            094092093F00588300E4907BF801C05A042077093F00589300E423C20F00D626
            007947F801C0350840841F005C8C00BC30E10700D724002F48F801C0B509C00B
            117E00C013017801C20F007849002E4CF80100B708C005093F00E01101B810E1
            0700A410800B107E00400E013831E1070094108013127E00C019027022C20F00
            A841004E40F801003509C081093F002082001C90F003002209C081083F00A005
            013800E10700B424003B127E00400F02B003E10700F424001B127E00C0080460
            03C20F001889000C24FC00801109C000C20F00189900AC48F801003310801508
            3F00602602F004E10700CC480016107E00C0CC046006E10700AC400026107E00
            C04A04E003C20F00589100BC41F801002B13802F083F00E00A04E026FC00806B
            B974000A3F00E08A2E1980C20F00B8B24B05A0F00300B848000A3F0080F7960E
            40E10700F0B1250350F80100DCB754000A3F0080634B04A0F0030048376D00E6
            44DF13E10700F0C6740128FC0000CE992600851F00401DC307A0F00300A86BD8
            00147E000031860B40E10700106B9800147E00006D740F40F7F0030068AB5B00
            0A3F00803E9A07A0F00300E8AB59000A3F0080318407A0F00300184B58000A3F
            008031550F40E1070030B66A0128FC0000E6703A00851F00C05C8A0350F80100
            CC293B00851F00C0DC920350F80100ACE13000851F00C05AEE06600EE1070030
            8F530128FC0000E6531480C20F00605E590128FC0000E6971480C20F00601D0F
            0350F80100ACE739009FFFE545040A3F008075BD0B400000AE410002005CCCFF
            03F38A4DE7176B81E30000000049454E44AE426082}
          TagStr = '[AnalisisPostulante."IdPersonal"]'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object BanderinAzul: TfrxPictureView
          Left = 665.197280000000000000
          Top = 37.795300000000000000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          Visible = False
          OnBeforePrint = 'BanderinAzulOnBeforePrint'
          ShowHint = False
          Cursor = crHandPoint
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000028C0000
            00D608060000005BB9D36E000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000EC000000EC0016AD68909000014
            074944415478DAEDDD3DAB2D4B5EC0E1BE99379C5011830B9368A88160307283
            41BF803020A2C160606CA01388C898181BC8048289E0175026B8682018683826
            03171C45C31B3A99DE75F6EE7DF6397BEFD555D5F5F2AFEAE7499461669F5E2F
            D5FDEBAA5EDD9FFCDFD7B6AF7DF2C927DBEEF13F020080ED935B303E8FC5E784
            230000778371271C0100AE2B291877C21100E07AB28271271C0100AEA3281877
            C21100607DA78271271C0100D6F566307EEB37FEF5DDFFFDA77FF895E43F261C
            0100D673188C3BE10800704DC9C1B8138E0000D7921D8C3BE10800700DC5C1B8
            138E00006B3B1D8C3BE10800B0A66AC1B8CB09C71BF10800105BF560DC094700
            8035340BC69D700400985BF360DC0947008039750BC69D700400984BF760DC09
            470080390C0BC6E7DC92070020AE10C1B8138E0000F1840AC69D700400882364
            30EE842300C078A18371271C0100C699221877C21100A0BFA98271271C0100FA
            99321877C21100A0BDA98371271C0100DA59221877C21100A0BEA58271271C01
            00EA59321877C21100E0BCA58371271C0100CA5D221877C2110020DFA5827127
            1C0100D25D321877C21100E0D8A58371271C0100DE26189F118E00002F09C657
            08470080F704E31DC21100403026C909C71BF10800AC443066108E00C01509C6
            02C21100B812C17882700400AE403056201C01809509C68A842300B022C1D888
            5BF20000AB108C8D094700607682B113E10800CC4A3076261C0180D908C64184
            2300300BC13898700400A2138C41084700202AC1188C700400A2118C41094700
            200AC1189C70040046138C93108E00C028827132C21100E84D304E4A380200BD
            08C6C9094700A035C1B808E10800B4221817231C0180DA04E3A2842300508B60
            5C9C700400CE128C17211C01805282F162842300904B305E544E38DE8847FAFA
            6AFBF3DFFC72FBE1E17FEFD3EDF77FF08BDB777E7EF4F6C6F193BFFBF7ED77FE
            FA7FD3FF079F7FB6FDE31F7E63F466C325FDF35FFCDBF6BD2F32FE079FFDDCF6
            377FF9B3DB2F0CD856C17871C2712DC73B9FC081F52F5F6EBFFEA75F9DFB1B2D
            76A677B6EB9BBFF74BDB0F7EEB67BABD45AFC90EC443DFD8BEFFF79F6DBF367C
            BB477C57DF3E51F9F69FFCF2F6C7BFDA735B3E34CBD8CE0EA0540343A9A6EAEF
            4FC7F74530F28E709C5F7A38F40982FADB9DA7CE01FE68A673D07BF95FFFB37D
            F7BBFFBDFDB8F5BFD3E86094F599779C01BD7F301F376E6619DBCD62F10D114E
            D892741AAFADDF0FC1C80784E3AC7EBAFDED1FFC68FBAB2FD3FEDB2176B45D76
            A2670FA0C182B1C62C6C919AB35779DFD59B5EDFD798C138CBD8CEFF5CEB8931
            BBFA42AF13BB8FB49A0D178CBC4A384E263724462FEFF40C9F53AF354A30A65E
            D3D95895EF4DC96BE913042183719AB11DE33B3AFAD2815DEFD9D6171A7C0F04
            237709C739E4EF9C069E91779F253B73A01F1F8CAD96ECCBB59EB57D4387108A
            188CF38CED18C1F860E0D2FCA059C5D7D5FD2E084692B9254F54653BEA214B57
            4376A667769A238371E412DF8153D715968745EBD9A378C138D1D80E158C83DE
            8761978CDC576BDC0846B209C7604A7752DD97AE7203E8F8009D36FB3263309E
            3BF8A61F2847CCF69D786D8DBFB3E182719AB17D132F18DFE9F5A3A913B19816
            74E74E206B44A360A498708CE1CCB5323DAFF7495E5A2DDCC1BFFD3ECCB6243D
            EE1ABF3EBFC6ED15C3F9A205E32C63FBC1D1E75AFE1D3D7D3D60EB68CC5E3939
            3F5E475CAA2018394D388E746F27FDE9F6EDCFB7ED875FDC09806EB72C498B84
            1A07B997D1335330E6C6D4A819CE71C1D832DC6205E32C633B657B1FB6B9CEF5
            7485DF9F66EF47DEF6D40DF9CC59C79333CF82916A84637F7767846E3B873FDA
            B63FBB7BE6DBE92098B05C537BE6E8E9BD697ABD5DCDF72FE2ED53DE7AFDED82
            F19B9F7FFD597DF1D5DDD99A56AF3D52304E33B69FF40AC65D84DB33E56C43BB
            CF23E7877167DE03C14875C2B197FB3BAB871DC376B843EBB17475B87C32FA36
            3F6FEA178CE94B4C037E05FBF1925BC36B186FDFDBDFFD8F1F0D79AA499C609C
            676CBFD73B181F652E07577D4F52AF5BECB17F4BBE86B2FC73108C34231C1BBB
            BBA37CBF53383CFB6CBE74757C161EE246E2AFEA148CC93BFB184FF238F7791D
            BCA7B7EFE3777E7A1C010DBEB76182719AB1FDDCA0607C67C44C5FE25274CF93
            E1D4FD48E1F74230D29C706CE370C96ADF491D9E81B73E108E3C90B4DEF61AEF
            5DEA3550B11EE9D8ECF53E1ECC463C3B394A30CE33B69F1B3DCE33A2B14248A7
            2D0347FDA154D9672118E94638D694B264F57E06E86827D274862FD4412D57FB
            604C3BF0448EEA5C69C198B4D45879062D46304E34B63F303A186F52A3F1ECB6
            F4FB115FAB6D2BF95E0846BA138E15DC5D7A78656778B454D172D944309EF8FB
            0FA23CEEAC8EC460DCD2664B6ABE37218271A6B1FD8108C1B8A55FD378E26423
            E924AFFBAFD49F495A9ACEFF3E0B4686118EE5EE1ED85E3D400CDC991FEEC023
            CF9EB50DC6F0079E26D28331E9E05F31882204E354633BE476B45E2E4E99C51C
            BD4F4B9B69CD3DD9128C0C271C731DFFCAF4B5A586614B570907FDB83368A3EF
            4738FAC0D34246306E6907FF5ADF9FF1C138D9D8CED8F6BEDFE5B4602A7A5F06
            5C2A51A2C5C9A860240CE1982877C92AE97FB7355CBA4A08A3003BD8B26D3F11
            1129CB4661DF9733F282312DACEBC4DCF0609C6E6C3F17291813DE93C2F7E538
            C4829CE435989D178C84231CEFCB5FB2DA8DDAA1A79CED47BD8EB15D308EF815
            700CB9C198365B5263166D7430CE37B6A36DC3732D968E13FE66987BCAD67FFD
            8291B084E36BCA96AC768791D268462BE9560F6176B4CFB50AC699675DCFCA0F
            C65EB38C638371CEB19DBAFD234E80EA9F681C7F0F23DD53B6F6E51C8291F084
            E37BF77700093BE4C3659A4607C5C637946DA7513026BC1F71AFEB3CAB2418B7
            2E4BF8238371DAB1FD245E3056BFDE70B6715BF991AC82916908C7832586A419
            BAE333E4363BBCD49B536FC1A2B14D301ECFB8465DA2AFA130183BFC3A755C30
            CE3CB653FFFD119758D45D429EE6FAC5277557320423D3B96C381E9C2DA79E29
            8E5ABA4ABBD5C52ECA8EB74530CE741D540BA5C1B8359F651C168C938FED0711
            83B1EEC9D9E1DF0A376EEBEE6B0423D3BA5A389E5EB2DA0D5BBACA79DEEBA3E1
            B38D2D8271AEEBA0EA3B118C5BDB9B798F0AC6F9C7F64DCC60AC372B98B0FF1A
            BEBF7AA966300B46A697138E3773C6638D25ABDDC0A5ABD4A7307C6CD88EB841
            304E7D5FCA1ACE0563CB9B798F09C645C676D060AC77DDE19C3F54138CF08AA5
            C3B1D292D56EE4D24ADED2F447BAEF901B04E3E1012CCA727C2B2783716B37CB
            3824189719DB418331E10423ED3D9E7365A0E675978291E5AC188EF70F02053B
            E2C1D1722A1A6FC23C1F373F228E5FFBCA3F78B9391F8CAD6EB3332218D719DB
            4183B156E84DBA32201821C13AE178B0C32B8AA70067CBA9B7DAB96BF4AD4204
            63BE1AC1D8E666DEFD8371A5B13D6F30267DE7260DC69A27108291E54D1F8E07
            03BECD05FE5B9F59BCD26B1ABB6D6BFD60ECF5BE9F9EC57DCBE9CB02EA04638B
            59C6EEC1B8D4D88E1A8C957EAC32DB3D1893B75B30C20BB38663B38358A06BE9
            929E0493A2FA358EB30663C12FD2339C9BA1AA158C5BF5DBECF40EC6B5C6F6D5
            8331E8B5C78211CE99E7963C150FAEB97F7BEB7D1177ADC8A9B9E39E3518336E
            945EE2D436D6FC4ED7BD9977DF605C6D6C0B46C1080B0B1F8E8D96AC76319F38
            522776EA1C100563FD6DAC1C4A156719BB06E372635B300A46B88098E178B4A3
            ABB0C30F7D5D4E85E8697DBD9D60ACBF6D059F59ADDBECF40BC615C7F6BCC198
            7472197A5F7966BB05231409158E473F08A972BDDE0C4F2F38B954DD74692F6A
            30B6BD86315A30D6BA9977B7605C726C470DC64ACBF3825130C26B2284E3D1AF
            5C6BED9C66BACD4BE98F63CA97A7E7BDAD4EB35F49DF440BC6ADCE2C63AF605C
            736C2F1E8C93DE56A7E6774030C21DE3C2B1C392D56EBA1D61C9EC59E9C16A44
            3006B816EAE83B1130186BDC66A74F30AE3AB6830663ADF7A0DA1363FA128CD0
            59F770ECB264B59B6159BAE03DFA58939B20B778346080409F3218CFDFCCBB4B
            302E3BB6830663B525D96877954853F31218C108197A8563AF25ABD47F2FC4AC
            D71B7296A9F3DFB706C138C34CC5A4C1787696B14730AE3BB6630663BD19B64A
            4F8CE9AAEE0983608402A9E158168D0D22E5C80C117347F2F57AD93BF4169FC5
            04079E6983714B9AC17DEBBBDC3E18571EDB3183B1DE0C5B427C757BC67DAABA
            B3A282114E380AC7A260ACF28CE506C2ED0C3F9436D3987B406E71804FB90673
            F00F8D660EC613EF6FF3605C7A6C470CC6BA336C31EF5B7B47E56B5805231468
            39C358ED3179D5C55D967E90B21C99FB1ADACC08D5BA6F60335307E3567C33EF
            D6C1B8F6D80E188C956757A7BB74A7F2CDC6052364687F0D63E31B2E9F147959
            FA2665693A2FC41A2D21567E067275B307E39612672F0F966D8371F5B11D2F18
            AB07DE0C3F587BA6F68CA8608404DD7E251D75C96A177C59BAFEF55AADAE393B
            7F0B98A61608C6A45FD17FF46F350DC6E5C776B4606C70E947C1776A9CFAD74A
            0B46B8A3F7ED74E22E59BD17E90CFAA5DAB7BE68158C69F7921C36A3BB42306E
            F9B38C2D8371FDB11D2C189BC4DD04D71FEF1ACC860A4678C5901B76E7DE5770
            943067D0AFA9F4DCD8270D7FD59A34E334E8E0B34830E6CEB2340BC64B8CED58
            C1587249429DBF1BE3A4BAC5EB178CF0CCC847021E5E6FD329D4A6FB25E00766
            99614CDBD6774604FA32C198771D5BAB60BCC6D80E148C292763A5DFE1967FBB
            96464BE78211B608CF8E3E9E19EB76D63AD985DD1F3A8EB0103F7A799476FFC8
            80BF2E9D281893C2FCF1F5FC679360BCCAD88E128C69977BB47B9D3D5FEBEB5A
            CD820A462E6D7C283E3A3C23EC39AB37C18DA5DF72F83EC6B8AD4EFADFAFF5EF
            645A2A18B7E450FAED9FDC0BF8C2CFE032633B4630265D2B7A7206B0C7BF51AC
            E10CA860E492C284E2A3284B56BB56D7FFB456EF3160BBF64FE6487E4A4DCF03
            D06AC198F8948EEF7FEBABED7B9583F13A637B7C30A68EA5D333BA89D7A4F6FF
            D15ADA0968E97609462E255A283EA8BD8C5AC189C7AB8D93BEF4981E3A3D1EE5
            96B68456B6FD85960BC62DED3BFDD9A7DB8FBFAC198C571ADB6383B1F78957DA
            AFDE7B9E5827EE474EBC7EC1C825C40CC547873BF0113F32A9145F4FE1116376
            21FF40D8E9D9BF59BFA2EDF07D583118B7B3B7B62978DF571EDBD97FB7D53E20
            E384ABE6FB9D3C667B4463FA7B70E6044530B2B4D0A1F8E8F02036E87AC11A4B
            572F22AED50C59B35BD4740AC62D6386E451D399A94583F1DCED6DF23FEB95C7
            F64BFD8371F498493F0169198D194F103AF97D138C2C6986507C1070C96A57E1
            A9296FEE506B8663E21334DA2CB3D59D21CA9F016B33437578209E3518B733B3
            8CB5AF7F9D7B6CE7BFDE7AD154F219B6B98426F3718FB5BFDB594F0F3ABFAF10
            8C2C659E507C1472C96A97F643817BE1D0F6C733393BEB568FF0ABFDF9E42CAF
            3D57E360DCEB5ACAB1C158FE4CE7CCCF7AF1B1FD52C3603CF958C5A6D75B17CC
            5A9FDE9EEC7FB34EAC0B4696305D283E3A0AAAD13F2C4959F2B9374B923B1390
            32E392BB0C95FA775FD73B186F4AA3F1BDD4EF4DC97BF9CED4C158FABAF33EEB
            D5C7F64BA521DE569759DC33419BFA7D2FBE9CA2DECCAE60646AB386E23BD5EF
            1938621BB7BB3BBCE220A9E8DC817944303E08FDECE1C983B12C6E323EEB0B8C
            ED97A20563E7F7F8E42CE80CEF8160644A5387E2A3B6D789D59232DB75E7403A
            78277A7E16675C30DE4408EED7348DF05E3F04C9FE6EA67FD69718DB2F040AC6
            510F1608158DF5F74D8291A9AC108A0F8E77D6A397AC76BD97A56BA9B3143536
            18D3B6A1AFE611DEED609FBBF49FFA595F676C7F28C2F734C273EE03BC0F8DC6
            9060640AEB84E2A31996AC92B7753BDE41753DF3AE79D088108C8F4EDD12A682
            6A07A128C198B02DCFA5CE0A5E6D6C3F397FED6DB11033B61F1AB33AD0F6BB25
            18096DB950DC1D0554B01DE0E12C61EAF6360EC7FA17B8070AC65DD7706C7100
            8A148C5BFDC7BC5D756CA7FCAD9A82BD8F6FE9138E7D4E420423212D1B8A4FEE
            1D34232CABE46C6FD9125BBD83CBB8EB08872F2D3609F00EDFBF37B77BD4ECDB
            FDD9B1BCCFF9DA63BB4D34069A952DD660A9BAF3C995602494F54391B7E41C68
            86DDF038BA11F784030AE407E4E8B12A1809412802405C8291A1842200C42718
            19422802C03C04235D094500988F60A40BA10800F3128C349313893742110062
            128C54271401602D82916A842200AC4930729A500480B509468A094500B806C1
            4836A10800D7221849261401E09A042387DC431100AE4D30F226A10800DC0846
            5E108A00C073829127421100788D60442802007709C60B138A00400AC1784142
            1100C821182F442802002504E305084500E00CC1B830A10800D4201817241401
            809A04E342842200D082605C805004005A128C13138A00400F827142421100E8
            49304E442802002308C6090845006024C1189850040022108C010945002012C1
            188850040022128C010845002032C1389050040066201807108A00C04C046347
            421100989160EC4028020033138C0D094500600582B101A10800AC4430562414
            01801509C60A842200B032C17882500400AE403016108A00C09508C60C421100
            B822C19840280200572618EF108A000082F155421100E03DC1F88C5004007849
            306E421100E09E4B07A35004003876C960148A0000E92E158C42110020DF2582
            51280200945B3A18852200C0794B06A3500400A867A960148A0000F52D118C42
            1100A09D69833127126F8422004099E98251280200F4354D300A45008031C207
            A3500400182B6C300A45008018C205A350040088254C300A450080988607A37B
            280200C4362C18852200C01CBA07A3500400984BB760148A0000736A1E8C4211
            00606ECD8251280200ACA17A300A450080B5540B46A10800B0A6D3C128140100
            D6561C8C421100E01AB283512802005C4B72300A4500806B3A0C46A10800706D
            6F06630EA10800B0AE53C128140100D657148C421100E03AB282512802005C4F
            52300A450080EBBA1B8C4211008077C1F8EEFF79168D42110080DD53300200C0
            6B0423000077FD3F119258F6F431C9340000000049454E44AE426082}
          TagStr = '[AnalisisPostulante."IdPersonal"]'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object BanderinVerde: TfrxPictureView
          Left = 665.197280000000000000
          Top = 68.031540000000010000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          Visible = False
          OnBeforePrint = 'BanderinVerdeOnBeforePrint'
          ShowHint = False
          Cursor = crHandPoint
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000002E30000
            00D608060000007B558C93000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000EBF00000EBF0138055324000014
            804944415478DAEDDDBFCFE5D859C071CF1F407A581A1629A2481745B42CA284
            A4083DD5165B0551200A4A0A44814445B1153D2996502216890A21BA140889A4
            8055FAEC1F00FBCE8C67DE99B9B69F639F1F8FEDCFA7014589E7DAEFBDE77CED
            7BAEFDE2FFBE317DE3C58B17D3ECF57F04000034F4E229C69F87F873A21C0000
            DA598DF19928070080FA42313E13E50000504F518CCF443900001CB72BC667A2
            1C0000F63B14E333510E0000E51663FCE32F7EFFE5FFFDD90FFE31BC31510E00
            00719B313E13E50000505738C667A21C0000EA288EF199280700806376C7F84C
            940300C03E87637C26CA0100A04CB5189F9544F913610E00C05D558FF1992807
            008075CD627C26CA0100E0B1E6313E13E50000F0AE6E313E13E50000F04AF718
            9F89720000EE6E588C3FE7B6880000DC518A189F89720000EE24558CCF443900
            00779032C667A21C00802B4B1DE333510E00C0159D22C667A21C00802B39558C
            CF443900005770CA189F89720000CEECD4313E13E500009CD125627C26CA0100
            38934BC5F84C9403007006978CF19928070020B34BC7F84C94030090D12D627C
            26CA0100C8E456313E13E500006470CB189F8972000046BA758CCF4439000023
            88F167443900003D89F107443900003D88F115A21C008096C4784049943F11E6
            00004488F102A21C00809AC4F80EA21C00801AC4F801A21C008023C47805A21C
            00803DC47845A21C00801262BC11B7450400608B186F4C940300B0448C7722CA
            0100789F18EF4C9403003013E38388720000C4F860A21C00E0BEC47812A21C00
            E07EC47832A21C00E03EC47852A21C00E0FAC47872A21C00E0BAC4F849887200
            80EB11E32723CA0100AE438C9F94280700383F317E72A21C00E0BCC4F8458872
            0080F311E31723CA0100CE438C5F94280700C84F8C5F9C280700C84B8CDF8428
            0700C8478CDF8C280700C8438CDF5449943F11E60000F589F19B13E50000E388
            715E12E50000FD8971DE21CA0100FA11E33C24CA0100DA13E3AC12E50000ED88
            71C2DC1691DEFEF93FFE60FAF4AB82FFC1B7FE68FAA7DFF9C3E93746BFF0907F
            9BFEF41FFE62FAF1E67FEFE3E9CF3EF99BE9D35F19FD7A0168418C534C94B7F5
            F3FFFAD1F47BFFF9B3BA1BFDE8CFA7FFFEEE6F8FDEB54DC5F1BD255B9CFFE2AF
            A7DFFCF72F87EC53F563DB5AF43DBB724CBFF35B7F3B7DF1ED5F1FF3FA575ED7
            0FBFF793E9AF7EF5D8E6D7C689A1FB5DC1F67B35C709EAF6583DE2752E9FE447
            DF77971D2B46EFDBCAD82DC6D94D94D7D724C41FC914E75FFFFDF4832FFF6EFA
            69E37F6664A0B4FABBC6A32E7A153E934FA6CFBFFF27D3EF1EDAAF51D1B6F5BA
            22FB3672FBE3C43F2B63F7B1E833DD71BC5D8FCD1A9FA98C62EF856EF3EBA2E5
            F1488C739828AFE57FA7CFFFE5B3E92F7FD9F19F1C79E5B85384BFAFC655C95C
            FB189888061DEB6322212DC6DB6C7F94B23170DC0976F958DDEBB51E8EF1CB8E
            1503E6D70796E61F314E35A2FCA8718345EF496DF8D7A03D4E426A2C49A9B53F
            979D60C5789BED0F52FA9919763161CFD5E33EEF4531BE24478C2FCDB5629CEA
            44F95E83078B1E135BAA81BEE1E4D833C45FDA9864531DF728313E6EFB63949F
            A467FDFB2EE830C68AF1253962DC9571BA13E5A5320C160D27F1EE811A537DD9
            CA90C96C6B32BAEA3A5031DE66FB23EC7B8F8E59AAB2FFF3D47A999C35E34B32
            CCAFD68C3390288FCA30584C6DAEDE1C08F1D8E475ECD8D59B204B5FC7F62412
            BB5AB81D9DC39706950AFDE84D8CB7D9FE007BC788214B550E046BE3D77B3CC6
            AF3A5624985FDD4D850C44F996ADC1624F58EC9C346AFEFABFF84AF1F1801AF5
            7577F8D7FA3B8FEFF27EF58BAFAD7DEC7BA5528CB7D97E7F4702B0EB8FB25F3A
            76F5B8E567A4468CD7926BAC6831BFD623C6E94E942F693C58145E79AA33C195
            4D5A7527D5C22B2187AF58C5F6B5CD3DA6C5F86362FC1CD6F6E7E3E9871F4DD3
            8FBF5A39C9ED7EABD6A34B39DAFD7DC4F812310E0F89F2F7F5192CC257A00EC7
            69490CB79B244AEE2D7B6872089CECD49E7CDEEC5BC718C935C18AF136DBEF6B
            F53DF5340E7D779AFE78F5DBB5DEFBBB7EFCBFF3D127D3F4D597ABDF06B6FA9C
            88F125621C5689F259BFC1221AE487AEE246AFC4A7BACDE0FE63BC794CB33D0D
            74A75C13AC186FB3FD9ED6C7BD57EFA769F3C4BEEF52958D18FFE635FFE8EBCF
            863C45548C2F11E31022CA7B0E16C1ABD6BBAFB806BFC6ED19A8D120DFB5CFDB
            C7F3EC8F289FE59A60C5789BED77B4FA9B92B77FBFCD6FB8BA2E55D938FE4FAF
            E5DBFFB3FD5B9906AF598C2F11E350E4BE51DE79B008FDB072DFE01D5B1AD23F
            186ADD99E44359A3B0BE5C136CD6E32EC6A33697A8CC27EB9BE355CF7D0EC4F8
            3791BD3DDED47F7F8AF125621C76B95F94F71F2CDA4C16FD7EC8582EF6DA8A27
            8954A1D056AE09568CB7D97E2F91252A6FDF4B5BE355BFF75E2CC643173C2A5F
            1D17E34BC4381C729F281F305804966E944673E8AA78F7BB1F94ED73F1A425C6
            DF10E391D725C65F5AFD2C3EF8DB6D7D76BB2D7B0BC6F814FB36AEE6850931BE
            448C4315D78FF2018345E0CA4DD98019598B3E7AC9466CBD7CD104B9791C47EF
            733DB9265831DE66FB7DAC86E3C3B0CEF2F78EC778E8EA78C5930831BE448C43
            55D78DF211834560D946C955EC015FCBEE51FDEA7D60BFC72CCBA92FD7049B25
            CE4A5F97188FDC91E4D1FB28C7529582189F62E34DADF1418C2F11E3D0C4F5A2
            7CC46011B84A5C10A5DB934E922BC4D5AF56553EA9492CD7042BC6DB6CBF83D2
            252AA1FFDDD469A94A598CC77EAB52E76F26C697887168AA24CA9FE40DF3B3C7
            78605B69EEB55D7B394D647B2708A4805C13AC186FB3FDF6CA97A844F7BDC7DF
            BC34C66357C76B7C76C4F812310E5D9C3FCACF1EE3DB577F32DD6BBBF657C7A1
            DB26A63919D92FD7049B21CCF6BCAEBBC7F8BE252AB3CDCF5AF36FA1CA63BCD7
            D57131BE448C4357E78DF29C6BC6C30366833BB33455FBF1F54D1F2A9447AE09
            568CB7D97E5BEBEFA1C0DF6CF3B3D67AFFF7C478E4754F87C70731BE448CC310
            E78BF29C77538906F469D68BBF517B9D77F0A9A3C5DBCD25D7042BC6DB6CBFA5
            8D712EF4EDD1F667ADED89FFCE18EF70B72931BE448CC350E789F28CF7198FFF
            9B9B5F1DA75BA2517F8D7BECC9A3B36C272775F6518C475ED78D637CE30240F4
            FD3376A9CADE189F9A5F1D17E34BC438A4903FCA333E81333A78D7BD2B4B2FF5
            F6BFE0389CE0B8ACC935C18AF136DB6FE7F01295D9D0A52A07627C6AFB202031
            BE448C433A396F8BD87BB0082CAB085F193EE7ADFDEAC7F814BB6DE2498ECF23
            B9265831DE66FBADD458A2123D062D97AA1C8BF1960F0212E34BC438A4952BCA
            FB0E1691AB33F1C1F25C775299B55AE75EB65CE53DC9A33CD7042BC6DB6CBF91
            4A4B5466E396C61D8CF1C86B9FF69D4C88F1253BBEB5AC20BA8F621CA62C51DE
            31C64377FE2818B84FFA04CA963F3A3D14E44FD2ADB18FED97188FBCAE0BC5F8
            EBCFFE17DFFFC9E67F753D1477FCAD2AFEE6A5CCF1186F75AB4331BE644C8C47
            C771310ECF8C8DF24E311E5C465134509E34C69B4FE6D1DB1DAECA759533D704
            2BC6DB6C7FC031D975F239EA1BB91A31DEE64140627CC9A0180F1E73310E0F8C
            89F20E311E8EC3C241FB6CF7180FBFEE0AC77CEF1AF2F725B9529E6B8215E36D
            B6DFC0C667ADCD0F16A7469F9B3A31DEE2EAB8185F22C6E1B4FA4679CB182FB8
            07F6B463621CF675F1411D5F77E8099D1183D794E79A60C5789BEDD7D72C1287
            8C3DB5623CF2FACBB627C697887138BD3E515E3FC67705E09ED813E341B52684
            71C733D7042BC6DB6CBFF3F13874823962A94ACDFDA9FB202031BEC49A71B88C
            B6513EEACCFD99BD5FE98AF14265DF542C1971879A5C13AC186FB3FDCA1A2D51
            9935B945E9AACA271715AF8E8BF125EEA60297138DF2B2201F1CE347D6565A33
            BE538528EFBC6C25D7042BC6DB6CBFA6AD71ADC26BED3EFED4BFD25FEB568762
            7C89FB8CC3656D45F96962FC68D089F1830EFEED3B0679AE09568CB7D97E455B
            3F60AEF2DEEDFD04E006CB6E2A3D08488C2F11E3703957BA325E25924F7A6BC3
            ED5B8BF58F9ABD3FF4EC35B1E59A60C5789BEDD7B3F57EA9352EF4FD2CB75903
            5FE3EAB8185F22C6E132AEB466BCEA401888F1733E817354D4EC792FF4994C72
            4DB062BCCDF66BE9B04465D6F58240AB1FA41EBFD5A1185F22C6E1F472DC4DA5
            86713F48CC18E3E31EA71D547A8FF20EAF37D7042BC6DB6CBF922E4B54663D97
            AAB4BB3BCCD1070189F125621C4E2BD77DC6F7E9B33C24704567F0FDB13FD47B
            9DE97E254B575AFFBD734DB062BCCDF6EBE8B54425FAEFD57B3F8CBD55E3DADF
            578C2F11E3703A977D02673381B01D7D95F903E7BA9A1FB962F652E313885C13
            AC186FB3FD331C8307BA2D976B19E353E807F14BFB21C697E49E5FC5383C3326
            C267B9078B2DFDEFF57BD0097F741ABB42DEF638E79A60C5789BED5710B977F6
            08552E0A348EF1D0B7A48FFFC6627C49EEF9558CC3343AC267B9078B2DFDBE22
            AE24CD6D0D4B44BEC26EFBBA4DB011627CEF5D81DAABF19E681DE3D3EE070189
            F12559C78A57C438B79623C267B9078B4D27BBD7F8E9AEE4BF1659AED2F2389F
            6B821DF49EDBFAD6E5F0D5D9EC315EE709B3AD1C7F8F7688F12932467D382788
            F125B9E75731CE2DE58AF059EEC16253E4CE1F497E1079CE1F9CBE36F83692E7
            9A6007C5F8D689E9D5633CEB129559EBE35F6BECD831A68AF125B9E75731CEAD
            E48CF059EEC1E2F8EB7F32FA8ADD6B27BB8AFFAEB13F3CCD35C106AE1E0E38A9
            DAFCF6E2F06BCA1DE37997A8BC75ECF3DD29C6A7F2ABE3627C49EEF9558C730B
            B9237C967BB088A8F104B91CAF33F3B1DE3EE9B9538C6F86EF80BBF86CBDBF9A
            2F931819E3A5F7C61FA5E5ED07AB9E00967D8B27C697E49E5FC53897768E089F
            E51E2C42225F4F8FBEC5E1A996D33CE2CAF83BD2FD1077FBEF73FC84346F8CB7
            FF5620A6ED6F427AC678D98FE3C5F892DCF3AB18E792CE15E1B3DC8345CCF8BB
            7D6C39CBD5FB653D626F59AE09761ABE86FE039B27073582286B8C275AC3DF74
            295ADF180F8DABAF2F72FC5C8C2FC83DBF8A712EE59C113ECB3D584485D68B8E
            BA3A7E862BF75B36E3F34EB7367C92EB81537DD6B0278DF1CDF766CFD7D5F247
            DABD637C0A9F5C7CF6F5DAE7538C679D5FC5389770EE089FE51E2CC2826B46FB
            475BEC766B999EBAF9C8F657D6777AE84FF498747A5DDD1E249533C6B32C5199
            B5FB6DC880180F9E747EFE6BFF3A7D2AC61FC83DBF8A714EED1A113ECB3D5894
            88DD4DA1E7FE44EEF432E5BF2A5EF07575AB7DC835C1BE163A016C1D223DEF26
            9431C6C72E9F7AE8C063E50FED6BAB938EC8FE7CEBE3E9A7BF14E31FCA3DBF8A
            714EE95A113ECB3D581409DF51A1C73E05437CDA190B6FF6B5FDBE64B8029C6B
            829D8D3FD98A9C80D63B360963BCCB5AF952AD4E5E07C5F874F4B691623CEBFC
            2AC639956B46F82CF760512A3E69B4DCAF822701EE9C403F98705A055FE8412A
            ED27DB5C136CE9F1999AFC7D22274975FF36F9623CE3FDDE43AF6BD7F8332EC6
            8FDD3A528C679D5FC538A770ED089FE51E2CCA153E12BBF60456F414C0FD93D4
            E2645F33FA82FBD26372CB35C1BEABFF0960FC5B97BAC7255B8C275CA2326B72
            B79D81313E1DB93A2EC6B3CEAF629CD4EE11E1B3DC83C52E3BAEE21C1EA08BFF
            CD63C7B5ED03844A4E68FA4CB4B926D8F7159E001E38618A5D0D3FFEEFECDBCF
            CE319E7289CAACC5DD76C6C678F1FBFC0D319E757E15E3A474AF089FE51E2C76
            2BBA42FD9EE8A4B6FBABDBE3C7B4F42A55E40A6151E8156CB7865C13EC037BDF
            6F91F7DAAE6DB708A0BD3156C183706DFFC4D163229FA7B2CFCFE818DF374688
            F1D8B758ED2CCF37629C54EE19E1B38BC6F8932341DE4C9DE3B96F52ACABE7A4
            966B82DDF71AFB69F5991D18E3EFEFD3E0FBDE87547FEAEEF818DFF71E10E363
            637C5A7C6F887152B87784CF2E1CE34F520579C54969F07EF58EDF5C13ECFED7
            D95E921F2637F0FC2AF2E6714E71BBD0DAB79DCC10E3D38EB1478C0F8FF185CF
            8318672811FEDCC563FCA5B111F1528389F2D8EDC6F61BF1A3B85C13EC865127
            4ACD03344B8C6F074E96F743DDA52A4962BC3830C5B818876744F8237788F157
            C65CB56C7CFCBA86DFB81FC4E59A6023FA4EC27DF63F498C9F6189CAACEA5295
            2C311E782DCF75FE9622D75821C6E10D11BEE63E313EEB13E59D8F5BE3281F76
            8BB8D7724DB0251A076CBA47BDB7F2ECF3B4F55E4FB144E5ADCD63167EBD9962
            7C0AFF80FDEE4BDAC62F5D9BAC19672C111EB436A80E7A68461F0D4229C1F1AA
            174C236F0DF7BEB593C64CAF7359BDBFCBD813E42141FE4EB0AE7D6E33BE17D6
            C799A2385C3C1119F59E58BF9893EFC9B863DE1FE34E629FB89B0A039404F893
            5B4738EF298FF3BC5764DF2A9908465F01BF8FB2F79ABF0B509B18A73A110E00
            1023C6A9468403009411E31C26C20100F611E3EC26C201008E11E31413E10000
            758871C2443800405D629C4DEE110E00D086186791080700684B8CF301110E00
            D08718E70D110E00D09718478403000C22C66F4C8403008C25C66F48840300E4
            20C66F44840300E422C66F40840300E424C62F4C840300E426C62F488403009C
            8318BF10110E00702E62FC02443800C03989F11313E10000E726C64F48840300
            5C83183F11110E00702D62FC04443800C03589F1C4443800C0B589F184443800
            C03D88F144443800C0BD88F104443800C03D89F181443800C0BD89F101443800
            004FC47847221C0080E7C47807221C008047C47843221C00803562BC01110E00
            408418AF4884030050428C5720C20100D8438C1F20C2010038428CEF20C20100
            A8418C1710E10000D424C603443800002D88F115221C008096C4F803221C0080
            1EC4F833221C00809EC4F824C2010018E3D6312EC2010018E996312EC20100C8
            E056312EC20100C8E416312EC20100C8E8D2312EC20100C8EC92312EC2010038
            834BC5B8080700E04C2E11E3221C0080333A6D8C9704F813110E004036A78B71
            110E00C0559C26C64538000057933EC645380000579536C64538000057972EC6
            45380000779126C64538000077333CC6DD231C0080BB1A16E3221C0080BBEB1E
            E3221C00005EE916E3221C0000DED53CC6453800003CD62CC645380000ACAB1E
            E3221C000062AAC5B8080700803287635C840300C03EBB635C840300C031C531
            2EC20100A08E708C8B700000A86B33C645380000B4B118E32544380000943B14
            E3221C0000F6DB15E3221C00008E2B8A71110E0000F584625C840300407DAB31
            2EC20100A09D9731FEF2FF7916E4221C0000DA7B13E30000405F621C000006F9
            7FDECC511425FE260C0000000049454E44AE426082}
          TagStr = '[AnalisisPostulante."IdPersonal"]'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Child1: TfrxChild
        Height = 64.252010000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'Child1OnBeforePrint'
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo de Empleado: [AnalisisPostulante."CodigoPersonal"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000010000
          Width = 725.669760000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Empresa: [AnalisisPostulante."TituloOrganizacion"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000010000
          Width = 725.669760000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Departamento: [AnalisisPostulante."TituloDepartamento"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000010000
          Width = 725.669760000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsAnalisisPostulante
          DataSetName = 'AnalisisPostulante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Puesto: [AnalisisPostulante."TituloCargo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object cdAnalisis: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 336
  end
  object frdsAnalisisPostulante: TfrxDBDataset
    UserName = 'AnalisisPostulante'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'CodigoPostulante=CodigoPostulante'
      'CodigoPersonal=CodigoPersonal'
      'Imagen=Imagen'
      'Nombres=Nombres'
      'APaterno=APaterno'
      'AMaterno=AMaterno'
      'NombreCompleto=NombreCompleto'
      'IdOrganizacion=IdOrganizacion'
      'TituloOrganizacion=TituloOrganizacion'
      'IdDepartamento=IdDepartamento'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'IdCargo=IdCargo'
      'CodigoCargo=CodigoCargo'
      'TituloCargo=TituloCargo'
      'Curp=Curp'
      'NumeroSeguroSocial=NumeroSeguroSocial'
      'Calle=Calle'
      'Numero=Numero'
      'Ciudad=Ciudad'
      'Colonia=Colonia'
      'CP=CP'
      'Delegacion=Delegacion'
      'Estado=Estado'
      'EstadoCivil=EstadoCivil'
      'FechaNacimiento=FechaNacimiento'
      'GrupoSanguineo=GrupoSanguineo'
      'IdServidorCorreo=IdServidorCorreo'
      'Municipio=Municipio'
      'Pais=Pais'
      'rfc=rfc'
      'Sexo=Sexo'
      'Telefono=Telefono'
      'Correo=Correo'
      'Contacto=Contacto'
      'TelefonoContacto=TelefonoContacto'
      'Asignado=Asignado'
      'Postulado=Postulado'
      'FechaAlta=FechaAlta'
      'FechaBaja=FechaBaja'
      'NumeroDocumentos=NumeroDocumentos'
      'CtaDoc=CtaDoc'
      'CtaMaxDoc=CtaMaxDoc'
      'CtaMaxExtra=CtaMaxExtra'
      'PorceMax=PorceMax'
      'IdDocxPostulante=IdDocxPostulante'
      'IdDocumento=IdDocumento'
      'FechaExpedicion=FechaExpedicion'
      'FechaVigencia=FechaVigencia'
      'FechaAplicacion=FechaAplicacion'
      'Documento=Documento'
      'IdPostulante=IdPostulante'
      'FechaMovimiento=FechaMovimiento'
      'NombreDocumento=NombreDocumento')
    OpenDataSource = False
    DataSet = cdAnalisis
    BCDToCurrency = False
    Left = 592
    Top = 16
  end
  object cdDetalleDoctos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 352
  end
  object frdsDetalleDoctos: TfrxDBDataset
    UserName = 'DetalleDoctos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdDocxPostulante=IdDocxPostulante'
      'IdDocumento=IdDocumento'
      'FechaExpedicion=FechaExpedicion'
      'FechaVigencia=FechaVigencia'
      'FechaAplicacion=FechaAplicacion'
      'Documento=Documento'
      'IdPostulante=IdPostulante'
      'FechaMovimiento=FechaMovimiento'
      'NombreDocumento=NombreDocumento')
    DataSet = cdDetalleDoctos
    BCDToCurrency = False
    Left = 552
    Top = 112
  end
  object dsAnalisis: TDataSource
    DataSet = cdAnalisis
    Left = 408
    Top = 344
  end
  object TimerDblClick: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerDblClickTimer
    Left = 552
    Top = 56
  end
  object cdUptPostulanteGP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 176
  end
  object cdUptPlazaDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 240
  end
  object cdDocumentos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 344
  end
  object dsDocumentos: TDataSource
    DataSet = cdDocumentos
    Left = 344
    Top = 352
  end
end
