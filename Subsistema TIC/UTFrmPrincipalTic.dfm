object FrmPrincipalTic: TFrmPrincipalTic
  Left = 0
  Top = 0
  Caption = 'Principal TIC'
  ClientHeight = 425
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 99
    Width = 960
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 118
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 27
    Align = alTop
    TabOrder = 0
    object Archivo: TNxOptionButton
      Left = 1
      Top = 1
      Width = 100
      Height = 25
      Align = alLeft
      Caption = 'Archivo'
      Color = clBtnFace
      TabOrder = 0
      UseDockManager = False
      OnClick = ArchivoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 27
    Width = 960
    Height = 72
    Align = alTop
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 20
    Padding.Bottom = 10
    TabOrder = 1
    object JvBehaviorLabel1: TJvBehaviorLabel
      Left = 11
      Top = 11
      Width = 928
      Height = 50
      Align = alClient
      Alignment = taRightJustify
      Caption = 
        '                                                                ' +
        '                            Asignacion Insumo Individual TIC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ExplicitLeft = -111
      ExplicitWidth = 1050
      ExplicitHeight = 29
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 384
    Width = 960
    Height = 41
    Align = alBottom
    TabOrder = 2
    object NxButton1: TNxButton
      Left = 856
      Top = 1
      Width = 103
      Height = 39
      Align = alRight
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = NxButton1Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 102
    Width = 960
    Height = 282
    Align = alClient
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 3
    object Splitter1: TSplitter
      Left = 241
      Top = 6
      Height = 270
      ExplicitLeft = 0
      ExplicitTop = 72
      ExplicitHeight = 100
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 6
      Width = 235
      Height = 270
      Align = alLeft
      Caption = 'Areas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentFont = False
      TabOrder = 0
      object TreeView1: TTreeView
        Left = 7
        Top = 20
        Width = 221
        Height = 243
        Align = alClient
        Indent = 19
        TabOrder = 0
        OnChange = TreeView1Change
      end
    end
    object GroupBox2: TGroupBox
      Left = 244
      Top = 6
      Width = 710
      Height = 270
      Align = alClient
      Caption = 'Insumos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentFont = False
      TabOrder = 1
      object frxPreview1: TfrxPreview
        Left = 7
        Top = 33
        Width = 696
        Height = 230
        Align = alClient
        OutlineVisible = False
        OutlineWidth = 120
        ThumbnailVisible = True
        UseReportHints = True
      end
      object Panel5: TPanel
        Left = 7
        Top = 20
        Width = 696
        Height = 13
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Informe Detallado de las Especificaciones de Insumos'
        TabOrder = 1
      end
    end
  end
  object cdsubgrupos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdGrupo'
    MasterFields = 'IdGrupo'
    MasterSource = dsgrupos
    PacketRecords = 0
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 400
    Top = 8
  end
  object dssubgrupos: TDataSource
    DataSet = cdsubgrupos
    Left = 400
    Top = 32
  end
  object dsgrupos: TDataSource
    DataSet = cdgrupos
    Left = 328
    Top = 32
  end
  object cdgrupos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdDisciplina'
    MasterFields = 'iddisciplina'
    MasterSource = dsareas
    PacketRecords = 0
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 328
    Top = 8
  end
  object dsareas: TDataSource
    DataSet = cdareas
    Left = 264
    Top = 32
  end
  object cdareas: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 268
    Top = 8
  end
  object dsdetalles: TDataSource
    DataSet = cddetalles
    Left = 472
    Top = 32
  end
  object cddetalles: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdSubGrupo'
    MasterFields = 'IdSubGrupo'
    MasterSource = dssubgrupos
    PacketRecords = 0
    Params = <>
    Left = 472
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41044.735946493100000000
    ReportOptions.LastChange = 41048.545425011570000000
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
    OnDblClickObject = frxReport1DblClickObject
    Left = 304
    Top = 208
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft]
      object Header1: TfrxHeader
        Height = 12.220470000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object codigoinsumo: TfrxMemoView
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          OnPreviewDblClick = 'frxDBDataset2CodigoOnPreviewDblClick'
          ShowHint = False
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBDataset2."numinsumo"]'
          DataField = 'Codigo'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."Codigo"]')
          ParentFont = False
        end
        object frxDBDataset2Articulo: TfrxMemoView
          Left = 154.960730000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Articulo'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."Articulo"]')
          ParentFont = False
        end
        object frxDBDataset2Descripcion: TfrxMemoView
          Left = 309.921460000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Descripcion'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."Descripcion"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 31.118120000000000000
        Top = 52.913420000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset2."Articulo"'
        object frxDBDataset2Articulo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 0.031539999999999680
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Articulos: ')
          ParentFont = False
        end
        object frxDBDataset2Articulo2: TfrxMemoView
          Left = 340.937230000000000000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Articulo'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."Articulo"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 15.000000000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 154.960730000000000000
          Top = 15.000000000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ARTICULO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 309.921460000000000000
          Top = 15.000000000000000000
          Width = 408.189240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object cddetespxarxgrxsg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 8
  end
  object dsdetespxarxgrxsg: TDataSource
    DataSet = cddetespxarxgrxsg
    Left = 536
    Top = 24
  end
  object dsmemdetesp: TDataSource
    DataSet = memdetesp
    Left = 616
    Top = 216
  end
  object memdetesp: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    StoreDefs = True
    Left = 528
    Top = 224
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iddisciplina=iddisciplina'
      'titulodisciplina=titulodisciplina')
    DataSet = cdareas
    BCDToCurrency = False
    Left = 304
    Top = 152
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdDisciplina=IdDisciplina'
      'IdGrupo=IdGrupo'
      'Idsubgrupo=Idsubgrupo'
      'Numinsumo=Numinsumo'
      'Codigo=Codigo'
      'Articulo=Articulo'
      'Descripcion=Descripcion')
    DataSet = memdetesp
    BCDToCurrency = False
    Left = 488
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Images = ClientModule1.ImagelistMenu
    Left = 80
    Top = 16
    object DetalledeInsumos1: TMenuItem
      Caption = 'Detalle de Insumos'
      OnClick = DetalledeInsumos1Click
    end
    object AsignacionesDeInsumosaPersonal1: TMenuItem
      Caption = 'Asignaciones De Insumos a Personal'
      OnClick = AsignacionesDeInsumosaPersonal1Click
    end
    object ArboldeDetalle1: TMenuItem
      Caption = 'Estructura de detalle de Insumos'
      ImageIndex = 39
      OnClick = ArboldeDetalle1Click
    end
    object S1: TMenuItem
      Caption = 'Salir'
    end
  end
end
