object FrmAsignarInsumosTic: TFrmAsignarInsumosTic
  Left = 0
  Top = 0
  Caption = 'Asignacion de Insumos General'
  ClientHeight = 638
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 25
    Align = alTop
    TabOrder = 0
    object Btn_Archivo: TNxOptionButton
      Left = 1
      Top = 1
      Width = 78
      Height = 23
      Align = alLeft
      Caption = 'Archivo'
      Color = clBtnFace
      TabOrder = 0
      UseDockManager = False
      OnClick = Btn_ArchivoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 603
    Width = 921
    Height = 35
    Align = alBottom
    TabOrder = 1
    object NxButton1: TNxButton
      Left = 817
      Top = 1
      Width = 103
      Height = 33
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
      Left = 720
      Top = 1
      Width = 97
      Height = 33
      Align = alRight
      Caption = 'Asignar'
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
  object Panel3: TPanel
    Left = 0
    Top = 251
    Width = 921
    Height = 166
    Align = alClient
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 265
      Top = 1
      Height = 164
      ExplicitLeft = 0
      ExplicitTop = 72
      ExplicitHeight = 100
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 264
      Height = 164
      Align = alLeft
      Caption = 'Subgrupos'
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
        Width = 250
        Height = 137
        Align = alClient
        Indent = 19
        TabOrder = 0
        OnChange = TreeView1Change
      end
    end
    object GroupBox2: TGroupBox
      Left = 268
      Top = 1
      Width = 652
      Height = 164
      Align = alClient
      Caption = 'Insumo Disponible'
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
      object GridDetalle: TNextDBGrid
        Left = 7
        Top = 20
        Width = 638
        Height = 137
        Align = alClient
        Options = [goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        OnCellDblClick = GridDetalleCellDblClick
        DataSource = dsdetespxarxgrxsg
        object NxDBTextColumn6: TNxDBTextColumn
          DefaultWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Header.Caption = 'Codigo Insumo'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 120
          FieldName = 'codigo'
        end
        object NxDBTextColumn7: TNxDBTextColumn
          DefaultWidth = 150
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Header.Caption = 'Area'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 150
          FieldName = 'titulodisciplina'
        end
        object NxDBTextColumn8: TNxDBTextColumn
          DefaultWidth = 150
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Header.Caption = 'Subgrupo'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 150
          FieldName = 'titulosubgrupo'
        end
        object NxDBTextColumn5: TNxDBTextColumn
          DefaultWidth = 250
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Header.Caption = 'Descripcion Insumo'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 3
          SortType = stAlphabetic
          Width = 250
          FieldName = 'descripciontotal'
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 83
    Width = 921
    Height = 168
    Align = alTop
    TabOrder = 3
    object GroupBox4: TGroupBox
      Left = 1
      Top = 1
      Width = 919
      Height = 166
      Align = alClient
      Caption = 'Datos de la Asignacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object JvLabel2: TJvLabel
        Left = 77
        Top = 111
        Width = 67
        Height = 13
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel1: TJvLabel
        Left = 45
        Top = 56
        Width = 99
        Height = 13
        Caption = 'Fecha de Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel9: TJvLabel
        Left = 382
        Top = 20
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 321
        Top = 20
        Width = 55
        Height = 13
        Caption = 'Nombres:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 553
        Top = 20
        Width = 56
        Height = 13
        Caption = 'Apellidos:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel10: TJvLabel
        Left = 615
        Top = 20
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel5: TJvLabel
        Left = 19
        Top = 20
        Width = 95
        Height = 13
        Caption = 'Codigo Personal:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel7: TJvLabel
        Left = 120
        Top = 20
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel6: TJvLabel
        Left = 35
        Top = 88
        Width = 109
        Height = 13
        Caption = 'Codigo Entrega TIC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel8: TJvLabel
        Left = 494
        Top = 59
        Width = 52
        Height = 13
        Caption = 'Entrego: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel11: TJvLabel
        Left = 494
        Top = 93
        Width = 49
        Height = 13
        Caption = 'Aprobo: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel12: TJvLabel
        Left = 485
        Top = 124
        Width = 59
        Height = 13
        Caption = 'Enterado: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DTFechaAsignacion: TDateTimePicker
        Left = 150
        Top = 57
        Width = 186
        Height = 21
        Date = 41043.400869618050000000
        Time = 41043.400869618050000000
        TabOrder = 0
      end
      object EdCodigoAsignacion: TEdit
        Left = 150
        Top = 84
        Width = 297
        Height = 21
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 150
        Top = 111
        Width = 297
        Height = 47
        DataField = 'comentarios'
        DataSource = dsresguardos
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 545
        Top = 90
        Width = 362
        Height = 21
        DataField = 'Aprobo'
        DataSource = dsresguardos
        KeyField = 'idpersonal'
        ListField = 'infgeneral'
        ListSource = dsaprobo
        TabOrder = 3
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 545
        Top = 123
        Width = 362
        Height = 21
        DataField = 'enterado'
        DataSource = dsresguardos
        KeyField = 'idpersonal'
        ListField = 'infgeneral'
        ListSource = dsenterado
        TabOrder = 4
      end
      object Edit1: TEdit
        Left = 545
        Top = 58
        Width = 329
        Height = 21
        TabOrder = 5
      end
      object NxButton3: TNxButton
        Left = 880
        Top = 56
        Width = 27
        Caption = '...'
        TabOrder = 6
        OnClick = NxButton3Click
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 417
    Width = 921
    Height = 186
    Align = alBottom
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    TabOrder = 4
    object GroupBox3: TGroupBox
      Left = 11
      Top = 6
      Width = 899
      Height = 174
      Align = alClient
      Caption = 'Insumos Seleccionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Panel6: TPanel
        Left = 2
        Top = 171
        Width = 895
        Height = 1
        Align = alBottom
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 2
        Top = 15
        Width = 895
        Height = 156
        Align = alClient
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object NextDBGrid1: TNextDBGrid
          Left = 6
          Top = 6
          Width = 883
          Height = 144
          Align = alClient
          Options = [goHeader, goSelectFullRow]
          TabOrder = 0
          TabStop = True
          OnCellDblClick = NextDBGrid1CellDblClick
          DataSource = dsmemasignados
          object NxDBTextColumn1: TNxDBTextColumn
            DefaultWidth = 150
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Header.Caption = 'Codigo Insumo'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 0
            SortType = stAlphabetic
            Width = 150
            FieldName = 'codigoinsumo'
          end
          object NxDBTextColumn2: TNxDBTextColumn
            DefaultWidth = 150
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Header.Caption = 'Articulo'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 1
            SortType = stAlphabetic
            Width = 150
            FieldName = 'nombrearticulo'
          end
          object NxDBTextColumn3: TNxDBTextColumn
            DefaultWidth = 300
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Header.Caption = 'Descripcion'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 2
            SortType = stAlphabetic
            Width = 300
            FieldName = 'descripcion'
          end
          object NxLookupColumn1: TNxLookupColumn
            DefaultWidth = 150
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Header.Caption = 'Mantenimiento'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 3
            SortType = stAlphabetic
            Width = 150
            FieldName = 'idmantto'
            DropDownCount = 8
            Style = cbsDropDownList
            KeyFieldName = 'idmanttoprev'
            ListDataSource = dsmanttoprev
            ListFieldName = 'titulomanttoprev'
          end
          object NxDBTextColumn4: TNxDBTextColumn
            DefaultWidth = 150
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Header.Caption = 'Recurrencia'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 4
            SortType = stAlphabetic
            Width = 150
            FieldName = 'recurrencia'
          end
        end
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 25
    Width = 921
    Height = 58
    Align = alTop
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 20
    Padding.Bottom = 10
    TabOrder = 5
    object JvBehaviorLabel1: TJvBehaviorLabel
      Left = -124
      Top = 11
      Width = 1024
      Height = 29
      Align = alClient
      Alignment = taRightJustify
      Caption = 
        '                                                                ' +
        '                            Asignacion GeneraI de Insumos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
  end
  object cdsubgrupos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdGrupo'
    MasterFields = 'IdGrupo'
    MasterSource = dsgrupos
    PacketRecords = 0
    Params = <>
    Left = 760
    Top = 288
  end
  object memespecificados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 296
  end
  object dssubgrupos: TDataSource
    DataSet = cdsubgrupos
    Left = 752
    Top = 392
  end
  object dsmemespecificados: TDataSource
    DataSet = memespecificados
    Left = 296
    Top = 344
  end
  object cdgrupos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdDisciplina'
    MasterFields = 'iddisciplina'
    MasterSource = dsareas
    PacketRecords = 0
    Params = <>
    Left = 696
    Top = 288
  end
  object cdareas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 628
    Top = 288
  end
  object dsareas: TDataSource
    DataSet = cdareas
    Left = 624
    Top = 336
  end
  object dsgrupos: TDataSource
    DataSet = cdgrupos
    Left = 696
    Top = 336
  end
  object dsdetalleresguardos: TDataSource
    DataSet = cddetalleresguardos
    Left = 784
    Top = 40
  end
  object dspersonal: TDataSource
    Left = 504
    Top = 80
  end
  object cddetalleresguardos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 784
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 64
    Top = 8
    object Asignar1: TMenuItem
      Caption = 'Asignar'
      OnClick = Asignar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      OnClick = Cancelar1Click
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      OnClick = Salir1Click
    end
  end
  object dsnumultimocodigo: TDataSource
    DataSet = cdnumultimocodigo
    Left = 512
    Top = 16
  end
  object cdnumultimocodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
  end
  object cdresguardos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 40
  end
  object DataSource1: TDataSource
    Left = 472
    Top = 232
  end
  object dsresguardos: TDataSource
    DataSet = cdresguardos
    Left = 688
    Top = 56
  end
  object cdentrego: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 712
    Top = 112
  end
  object cdaprobo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 712
    Top = 160
  end
  object dsentrego: TDataSource
    DataSet = cdentrego
    Left = 776
    Top = 112
  end
  object dsaprobo: TDataSource
    DataSet = cdaprobo
    Left = 776
    Top = 160
  end
  object dsdetespxarxgrxsg: TDataSource
    DataSet = cddetespxarxgrxsg
    Left = 480
    Top = 352
  end
  object cddetespxarxgrxsg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 304
  end
  object MemAsignados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 776
    Top = 512
  end
  object dsmemasignados: TDataSource
    DataSet = MemAsignados
    Left = 840
    Top = 512
  end
  object cdmanttoprev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 56
  end
  object dsmanttoprev: TDataSource
    DataSet = cdmanttoprev
    Left = 240
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41044.735946493100000000
    ReportOptions.LastChange = 41148.527972395830000000
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
    Left = 104
    Top = 488
    Datasets = <
      item
        DataSet = TicRepModuleUnit.frxDBDOrganizacion
        DataSetName = 'frxDBDOrganizacion'
      end
      item
        DataSet = TicRepModuleUnit.frxDBDResguardo
        DataSetName = 'frxDBDResguardo'
      end
      item
        DataSet = TicRepModuleUnit.frxDBPersonal
        DataSetName = 'frxDBPersonal'
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
        Height = 287.212740000000000000
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
            'VALE DE RESGUARDO DE ENTREGA')
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
          Left = 139.960730000000000000
          Top = 118.031540000000000000
          Width = 582.047620000000000000
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
        object Memo10: TfrxMemoView
          Top = 268.346630000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              'RECIBI DE OFFSHORE TECHNICAL ASSISTANCE S.C. QUE CONSISTE EN LO ' +
              'SIGUIENTE:')
          ParentFont = False
        end
        object frxDBPersonalNombreCompleto: TfrxMemoView
          Left = 139.842610000000000000
          Top = 147.401670000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPersonal."NombreCompleto"]')
          ParentFont = False
        end
        object frxDBDResguardocodigoticresguardo: TfrxMemoView
          Left = 140.063080000000000000
          Top = 131.283550000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDResguardo."codigoticresguardo"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDResguardo
        DataSetName = 'frxDBDResguardo'
        RowCount = 0
        object frxDBDResguardocodigoinsumo: TfrxMemoView
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataField = 'tituloarticulo'
          DataSet = frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."tituloarticulo"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 363.157700000000000000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataField = 'codigoinsumo'
          DataSet = frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."codigoinsumo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 15.527520000000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDResguardo."codigoticresguardo"'
        object Memo2: TfrxMemoView
          Top = 0.409400000000005100
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmAsignacionesPersonalTic.frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONCEPTO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 361.953000000000000000
          Top = 0.188930000000027600
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmAsignacionesPersonalTic.frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO INSUMO')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 9.897650000000000000
        Top = 404.409710000000000000
        Width = 740.409927000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 332.598640000000000000
        Top = 476.220780000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 5.338590000000011000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmAsignacionesPersonalTic.frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMENTARIOS:')
          ParentFont = False
        end
        object frxDBDResguardocomentarios: TfrxMemoView
          Left = 0.779530000000000000
          Top = 20.456709999999990000
          Width = 737.008350000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'comentarios'
          DataSet = frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDResguardo."comentarios"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 1.779530000000000000
          Top = 51.692949999999990000
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
            'Frimas del Vale De Resguardo')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 114.574830000000000000
          Top = 243.401670000000000000
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
            'RECIBIO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 112.141930000000000000
          Top = 142.622140000000000000
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
            'ENTREGO')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 454.795610000000000000
          Top = 142.401670000000000000
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
            'APROBO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 1.559060000000000000
          Top = 288.448980000000000000
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
          Top = 296.008040000000100000
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
          Top = 296.008040000000100000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'nombreorganizacion'
          DataSet = frxDBDOrganizacion
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
          Top = 312.126160000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDOrganizacion
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
          Top = 311.126160000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDOrganizacion
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
          Left = 454.323130000000000000
          Top = 244.330860000000000000
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
            'ENTERADO')
          ParentFont = False
        end
        object frxDBDResguardopersonalentrego: TfrxMemoView
          Left = 93.488250000000000000
          Top = 156.519789999999900000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personalentrego'
          DataSet = frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."personalentrego"]')
          ParentFont = False
        end
        object frxDBDResguardopersonalaprobo: TfrxMemoView
          Left = 442.205010000000000000
          Top = 157.519789999999900000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personalaprobo '
          DataSet = frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."personalaprobo "]')
          ParentFont = False
        end
        object frxDBDResguardopersonalrecibio: TfrxMemoView
          Left = 94.488250000000000000
          Top = 258.008040000000100000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personalrecibio'
          DataSet = frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."personalrecibio"]')
          ParentFont = False
        end
        object frxDBDResguardopersonalenterado: TfrxMemoView
          Left = 442.205010000000000000
          Top = 259.008040000000100000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'personalenterado'
          DataSet = frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."personalenterado"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBPersonal: TfrxDBDataset
    UserName = 'frxDBPersonal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Nombres=Nombres'
      'APaterno=APaterno'
      'AMaterno=AMaterno'
      'NombreCompleto=NombreCompleto'
      'codigopersonal=codigopersonal'
      'curp=curp'
      'descripcion=descripcion'
      'idpersonal=idpersonal'
      'imagenpersonal=imagenpersonal'
      'numerosegurosocial=numerosegurosocial'
      'fechaalta=fechaalta'
      'Gruposanguineo=Gruposanguineo'
      'rfc=rfc'
      'telefono=telefono'
      'contacto=contacto'
      'telefonocontacto=telefonocontacto'
      'doccontratacion=doccontratacion'
      'idcargo=idcargo'
      'titulocargo,=titulocargo,'
      'nivel=nivel'
      'iddepartamento=iddepartamento'
      'titulodepartamento=titulodepartamento'
      'CodigoSalario=CodigoSalario'
      'fechaaplicacion=fechaaplicacion'
      'IdLlave=IdLlave'
      'salario=salario'
      'codigomoneda=codigomoneda'
      'TituloMoneda=TituloMoneda'
      'Simbolo=Simbolo')
    DataSource = dspersonal
    BCDToCurrency = False
    Left = 184
    Top = 488
  end
  object frxDBDResguardo: TfrxDBDataset
    UserName = 'frxDBDResguardo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'aprobo=aprobo'
      'area=area'
      'codigoticresguardo=codigoticresguardo'
      'comentarios=comentarios'
      'enterado=enterado'
      'entrego=entrego'
      'idticresguardos=idticresguardos'
      'idusuario=idusuario'
      'numresguardo=numresguardo'
      'recibio=recibio'
      'tiporesguardo=tiporesguardo'
      'codigoinsumo=codigoinsumo'
      'fechaasig=fechaasig'
      'fechavigencia=fechavigencia'
      'IdAcceso=IdAcceso'
      'idarticulo=idarticulo'
      'idpersonal=idpersonal'
      'idresguardodetalle=idresguardodetalle'
      'idresguardoentrega=idresguardoentrega'
      'idresguardorecibido=idresguardorecibido'
      'numinsumoespecificado=numinsumoespecificado'
      'tituloarticulo=tituloarticulo'
      'codigopersonal=codigopersonal'
      'personalrecibio=personalrecibio'
      'personalentrego=personalentrego'
      'personalenterado=personalenterado'
      'personalaprobo=personalaprobo ')
    DataSet = cdReportResDet
    BCDToCurrency = False
    Left = 264
    Top = 488
  end
  object cdReportResDet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 488
  end
  object frxDBDOrganizacion: TfrxDBDataset
    UserName = 'frxDBDOrganizacion'
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
    Left = 368
    Top = 488
  end
  object cdenterado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 712
    Top = 208
  end
  object dsenterado: TDataSource
    DataSet = cdenterado
    Left = 776
    Top = 208
  end
end
