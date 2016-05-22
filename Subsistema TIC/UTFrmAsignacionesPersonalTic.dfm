object FrmAsignacionesPersonalTic: TFrmAsignacionesPersonalTic
  Left = 0
  Top = 0
  Caption = 'Asignacion de Insumos Por Personal'
  ClientHeight = 491
  ClientWidth = 1009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1009
    Height = 25
    Align = alTop
    TabOrder = 0
    object Archivo: TNxOptionButton
      Left = 1
      Top = 1
      Width = 72
      Height = 23
      Align = alLeft
      Caption = 'Archivo'
      Color = clBtnFace
      TabOrder = 0
      UseDockManager = False
      OnClick = ArchivoClick
    end
    object BtnHerramientas: TNxOptionButton
      Left = 161
      Top = 1
      Width = 101
      Height = 23
      Align = alLeft
      Caption = 'Herramientas'
      Color = clBtnFace
      Enabled = False
      TabOrder = 1
      UseDockManager = False
      OnClick = BtnHerramientasClick
    end
    object BtnInsumo: TNxOptionButton
      Left = 73
      Top = 1
      Width = 88
      Height = 23
      Align = alLeft
      Caption = 'Resguardos'
      Color = clBtnFace
      Enabled = False
      TabOrder = 2
      UseDockManager = False
      OnClick = BtnInsumoClick
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 25
    Width = 1009
    Height = 466
    Align = alClient
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object GroupBox1: TGroupBox
      Left = 6
      Top = 6
      Width = 997
      Height = 114
      Align = alTop
      Caption = 'Datos Personal Seleccionado'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Padding.Left = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Panel5: TPanel
        Left = 7
        Top = 15
        Width = 122
        Height = 92
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 10
        Padding.Top = 5
        Padding.Right = 10
        Padding.Bottom = 5
        TabOrder = 0
        object DBImage1: TDBImage
          Left = 1
          Top = 5
          Width = 111
          Height = 82
          Align = alRight
          DataField = 'imagenpersonal'
          DataSource = dspersonal
          Stretch = True
          TabOrder = 0
        end
      end
      object Panel6: TPanel
        Left = 129
        Top = 15
        Width = 861
        Height = 92
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 861
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          OnResize = Panel9Resize
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 861
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            Padding.Top = 4
            Padding.Right = 6
            Padding.Bottom = 4
            TabOrder = 0
            object DBEdit5: TDBEdit
              Left = 192
              Top = 4
              Width = 663
              Height = 23
              Align = alClient
              Color = clMenuBar
              DataField = 'NombreCompleto'
              DataSource = dspersonal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              ExplicitHeight = 21
            end
            object Panel7: TPanel
              Left = 0
              Top = 4
              Width = 192
              Height = 23
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object JvLabel6: TJvLabel
                Left = 12
                Top = 3
                Width = 43
                Height = 13
                Caption = 'Codigo:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object DBEdit1: TDBEdit
                Tag = 1
                Left = 58
                Top = 0
                Width = 121
                Height = 21
                Color = clMenuBar
                DataField = 'CodigoPersonal'
                DataSource = dspersonal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object Panel11: TPanel
            Left = 0
            Top = 31
            Width = 424
            Height = 58
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Panel13: TPanel
              Left = 0
              Top = 0
              Width = 64
              Height = 34
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object JvLabel5: TJvLabel
                Left = 18
                Top = 7
                Width = 44
                Height = 13
                Caption = 'Puesto:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
            end
            object Panel14: TPanel
              Left = 0
              Top = 34
              Width = 424
              Height = 24
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
            end
            object Panel15: TPanel
              Left = 64
              Top = 0
              Width = 360
              Height = 34
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel15'
              Padding.Top = 5
              Padding.Right = 6
              Padding.Bottom = 6
              TabOrder = 2
              object DBEdit7: TDBEdit
                Left = 0
                Top = 5
                Width = 354
                Height = 23
                Align = alClient
                Color = clMenuBar
                DataField = 'TituloCargo'
                DataSource = dspersonal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ExplicitHeight = 21
              end
            end
          end
          object Panel12: TPanel
            Left = 424
            Top = 31
            Width = 437
            Height = 58
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Panel16: TPanel
              Left = 0
              Top = 0
              Width = 104
              Height = 34
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object JvLabel4: TJvLabel
                Left = 13
                Top = 7
                Width = 88
                Height = 13
                Caption = 'Departamento:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
            end
            object Panel17: TPanel
              Left = 0
              Top = 34
              Width = 437
              Height = 24
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
            end
            object Panel18: TPanel
              Left = 104
              Top = 0
              Width = 333
              Height = 34
              Align = alClient
              BevelOuter = bvNone
              Padding.Top = 5
              Padding.Right = 6
              Padding.Bottom = 6
              TabOrder = 2
              object DBEdit8: TDBEdit
                Left = 0
                Top = 5
                Width = 327
                Height = 23
                Align = alClient
                Color = clMenuBar
                DataField = 'titulodepartamento'
                DataSource = dspersonal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ExplicitHeight = 21
              end
            end
          end
        end
      end
    end
    object Panel10: TPanel
      Left = 6
      Top = 120
      Width = 997
      Height = 340
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 340
        Align = alClient
        BevelOuter = bvNone
        Padding.Top = 10
        Padding.Bottom = 10
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 0
          Top = 10
          Width = 997
          Height = 320
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Padding.Left = 10
          Padding.Right = 10
          Padding.Bottom = 4
          ParentFont = False
          TabOrder = 0
          object TabControl1: TTabControl
            Left = 12
            Top = 15
            Width = 973
            Height = 299
            Align = alClient
            TabOrder = 0
            Tabs.Strings = (
              'Asignados'
              'Historial')
            TabIndex = 0
            OnChange = TabControl1Change
            object NextDBGrid1: TNextDBGrid
              Left = 4
              Top = 227
              Width = 965
              Height = 68
              Align = alBottom
              TabOrder = 0
              TabStop = True
              DataSource = dsresguardostic
              object NxDBTextColumn2: TNxDBTextColumn
                DefaultWidth = 125
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Header.Caption = 'Codigo Asignacion'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 0
                SortType = stAlphabetic
                Width = 125
                FieldName = 'codigoresguardodetalle'
              end
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
                Position = 1
                SortType = stAlphabetic
                Width = 150
                FieldName = 'codigoinsumo'
              end
              object NxDBTextColumn3: TNxDBTextColumn
                DefaultWidth = 125
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Header.Caption = 'Articulo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 2
                SortType = stAlphabetic
                Width = 125
                FieldName = 'tituloarticulo'
              end
              object NxDBDateColumn1: TNxDBDateColumn
                DefaultValue = '12/05/2012'
                DefaultWidth = 125
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Header.Caption = 'Fecha de Asignacion'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 3
                SortType = stDate
                Width = 125
                FieldName = 'fechaasig'
                HideWhenEmpty = False
                NoneCaption = 'None'
                TodayCaption = 'Today'
              end
              object NxDBDateColumn2: TNxDBDateColumn
                DefaultValue = '12/05/2012'
                DefaultWidth = 125
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Header.Caption = 'Fecha de Vigencia'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 4
                SortType = stDate
                Width = 125
                FieldName = 'fechavigencia'
                HideWhenEmpty = False
                NoneCaption = 'None'
                TodayCaption = 'Today'
              end
              object NxDBMemoColumn2: TNxDBMemoColumn
                DefaultValue = 'descricioninsumo'
                DefaultWidth = 200
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Header.Caption = 'Descripcion Insumo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 5
                SortType = stAlphabetic
                Width = 200
                FieldName = 'descricioninsumo'
                MemoDisplayOptions = mdContent
              end
              object NxDBMemoColumn1: TNxDBMemoColumn
                DefaultWidth = 250
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Header.Caption = 'Descripcion'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 6
                SortType = stAlphabetic
                Width = 250
                FieldName = 'descripcion'
                MemoDisplayOptions = mdContent
              end
            end
            object frxPreview1: TfrxPreview
              Left = 4
              Top = 24
              Width = 965
              Height = 203
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              OutlineVisible = False
              OutlineWidth = 120
              ThumbnailVisible = True
              UseReportHints = True
            end
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 64
    Top = 24
    object BuscarPersonal1: TMenuItem
      Caption = 'Abrir ficha de Personal'
      OnClick = BuscarPersonal1Click
    end
    object CerrarPersonal1: TMenuItem
      Caption = 'Cerrar ficha de Personal'
      OnClick = CerrarPersonal1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ImprimirFichadePersonal1: TMenuItem
      Caption = 'Imprimir ficha de Personal'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      OnClick = Salir1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 136
    Top = 24
    object Devolucion1: TMenuItem
      Caption = 'Nuevo'
      ShortCut = 16429
      OnClick = Devolucion1Click
    end
    object EditarInsumo1: TMenuItem
      Caption = 'Abrir'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Guardar1: TMenuItem
      Caption = 'Guardar'
    end
  end
  object cdpersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    AfterOpen = cdpersonalAfterOpen
    AfterClose = cdpersonalAfterClose
    AfterRefresh = cdpersonalAfterOpen
    Left = 536
  end
  object dspersonal: TDataSource
    DataSet = cdpersonal
    Left = 600
  end
  object cdresguardosasignados: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdresguardosasignadosAfterPost
    AfterScroll = cdresguardosasignadosAfterScroll
    Left = 688
  end
  object dsresguardostic: TDataSource
    DataSet = cdresguardosasignados
    Left = 768
  end
  object PopupMenu3: TPopupMenu
    Left = 256
    Top = 24
    object RegistrarDevolucindeInsumo1: TMenuItem
      Caption = 'Registrar Devoluci'#243'n de Insumo'
    end
  end
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41044.735946493100000000
    ReportOptions.LastChange = 41132.472278900470000000
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
    Left = 152
    Top = 104
    Datasets = <
      item
        DataSet = frxResguardosAsignados
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDOrganizacion
        DataSetName = 'frxDBDOrganizacion'
      end
      item
        DataSet = frxDBDPersonal
        DataSetName = 'frxDBDPersonal'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Height = 49.133890000000000000
        ParentFont = False
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        DataSet = frxResguardosAsignados
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object codigoinsumo: TfrxMemoView
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Cursor = crHandPoint
          TagStr = '[frxDBDataset1."codigoinsumo"]'
          Color = 15790320
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."codigoinsumo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 77.834645670000000000
          Top = 1.000000000000000000
          Width = 88.818882990000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'tituloarticulo'
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."tituloarticulo"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 165.818897640000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'personalentrego'
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."personalentrego"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 286.685039370000000000
          Top = 1.000000000000000000
          Width = 120.944881890000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'personalenterado'
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."personalenterado"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 407.866141730000000000
          Top = 1.000000000000000000
          Width = 120.944881890000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'personalenterado'
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."personalenterado"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 529.031496060000000000
          Top = 1.000000000000000000
          Width = 94.488188980000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'fechaasig'
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."fechaasig"]')
          ParentFont = False
        end
        object frxDBDataset1descripcioninsumo: TfrxMemoView
          Left = 185.196970000000000000
          Top = 17.118119999999980000
          Width = 532.913730000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            'DESCRIPCION: [frxDBDataset1."descripcioninsumo"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 17.118119999999980000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'ARTICULO:[frxDBDataset1."tituloarticulo"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 31.015769999999970000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'COMENTARIOS: [frxDBDataset1."descripcioninsumo"]')
          ParentFont = False
        end
        object codigoresguardo: TfrxMemoView
          Left = 624.401980000000000000
          Top = 1.000000000000000000
          Width = 94.488188980000000000
          Height = 15.118120000000000000
          ShowHint = False
          Cursor = crHandPoint
          TagStr = '[frxDBDataset1."idticresguardos"]'
          DataField = 'codigoticresguardo'
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."codigoticresguardo"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 260.787570000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 237.039626380000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 77.834645670000000000
          Top = 237.039626380000000000
          Width = 88.818882990000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ARTICULO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 165.756030000000000000
          Top = 237.039580000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTREGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 286.819110000000000000
          Top = 237.039626380000000000
          Width = 120.944881890000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTERADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 408.000310000000000000
          Top = 237.039626380000000000
          Width = 120.944881890000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'AUTORIZO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 529.165740000000000000
          Top = 237.039626380000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA ASIGNACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 621.858690000000000000
          Top = 237.039580000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxResguardosAsignados
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO RESGUARDO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 1.220470000000000000
          Top = 7.559059999999999000
          Width = 721.890230000000000000
          Height = 132.283550000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 1.000000000000000000
          Top = 201.078850000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE INSUMOS ASIGNADOS VIGENTES')
          ParentFont = False
        end
        object frxDBDOrganizacionnombreorganizacion: TfrxMemoView
          Left = 167.519790000000000000
          Top = 7.559059999999999000
          Width = 551.811380000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'nombreorganizacion'
          DataSet = frxDBDOrganizacion
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
          Left = 114.606370000000000000
          Top = 41.574830000000000000
          Width = 642.520100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RFC: [frxDBDOrganizacion."rfc"]')
          ParentFont = False
        end
        object frxDBDOrganizaciontelefono1: TfrxMemoView
          Left = 167.519790000000000000
          Top = 52.913420000000000000
          Width = 555.590910000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'TELEFONOS: [frxDBDOrganizacion."telefono1"], [frxDBDOrganizacion' +
              '."telefono2"], [frxDBDOrganizacion."telefono3"]'
            
              '[frxDBDOrganizacion."telefono4"], [frxDBDOrganizacion."telefono5' +
              '"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 530.354670000000000000
          Top = 89.149660000000000000
          Width = 188.976500000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA: [now]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 16.338590000000000000
          Top = 15.118120000000000000
          Width = 143.622140000000000000
          Height = 113.385900000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDPersonalNombreCompleto: TfrxMemoView
          Top = 139.842610000000000000
          Width = 718.110700000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PERSONAL: [frxDBDPersonal."NombreCompleto"]')
          ParentFont = False
        end
        object frxDBDPersonaltitulocargo: TfrxMemoView
          Top = 154.960730000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CARGO: [frxDBDPersonal."titulocargo"]')
          ParentFont = False
        end
        object frxDBDPersonalcodigopersonal: TfrxMemoView
          Top = 170.078850000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CODIGO PERSONAL: [frxDBDPersonal."codigopersonal"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        object Memo27: TfrxMemoView
          Left = -0.102350000000000000
          Width = 718.110700000000000000
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
          Left = 196.653680000000000000
          Top = 3.779530000000136000
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
          Left = 230.669450000000000000
          Top = 3.779530000000136000
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
          Left = 428.984540000000000000
          Top = 19.897649999999940000
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
          Left = 230.669450000000000000
          Top = 18.897649999999940000
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
      end
    end
  end
  object cdresguardoshistorial: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 856
    Top = 32
  end
  object dsdetallesreguardostic: TDataSource
    DataSet = cdresguardoshistorial
    Left = 952
  end
  object frxResguardosAsignados: TfrxDBDataset
    UserName = 'frxDBDataset1'
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
      'personalrecibio=personalrecibio'
      'personalentrego=personalentrego'
      'personalenterado=personalenterado'
      'personalaprobo=personalaprobo'
      'descripcioninsumo=descripcioninsumo')
    DataSet = cdresguardosasignados
    BCDToCurrency = False
    Left = 304
    Top = 96
  end
  object frxDBDPersonal: TfrxDBDataset
    UserName = 'frxDBDPersonal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'activo=activo'
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
      'titulocargo=titulocargo'
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
    DataSet = cdpersonal
    BCDToCurrency = False
    Left = 216
    Top = 104
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
    Left = 408
    Top = 64
  end
  object frxDBDHistorial: TfrxDBDataset
    UserName = 'frxDBDHistorial'
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
      'dresguardodetalle=dresguardodetalle'
      'idresguardoentrega=idresguardoentrega'
      'idresguardorecibido=idresguardorecibido'
      'numinsumoespecificado=numinsumoespecificado'
      'descripcioninsumo=descripcioninsumo'
      'tituloarticulo=tituloarticulo'
      'codigopersonal=codigopersonal'
      'personalrecibio=personalrecibio'
      'personalentrego=personalentrego'
      'personalenterado=personalenterado '
      'personalaprobo=personalaprobo')
    DataSet = cdresguardoshistorial
    BCDToCurrency = False
    Left = 472
    Top = 104
  end
  object cdresguardos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 96
  end
  object dsresguardos: TDataSource
    DataSet = cdresguardos
    Left = 760
    Top = 96
  end
  object frxDBresguardos: TfrxDBDataset
    UserName = 'frxDBresguardos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigoticresguardo=codigoticresguardo'
      'comentarios=comentarios'
      'firmante1=firmante1'
      'firmante2=firmante2'
      'idpersonal=idpersonal'
      'codigoinsumo=codigoinsumo'
      'fechaasig=fechaasig'
      'fechavigencia=fechavigencia'
      'idarticulo=idarticulo'
      'idresguardo=idresguardo'
      'tituloarticulo=tituloarticulo'
      'firm1na=firm1na'
      'firm2na=firm2na ')
    DataSet = cdresguardos
    BCDToCurrency = False
    Left = 712
    Top = 136
  end
  object frxReport2: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41044.735946493100000000
    ReportOptions.LastChange = 41131.771870208340000000
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
    Left = 584
    Top = 96
    Datasets = <
      item
        DataSet = frxDBDHistorial
        DataSetName = 'frxDBDHistorial'
      end
      item
        DataSet = frxDBDOrganizacion
        DataSetName = 'frxDBDOrganizacion'
      end
      item
        DataSet = frxDBDPersonal
        DataSetName = 'frxDBDPersonal'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 49.574830000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDHistorial
        DataSetName = 'frxDBDHistorial'
        RowCount = 0
        object frxDBDHistorialcodigoinsumo: TfrxMemoView
          Top = 3.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataField = 'codigoinsumo'
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frxDBDHistorial."codigoinsumo"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 75.976500000000000000
          Top = 3.000000000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'personalrecibio'
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDHistorial."personalrecibio"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 200.362400000000000000
          Top = 3.000000000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'personalaprobo'
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDHistorial."personalaprobo"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 328.819110000000000000
          Top = 3.000000000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'personalenterado '
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDHistorial."personalenterado "]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 453.748300000000000000
          Top = 3.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'fechaasig'
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDHistorial."fechaasig"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 529.338899999999900000
          Top = 3.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'fechavigencia'
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDHistorial."fechavigencia"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 604.724800000000000000
          Top = 3.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'codigoticresguardo'
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDHistorial."codigoticresguardo"]')
          ParentFont = False
        end
        object frxDBDHistorialdescripcioninsumo: TfrxMemoView
          Left = 200.315090000000000000
          Top = 18.118119999999980000
          Width = 517.795610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            'DESCRIPCION ARTICULO: [frxDBDHistorial."descripcioninsumo"]')
          ParentFont = False
        end
        object frxDBDHistorialtituloarticulo: TfrxMemoView
          Top = 18.118119999999980000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'ARTICULO: [frxDBDHistorial."tituloarticulo"]')
          ParentFont = False
        end
        object frxDBDHistorialcomentarios: TfrxMemoView
          Top = 33.236240000000010000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'COMENTARIOS: [frxDBDHistorial."comentarios"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 238.110390000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 213.023810000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COD. INSUMO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 75.976500000000000000
          Top = 213.023810000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 200.362400000000000000
          Top = 213.023810000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'APROBO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 328.819110000000000000
          Top = 213.023810000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTERADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 453.748300000000000000
          Top = 213.023810000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA ASIGNACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 529.338899999999900000
          Top = 213.023810000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA DEVOLUCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 604.724800000000000000
          Top = 213.023810000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 10218495
          DataSet = frxDBDHistorial
          DataSetName = 'frxDBDHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO RESGUARDO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Width = 721.890230000000000000
          Height = 132.283550000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 181.417440000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'HISTORIAL DE INSUMOS DEVUELTOS')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 170.078850000000000000
          Width = 551.811380000000000000
          Height = 34.015770000000010000
          ShowHint = False
          DataField = 'nombreorganizacion'
          DataSet = frxDBDOrganizacion
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
        object Memo17: TfrxMemoView
          Left = 117.165430000000000000
          Top = 34.015770000000010000
          Width = 642.520100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RFC: [frxDBDOrganizacion."rfc"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 170.078850000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frxDBDOrganizacion
          DataSetName = 'frxDBDOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'TELEFONOS: [frxDBDOrganizacion."telefono1"], [frxDBDOrganizacion' +
              '."telefono2"], [frxDBDOrganizacion."telefono3"]'
            
              '[frxDBDOrganizacion."telefono4"], [frxDBDOrganizacion."telefono5' +
              '"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 532.913730000000000000
          Top = 81.590600000000000000
          Width = 188.976500000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA: [now]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 18.897650000000000000
          Top = 7.559060000000003000
          Width = 143.622140000000000000
          Height = 113.385900000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo20: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 714.331170000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PERSONAL: [frxDBDPersonal."NombreCompleto"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 3.779530000000000000
          Top = 147.401670000000000000
          Width = 714.331170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PUESTO: [frxDBDPersonal."titulocargo"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 3.779530000000000000
          Top = 159.519790000000000000
          Width = 714.331170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CODIGO PERSONAL: [frxDBDPersonal."codigopersonal"]')
          ParentFont = False
        end
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41148.558747291670000000
    ReportOptions.LastChange = 41148.558747291670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 496
    Top = 248
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
