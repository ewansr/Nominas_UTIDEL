object FrmDevolucionesGeneral: TFrmDevolucionesGeneral
  Left = 0
  Top = 0
  Caption = 'FrmDevolucionesGeneral'
  ClientHeight = 615
  ClientWidth = 1016
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 25
    Align = alTop
    TabOrder = 0
    object NxOptionButton1: TNxOptionButton
      Left = 209
      Top = 1
      Width = 104
      Height = 23
      Align = alLeft
      Caption = 'Herramientas'
      Color = clBtnFace
      TabOrder = 0
      UseDockManager = False
    end
    object NxOptionButton2: TNxOptionButton
      Left = 1
      Top = 1
      Width = 104
      Height = 23
      Align = alLeft
      Caption = 'Busqueda'
      Color = clBtnFace
      TabOrder = 1
      UseDockManager = False
      OnClick = NxOptionButton2Click
    end
    object NxOptionButton3: TNxOptionButton
      Left = 105
      Top = 1
      Width = 104
      Height = 23
      Align = alLeft
      Caption = 'Acciones'
      Color = clBtnFace
      TabOrder = 2
      UseDockManager = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 559
    Width = 1016
    Height = 56
    Align = alBottom
    TabOrder = 1
    object NxButton2: TNxButton
      Left = 912
      Top = 1
      Width = 103
      Height = 54
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 0
    end
    object NxButton3: TNxButton
      Left = 808
      Top = 1
      Width = 104
      Height = 54
      Align = alRight
      Caption = 'Devolver'
      TabOrder = 1
      OnClick = NxButton3Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 25
    Width = 1016
    Height = 115
    Align = alTop
    TabOrder = 2
    object nxbutto: TGroupBox
      Left = 1
      Top = 1
      Width = 1014
      Height = 113
      Align = alClient
      Caption = 'Personal'
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 128
        Top = 67
        Width = 105
        Height = 13
        Caption = 'Apellidos y Nombres: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 128
        Top = 31
        Width = 86
        Height = 13
        Caption = 'Codigo Personal: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 601
        Top = 67
        Width = 75
        Height = 13
        Caption = 'Departamento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 473
        Top = 31
        Width = 38
        Height = 13
        Caption = 'Cargo: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBImage1: TDBImage
        Left = 22
        Top = 18
        Width = 95
        Height = 80
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 211
        Top = 29
        Width = 205
        Height = 21
        DataField = 'codigopersonal'
        DataSource = dspersonal
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 231
        Top = 63
        Width = 337
        Height = 21
        DataField = 'NombreCompleto'
        DataSource = dspersonal
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 517
        Top = 29
        Width = 483
        Height = 21
        DataField = 'titulocargo'
        DataSource = dspersonal
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 682
        Top = 64
        Width = 318
        Height = 21
        DataField = 'titulodepartamento'
        DataSource = dspersonal
        TabOrder = 4
      end
    end
  end
  object NxPageControl1: TNxPageControl
    Left = 0
    Top = 140
    Width = 1016
    Height = 419
    ActivePage = NxTabSheet1
    ActivePageIndex = 0
    Align = alClient
    TabOrder = 3
    BackgroundColor = clSilver
    BackgroundKind = bkSolid
    Margin = 0
    Spacing = 0
    TabHeight = 17
    object NxTabSheet1: TNxTabSheet
      Caption = 'Devolucion'
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 398
        Align = alClient
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 344
          Height = 396
          Align = alLeft
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 342
            Height = 394
            Align = alClient
            Caption = 'Insumos Asignados Al Personal'
            Padding.Left = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object NextDBGrid1: TNextDBGrid
              Left = 7
              Top = 15
              Width = 328
              Height = 372
              Align = alClient
              TabOrder = 0
              TabStop = True
              OnCellDblClick = NextDBGrid1CellDblClick
              DataSource = dsinsumosasignados
              object NxDBTextColumn1: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Insumo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 0
                SortType = stAlphabetic
                FieldName = 'codigoinsumo'
              end
              object NxDBTextColumn2: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Articulo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 1
                SortType = stAlphabetic
                FieldName = 'tituloarticulo'
              end
              object NxDBTextColumn3: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Resguardo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 2
                SortType = stAlphabetic
                FieldName = 'codigoticresguardo'
              end
              object NxDBDateColumn1: TNxDBDateColumn
                DefaultValue = '18/08/2012'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Fecha'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 3
                SortType = stDate
                FieldName = 'fechaasig'
                HideWhenEmpty = False
                NoneCaption = 'None'
                TodayCaption = 'Today'
              end
              object NxDBTextColumn4: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Entrego'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 4
                SortType = stAlphabetic
                FieldName = 'personalentrego'
              end
              object NxDBTextColumn5: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Enterado'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 5
                SortType = stAlphabetic
                FieldName = 'personalenterado'
              end
              object NxDBTextColumn6: TNxDBTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Aprobo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 6
                SortType = stAlphabetic
                FieldName = 'personalaprobo'
              end
            end
          end
        end
        object Panel6: TPanel
          Left = 345
          Top = 1
          Width = 670
          Height = 396
          Align = alClient
          TabOrder = 1
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 668
            Height = 186
            Align = alTop
            TabOrder = 0
            object GroupBox3: TGroupBox
              Left = 1
              Top = 1
              Width = 666
              Height = 184
              Align = alClient
              Caption = 'Firmantes del Resguardo'
              Padding.Left = 5
              Padding.Right = 5
              Padding.Bottom = 5
              TabOrder = 0
              object JvLabel5: TJvLabel
                Left = 12
                Top = 43
                Width = 40
                Height = 13
                Caption = 'Recibio:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel6: TJvLabel
                Left = 12
                Top = 68
                Width = 41
                Height = 13
                Caption = 'Aprobo:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel7: TJvLabel
                Left = 12
                Top = 94
                Width = 53
                Height = 13
                Caption = 'Enterado: '
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel8: TJvLabel
                Left = 12
                Top = 16
                Width = 94
                Height = 13
                Caption = 'Codigo Resguardo:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel9: TJvLabel
                Left = 351
                Top = 16
                Width = 90
                Height = 13
                Caption = 'Fecha Resguardo:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel10: TJvLabel
                Left = 12
                Top = 122
                Width = 66
                Height = 13
                Caption = 'Comentarios:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 105
                Top = 66
                Width = 535
                Height = 21
                DataField = 'aprobo'
                DataSource = dsresguardos
                KeyField = 'idpersonal'
                ListField = 'infgeneral'
                ListSource = dsaprobo
                TabOrder = 0
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 106
                Top = 93
                Width = 534
                Height = 21
                DataField = 'enterado'
                DataSource = dsresguardos
                KeyField = 'idpersonal'
                ListField = 'infgeneral'
                ListSource = dsenterado
                TabOrder = 1
              end
              object Edit1: TEdit
                Left = 106
                Top = 40
                Width = 511
                Height = 21
                TabOrder = 2
              end
              object NxButton1: TNxButton
                Left = 621
                Top = 37
                Width = 19
                Caption = '...'
                TabOrder = 3
                OnClick = NxButton1Click
              end
              object Edit2: TEdit
                Left = 106
                Top = 14
                Width = 195
                Height = 21
                TabOrder = 4
              end
              object DateTimePicker1: TDateTimePicker
                Left = 444
                Top = 14
                Width = 194
                Height = 21
                Date = 41141.459715405090000000
                Time = 41141.459715405090000000
                TabOrder = 5
              end
              object DBMemo1: TDBMemo
                Left = 106
                Top = 120
                Width = 535
                Height = 56
                DataField = 'comentarios'
                DataSource = dsresguardos
                TabOrder = 6
              end
            end
          end
          object Panel8: TPanel
            Left = 1
            Top = 187
            Width = 668
            Height = 208
            Align = alClient
            TabOrder = 1
            object GroupBox4: TGroupBox
              Left = 1
              Top = 1
              Width = 666
              Height = 206
              Align = alClient
              Caption = 'Insumos a devolver'
              Padding.Left = 5
              Padding.Right = 5
              Padding.Bottom = 5
              TabOrder = 0
              object NextDBGrid2: TNextDBGrid
                Left = 7
                Top = 15
                Width = 652
                Height = 184
                Align = alClient
                TabOrder = 0
                TabStop = True
                DataSource = dsmemdevolverinsumos
                object NxDBTextColumn7: TNxDBTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footer.Caption = 'codigo'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 0
                  SortType = stAlphabetic
                  FieldName = 'codigoinsumo'
                end
                object NxDBTextColumn8: TNxDBTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footer.Caption = 'Articulo'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 1
                  SortType = stAlphabetic
                  FieldName = 'articulo'
                end
                object NxDBTextColumn9: TNxDBTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footer.Caption = 'Descripcion'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 2
                  SortType = stAlphabetic
                  FieldName = 'descripcioninsumo'
                end
              end
            end
          end
        end
      end
    end
    object NxTabSheet2: TNxTabSheet
      Caption = 'Historial Devoluciones'
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 70
        Align = alTop
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 1014
          Height = 68
          Align = alClient
          Caption = 'Filtro por Fechas'
          TabOrder = 0
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 70
        Width = 1016
        Height = 328
        Align = alClient
        TabOrder = 1
        object Panel11: TPanel
          Left = 776
          Top = 1
          Width = 239
          Height = 326
          Align = alRight
          TabOrder = 0
        end
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 775
          Height = 326
          Align = alClient
          TabOrder = 1
          object NextDBGrid3: TNextDBGrid
            Left = 1
            Top = 1
            Width = 773
            Height = 324
            Align = alClient
            TabOrder = 0
            TabStop = True
          end
        end
      end
    end
  end
  object cdpersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 40
  end
  object cdrecibio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 120
  end
  object cdaprobo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 120
  end
  object cdenterado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 120
  end
  object cdinsumosasignados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 216
  end
  object cddetalleresguardos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 856
    Top = 336
  end
  object memdevolverinsumos: TJvMemoryData
    FieldDefs = <
      item
        Name = 'codigoinsumo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'fechaasig'
        DataType = ftDateTime
      end
      item
        Name = 'fechavigencia'
        DataType = ftDateTime
      end
      item
        Name = 'IdAcceso'
        DataType = ftInteger
      end
      item
        Name = 'idarticulo'
        DataType = ftInteger
      end
      item
        Name = 'idpersonal'
        DataType = ftInteger
      end
      item
        Name = 'idresguardodetalle'
        DataType = ftInteger
      end
      item
        Name = 'idresguardoentrega'
        DataType = ftInteger
      end
      item
        Name = 'idresguardorecibido'
        DataType = ftInteger
      end
      item
        Name = 'numinsumoespecificado'
        DataType = ftInteger
      end
      item
        Name = 'descripcioninsumo'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'articulo'
        DataType = ftString
        Size = 200
      end>
    Left = 600
    Top = 376
  end
  object cdresguardos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 120
  end
  object dspersonal: TDataSource
    DataSet = cdpersonal
    Left = 408
    Top = 40
  end
  object dsrecibio: TDataSource
    DataSet = cdrecibio
    Left = 248
    Top = 120
  end
  object dsaprobo: TDataSource
    DataSet = cdaprobo
    Left = 336
    Top = 120
  end
  object dsenterado: TDataSource
    DataSet = cdenterado
    Left = 428
    Top = 120
  end
  object dsinsumosasignados: TDataSource
    DataSet = cdinsumosasignados
    Left = 232
    Top = 184
  end
  object dsdetalleresguardos: TDataSource
    Left = 912
    Top = 336
  end
  object dsresguardos: TDataSource
    DataSet = cdresguardos
    Left = 512
    Top = 128
  end
  object dsmemdevolverinsumos: TDataSource
    DataSet = memdevolverinsumos
    Left = 664
    Top = 376
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 16
    object PorPersonal1: TMenuItem
      Caption = 'Por Personal'
      OnClick = PorPersonal1Click
    end
    object PorInsumo1: TMenuItem
      Caption = 'Por Insumo'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 160
    Top = 8
    object Devolver1: TMenuItem
      Caption = 'Devolver'
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 272
    Top = 16
    object BorrarInsumoaDevolver1: TMenuItem
      Caption = 'Borrar Insumo a Devolver'
    end
    object AgregarInsumoaDevolver1: TMenuItem
      Caption = 'Agregar Insumo a Devolver'
    end
  end
  object cdnumultimocodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 120
  end
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41149.435799872680000000
    ReportOptions.LastChange = 41149.435799872680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 376
    Top = 304
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object cdresguardosdevueltos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 832
    Top = 8
  end
  object dsresguardosdevueltos: TDataSource
    DataSet = cdresguardosdevueltos
    Left = 768
    Top = 8
  end
end
