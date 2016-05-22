object FrmMantenimientos: TFrmMantenimientos
  Left = 0
  Top = 0
  Caption = 'FrmMantenimientos'
  ClientHeight = 591
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 983
    Height = 33
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 983
    Height = 40
    Align = alTop
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    TabOrder = 1
    object JvBehaviorLabel1: TJvBehaviorLabel
      Left = 48
      Top = 6
      Width = 924
      Height = 29
      Align = alClient
      Alignment = taRightJustify
      Caption = 
        '                                                                ' +
        '                          Generar Mentenimientos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 550
    Width = 983
    Height = 41
    Align = alBottom
    TabOrder = 2
    object NxButton1: TNxButton
      Left = 837
      Top = 1
      Width = 145
      Height = 39
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 692
      Top = 1
      Width = 145
      Height = 39
      Align = alRight
      Caption = 'Generar Mantenimiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton2Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 73
    Width = 983
    Height = 106
    Align = alTop
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 981
      Height = 104
      Align = alClient
      Caption = 'Insumo A ingresar'
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 9
        Top = 17
        Width = 77
        Height = 13
        Caption = 'Codigo Insumo:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 393
        Top = 18
        Width = 122
        Height = 13
        Caption = 'Fecha de Especificacion: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 41
        Top = 56
        Width = 45
        Height = 13
        Caption = 'Articulo: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 447
        Top = 56
        Width = 63
        Height = 13
        Caption = 'Descripcion: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 17
        Width = 257
        Height = 21
        DataField = 'Codigo'
        DataSource = dsinsumoseleccionado
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 516
        Top = 15
        Width = 224
        Height = 21
        DataField = 'fechaespecificacion'
        DataSource = dsinsumoseleccionado
        Enabled = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 89
        Top = 52
        Width = 256
        Height = 21
        DataField = 'tituloarticulo'
        DataSource = dsinsumoseleccionado
        Enabled = False
        TabOrder = 2
      end
      object DBMemo1: TDBMemo
        Left = 516
        Top = 52
        Width = 425
        Height = 46
        DataField = 'descripciontotal'
        DataSource = dsinsumoseleccionado
        Enabled = False
        TabOrder = 3
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 179
    Width = 983
    Height = 286
    Align = alClient
    TabOrder = 4
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 981
      Height = 64
      Align = alTop
      Caption = 'Tipo De Mantenimiento'
      TabOrder = 0
      object JvLabel5: TJvLabel
        Left = 57
        Top = 25
        Width = 117
        Height = 13
        Caption = 'Tipo de Mantenimiento: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel6: TJvLabel
        Left = 502
        Top = 24
        Width = 112
        Height = 13
        Caption = 'Codigo Mantenimiento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object ComboBox1: TComboBox
        Left = 176
        Top = 21
        Width = 293
        Height = 21
        TabOrder = 0
        Text = 'Tipo de Mantenimiento'
        Items.Strings = (
          'CORRECTIVO'
          'PREVENTIVO')
      end
      object Edit1: TEdit
        Left = 620
        Top = 21
        Width = 321
        Height = 21
        TabOrder = 1
        Text = 'Edit1'
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 65
      Width = 981
      Height = 220
      Align = alClient
      Caption = 'Datos del Mantenimiento'
      TabOrder = 1
      object JvLabel7: TJvLabel
        Left = 41
        Top = 48
        Width = 125
        Height = 13
        Caption = 'Fecha del Mantenimiento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel8: TJvLabel
        Left = 57
        Top = 94
        Width = 105
        Height = 13
        Caption = 'Descripcion de Fallas:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel9: TJvLabel
        Left = 525
        Top = 94
        Width = 93
        Height = 13
        Caption = 'Tareas Realizadas:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel12: TJvLabel
        Left = 525
        Top = 48
        Width = 93
        Height = 13
        Caption = 'Tareas Realizadas:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBDateEdit1: TDBDateEdit
        Left = 176
        Top = 44
        Width = 297
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechamantto'
        DataSource = dsmantenimiento
        NumGlyphs = 2
        TabOrder = 0
      end
      object DBMemo2: TDBMemo
        Left = 176
        Top = 94
        Width = 297
        Height = 89
        DataField = 'descripcionfallas'
        DataSource = dsmantenimiento
        TabOrder = 1
      end
      object DBMemo3: TDBMemo
        Left = 620
        Top = 94
        Width = 321
        Height = 89
        DataField = 'tareasrealizadas'
        DataSource = dsmantenimiento
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 620
        Top = 44
        Width = 318
        Height = 21
        DataField = 'pospuesto'
        DataSource = dsmantenimiento
        Enabled = False
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 621
        Top = 23
        Width = 97
        Height = 17
        Caption = 'Se pospone'
        TabOrder = 4
        OnClick = CheckBox1Click
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 465
    Width = 983
    Height = 85
    Align = alBottom
    TabOrder = 5
    object GroupBox4: TGroupBox
      Left = 1
      Top = 1
      Width = 981
      Height = 83
      Align = alClient
      Caption = 'Firmantes'
      TabOrder = 0
      object JvLabel10: TJvLabel
        Left = 21
        Top = 19
        Width = 36
        Height = 13
        Caption = 'Realizo'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel11: TJvLabel
        Left = 516
        Top = 18
        Width = 46
        Height = 13
        Caption = 'Asignado'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object NxButton3: TNxButton
        Left = 448
        Top = 16
        Width = 22
        Height = 17
        Caption = '..'
        TabOrder = 0
        OnClick = NxButton3Click
      end
      object Edit2: TEdit
        Left = 516
        Top = 37
        Width = 425
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 21
        Top = 37
        Width = 452
        Height = 21
        Enabled = False
        TabOrder = 2
      end
    end
  end
  object cdmantenimiento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 352
  end
  object dsmantenimiento: TDataSource
    DataSet = cdmantenimiento
    Left = 120
    Top = 348
  end
  object dsinsumoseleccionado: TDataSource
    Left = 840
    Top = 104
  end
  object cdultimomantto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 376
  end
  object dsultimomantto: TDataSource
    DataSet = cdultimomantto
    Left = 512
    Top = 352
  end
  object cdrealizo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 496
  end
  object dsrealizo: TDataSource
    Left = 304
    Top = 496
  end
  object cdasignado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 504
  end
  object dsasignado: TDataSource
    DataSet = cdasignado
    Left = 624
    Top = 504
  end
  object frxImprimirMantto: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41044.735946493100000000
    ReportOptions.LastChange = 41151.731777500000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure Memo1OnPreviewDblClick(Sender: TfrxView; Button: TMous' +
        'eButton; Shift: Integer; var Modified: Boolean);'
      'begin'
      ''
      'end;'
      ''
      
        'procedure frxDBDataset2CodigoOnPreviewDblClick(Sender: TfrxView;' +
        ' Button: TMouseButton; Shift: Integer; var Modified: Boolean);'
      'begin                              '
      
        '                                                                ' +
        '                '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 488
    Top = 248
    Datasets = <
      item
        DataSet = TicRepModuleUnit.frxDBDMantenimientos
        DataSetName = 'frxDBDMantenimientos'
      end
      item
        DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
        DataSetName = 'frxDBDOrganizacion'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        Height = 272.094620000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 10.897650000000000000
          Top = 214.110390000000000000
          Width = 733.228820000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALE REPORTE MANTENIMIENTO')
          ParentFont = False
        end
        object frxDBDOrganizacionnombreorganizacion: TfrxMemoView
          Left = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'nombreorganizacion'
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object frxDBDOrganizacionrfc: TfrxMemoView
          Left = 166.299320000000000000
          Top = 34.015770000000010000
          Width = 570.709030000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RFC: [frxDBDOrganizacion."rfc"]')
          ParentFont = False
        end
        object frxDBDOrganizaciontelefono1: TfrxMemoView
          Left = 164.519790000000000000
          Top = 45.354360000000000000
          Width = 570.709030000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'TELEFONOS: [frxDBDOrganizacion."telefono1"], [frxDBDOrganizacion' +
              '."telefono2"], [frxDBDOrganizacion."telefono3"]'
            
              '[frxDBDOrganizacion."telefono4"], [frxDBDOrganizacion."telefono5' +
              '"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 137.960730000000000000
          Top = 118.031540000000000000
          Width = 593.386210000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA: [now]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 15.118120000000000000
          Top = 7.559059999999999000
          Width = 139.842610000000000000
          Height = 102.047310000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDMantenimientoscodigomantenimiento: TfrxMemoView
          Left = 138.842610000000000000
          Top = 130.724490000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'codigomantenimiento'
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDMantenimientos."codigomantenimiento"]')
          ParentFont = False
        end
        object frxDBDMantenimientostipommanto: TfrxMemoView
          Left = 138.842610000000000000
          Top = 147.181200000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TIPO MANTENIMIENTO: [frxDBDMantenimientos."tipommanto"]')
          ParentFont = False
        end
        object frxDBDMantenimientoscodigoinsumo: TfrxMemoView
          Left = 137.842610000000000000
          Top = 162.078850000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CODIGO INSUMO: [frxDBDMantenimientos."codigoinsumo"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 222.992270000000000000
        Top = 725.669760000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          Left = 1.779530000000000000
          Top = 10.692950000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'Frimas del Vale De Mantenimiento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 111.574830000000000000
          Top = 106.401670000000000000
          Width = 188.976500000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'REALIZO MANTENIMIENTO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 1.559060000000000000
          Top = 180.448979999999900000
          Width = 737.008350000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 194.535560000000000000
          Top = 188.008039999999900000
          Width = 30.236240000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDOrganizacionnombreorganizacion1: TfrxMemoView
          Left = 228.551330000000000000
          Top = 188.008039999999900000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'nombreorganizacion'
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object frxDBDOrganizaciontelefono11: TfrxMemoView
          Left = 426.866420000000000000
          Top = 204.126160000000100000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telefonos: [frxDBDOrganizacion."telefono1"]')
          ParentFont = False
        end
        object frxDBDOrganizacionrfc1: TfrxMemoView
          Left = 228.551330000000000000
          Top = 203.126160000000100000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RFC: [frxDBDOrganizacion."rfc"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 451.323130000000000000
          Top = 107.330860000000300000
          Width = 188.976500000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'PERSONAL ASIGNADO')
          ParentFont = False
        end
        object frxDBDMantenimientospersonala: TfrxMemoView
          Left = 415.748300000000000000
          Top = 120.944960000000200000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personala'
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDMantenimientos."personala"]')
          ParentFont = False
        end
        object frxDBDMantenimientospersonalr: TfrxMemoView
          Left = 75.590600000000000000
          Top = 121.165430000000400000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personalr'
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDMantenimientos."personalr"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 351.496290000000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        DataSet = TicRepModuleUnit.frxDBDMantenimientos
        DataSetName = 'frxDBDMantenimientos'
        RowCount = 0
        object frxDBDMantenimientoscodigoinsumo1: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CODIGO INSUMO: [frxDBDMantenimientos."codigoinsumo"]')
          ParentFont = False
        end
        object frxDBDMantenimientoscodigomantenimiento1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 25.456709999999990000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'CODIGO MANTENIMIENTO: [frxDBDMantenimientos."codigomantenimiento' +
              '"]')
          ParentFont = False
        end
        object frxDBDMantenimientosfechamantto: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.456709999999990000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'FECHA REALIZACION DEL MANTENIMIENTO: [frxDBDMantenimientos."fech' +
              'amantto"]')
          ParentFont = False
        end
        object frxDBDMantenimientosdescripcionfallas: TfrxMemoView
          Left = 3.779530000000000000
          Top = 117.165430000000000000
          Width = 733.228820000000000000
          Height = 86.929190000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FALLAS DEL EQUIPO: [frxDBDMantenimientos."descripcionfallas"]')
          ParentFont = False
        end
        object frxDBDMantenimientostareasrealizadas: TfrxMemoView
          Left = 3.779530000000000000
          Top = 207.874149999999900000
          Width = 733.228820000000000000
          Height = 90.708720000000000000
          ShowHint = False
          DataField = 'tareasrealizadas'
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDMantenimientos."tareasrealizadas"]')
          ParentFont = False
        end
        object frxDBDMantenimientostipommanto1: TfrxMemoView
          Top = 68.133890000000010000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO MANTENIMIENTO: [frxDBDMantenimientos."tipommanto"]')
          ParentFont = False
        end
        object frxDBDMantenimientospospuesto: TfrxMemoView
          Top = 328.819109999999900000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = TicRepModuleUnit.frxDBDMantenimientos
          DataSetName = 'frxDBDMantenimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'DIAS POSPUESTOS DEL MANTENIMIENTO: [frxDBDMantenimientos."pospue' +
              'sto"]')
          ParentFont = False
        end
      end
    end
  end
  object cdmanttoreporte: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 840
    Top = 456
  end
end
