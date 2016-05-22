object FrmVentanaPrincipalTIC: TFrmVentanaPrincipalTIC
  Left = 0
  Top = 0
  Caption = 'FrmVentanaPrincipalTIC'
  ClientHeight = 636
  ClientWidth = 944
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 636
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 388
      Width = 942
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 389
      ExplicitWidth = 944
    end
    object Panel3: TPanel
      Left = 1
      Top = 169
      Width = 942
      Height = 219
      Align = alClient
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 940
        Height = 217
        Align = alClient
        Caption = 'Descripcion Insumos'
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object griddetalle: TNextDBGrid
          Left = 7
          Top = 20
          Width = 926
          Height = 190
          Align = alClient
          Options = [goHeader, goSelectFullRow]
          TabOrder = 0
          TabStop = True
          OnMouseDown = griddetalleMouseDown
          DataSource = dsdetespxarxgrxsg
          object NxDBTextColumn27: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Codigo'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 0
            SortType = stAlphabetic
            FieldName = 'codigo'
          end
          object NxDBTextColumn28: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Titulo Articulo'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 1
            SortType = stAlphabetic
            FieldName = 'tituloarticulo'
          end
          object NxDBTextColumn29: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Descripcion del Insumo'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 2
            SortType = stAlphabetic
            FieldName = 'descripciontotal'
          end
          object NxDBTextColumn30: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Estado de Asignacion'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 3
            SortType = stAlphabetic
            FieldName = 'asignado'
          end
          object NxDBTextColumn31: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Ultimo Mantto. Prev.'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 4
            SortType = stAlphabetic
            FieldName = 'ultimomanttoprev'
          end
          object NxDBTextColumn32: TNxDBTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Proximo Mantto. Prev.'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 5
            SortType = stAlphabetic
            FieldName = 'proximomantto'
          end
        end
        object Panel19: TPanel
          Left = 399
          Top = 114
          Width = 169
          Height = 17
          BevelOuter = bvLowered
          Color = clWindow
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object ProgressBar1: TProgressBar
            Left = 1
            Top = 1
            Width = 167
            Height = 15
            Align = alClient
            TabOrder = 0
          end
        end
        object Panel20: TPanel
          Left = 300
          Top = 91
          Width = 365
          Height = 18
          BevelOuter = bvNone
          Color = clWindow
          ParentBackground = False
          TabOrder = 2
          object JvLabel22: TJvLabel
            Left = 0
            Top = 0
            Width = 282
            Height = 13
            Align = alClient
            Alignment = taCenter
            Caption = 'No se Han Encontrado Resultados con el criterio ingresado'
            Transparent = True
            Visible = False
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 391
      Width = 942
      Height = 244
      Align = alBottom
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 940
        Height = 242
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Descripcion General del Insumo'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object PageControl2: TPageControl
            Left = 0
            Top = 0
            Width = 932
            Height = 214
            ActivePage = TabSheet9
            Align = alClient
            TabOrder = 0
            OnChange = PageControl2Change
            object TabSheet5: TTabSheet
              Caption = 'Descripcion'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Panel9: TPanel
                Left = 0
                Top = 0
                Width = 924
                Height = 186
                Align = alClient
                TabOrder = 0
                object Panel14: TPanel
                  Left = 1
                  Top = 1
                  Width = 922
                  Height = 184
                  Align = alClient
                  Padding.Left = 5
                  Padding.Top = 5
                  Padding.Right = 5
                  Padding.Bottom = 5
                  TabOrder = 0
                  object GroupBox8: TGroupBox
                    Left = 6
                    Top = 6
                    Width = 910
                    Height = 172
                    Align = alClient
                    Caption = 'Descripcion General del Insumo'
                    TabOrder = 0
                    object JvLabel2: TJvLabel
                      Left = 293
                      Top = 16
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
                    object JvLabel3: TJvLabel
                      Left = 41
                      Top = 53
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
                      Left = 23
                      Top = 88
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
                    object DBEdit2: TDBEdit
                      Left = 416
                      Top = 13
                      Width = 224
                      Height = 21
                      DataField = 'fechaespecificacion'
                      DataSource = dsdetespxarxgrxsg
                      TabOrder = 0
                    end
                    object DBEdit1: TDBEdit
                      Left = 92
                      Top = 23
                      Width = 183
                      Height = 21
                      DataField = 'codigo'
                      DataSource = dsdetespxarxgrxsg
                      TabOrder = 1
                    end
                    object DBEdit3: TDBEdit
                      Left = 87
                      Top = 50
                      Width = 183
                      Height = 21
                      DataField = 'tituloarticulo'
                      DataSource = dsdetespxarxgrxsg
                      TabOrder = 2
                    end
                    object DBMemo1: TDBMemo
                      Left = 85
                      Top = 87
                      Width = 555
                      Height = 74
                      DataField = 'descripciontotal'
                      DataSource = dsdetespxarxgrxsg
                      TabOrder = 3
                    end
                  end
                end
              end
            end
            object TabSheet6: TTabSheet
              Caption = 'Asignado'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Panel10: TPanel
                Left = 0
                Top = 0
                Width = 924
                Height = 186
                Align = alClient
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 0
                object Panel1: TPanel
                  Left = 733
                  Top = 6
                  Width = 185
                  Height = 174
                  Align = alRight
                  Caption = 'Panel1'
                  TabOrder = 0
                  object GroupBox13: TGroupBox
                    Left = 1
                    Top = 1
                    Width = 183
                    Height = 172
                    Align = alClient
                    Caption = 'Accciones'
                    Padding.Left = 5
                    Padding.Right = 5
                    Padding.Bottom = 5
                    TabOrder = 0
                    object NxButton5: TNxButton
                      Left = 7
                      Top = 38
                      Width = 169
                      Align = alTop
                      Caption = 'Devolver'
                      TabOrder = 0
                      OnClick = NxButton5Click
                    end
                    object NxButton6: TNxButton
                      Left = 7
                      Top = 15
                      Width = 169
                      Align = alTop
                      Caption = 'Asignar'
                      TabOrder = 1
                      OnClick = NxButton6Click
                    end
                    object NxButton7: TNxButton
                      Left = 7
                      Top = 61
                      Width = 169
                      Align = alTop
                      Caption = 'Ver Resguardo'
                      TabOrder = 2
                      OnClick = NxButton7Click
                    end
                  end
                end
                object Panel15: TPanel
                  Left = 6
                  Top = 6
                  Width = 727
                  Height = 174
                  Align = alClient
                  Caption = 'Panel15'
                  TabOrder = 1
                  object GroupBox4: TGroupBox
                    Left = 1
                    Top = 44
                    Width = 725
                    Height = 37
                    Align = alTop
                    Caption = 'Informacion Personal'
                    TabOrder = 0
                    object JvLabel6: TJvLabel
                      Left = 15
                      Top = 17
                      Width = 95
                      Height = 13
                      Caption = 'Nombre y Apellido: '
                      Transparent = True
                      HotTrackFont.Charset = DEFAULT_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -11
                      HotTrackFont.Name = 'Tahoma'
                      HotTrackFont.Style = []
                    end
                    object JvLabel7: TJvLabel
                      Left = 442
                      Top = 15
                      Width = 83
                      Height = 13
                      Caption = 'Codigo Personal:'
                      Transparent = True
                      HotTrackFont.Charset = DEFAULT_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -11
                      HotTrackFont.Name = 'Tahoma'
                      HotTrackFont.Style = []
                    end
                    object DBEdit5: TDBEdit
                      Left = 108
                      Top = 12
                      Width = 293
                      Height = 21
                      DataField = 'personalrecibio'
                      DataSource = dsresasigact
                      TabOrder = 0
                    end
                    object DBEdit6: TDBEdit
                      Left = 527
                      Top = 12
                      Width = 274
                      Height = 21
                      DataField = 'codigopersonal'
                      DataSource = dsresasigact
                      TabOrder = 1
                    end
                  end
                  object GroupBox3: TGroupBox
                    Left = 1
                    Top = 1
                    Width = 725
                    Height = 43
                    Align = alTop
                    Caption = 'Informacion Insumo'
                    TabOrder = 1
                    object JvLabel5: TJvLabel
                      Left = 32
                      Top = 15
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
                    object JvLabel14: TJvLabel
                      Left = 594
                      Top = 10
                      Width = 8
                      Height = 25
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -21
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      Transparent = True
                      HotTrackFont.Charset = DEFAULT_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -21
                      HotTrackFont.Name = 'Tahoma'
                      HotTrackFont.Style = []
                    end
                    object JvLabel13: TJvLabel
                      Left = 553
                      Top = 15
                      Width = 42
                      Height = 13
                      Caption = 'Estado: '
                      Transparent = True
                      HotTrackFont.Charset = DEFAULT_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -11
                      HotTrackFont.Name = 'Tahoma'
                      HotTrackFont.Style = []
                    end
                    object DBEdit4: TDBEdit
                      Left = 110
                      Top = 12
                      Width = 183
                      Height = 21
                      DataField = 'Codigo'
                      DataSource = dsdetespxarxgrxsg
                      DragCursor = crDefault
                      TabOrder = 0
                    end
                  end
                  object GroupBox5: TGroupBox
                    Left = 1
                    Top = 81
                    Width = 725
                    Height = 92
                    Align = alClient
                    Caption = 'Informacion del Resguardo'
                    TabOrder = 2
                    object JvLabel8: TJvLabel
                      Left = 15
                      Top = 14
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
                      Left = 271
                      Top = 21
                      Width = 89
                      Height = 13
                      Caption = 'Fecha Asignacion:'
                      Transparent = True
                      HotTrackFont.Charset = DEFAULT_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -11
                      HotTrackFont.Name = 'Tahoma'
                      HotTrackFont.Style = []
                    end
                    object JvLabel10: TJvLabel
                      Left = 31
                      Top = 49
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
                    object JvLabel11: TJvLabel
                      Left = 512
                      Top = 17
                      Width = 88
                      Height = 13
                      Caption = 'Personal Entrego:'
                      Transparent = True
                      HotTrackFont.Charset = DEFAULT_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -11
                      HotTrackFont.Name = 'Tahoma'
                      HotTrackFont.Style = []
                    end
                    object JvLabel12: TJvLabel
                      Left = 510
                      Top = 67
                      Width = 85
                      Height = 13
                      Caption = 'Personal Aprobo:'
                      Transparent = True
                      HotTrackFont.Charset = DEFAULT_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -11
                      HotTrackFont.Name = 'Tahoma'
                      HotTrackFont.Style = []
                    end
                    object JvLabel25: TJvLabel
                      Left = 503
                      Top = 40
                      Width = 94
                      Height = 13
                      Caption = 'Personal Enterado:'
                      Transparent = True
                      HotTrackFont.Charset = DEFAULT_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -11
                      HotTrackFont.Name = 'Tahoma'
                      HotTrackFont.Style = []
                    end
                    object DBEdit7: TDBEdit
                      Left = 108
                      Top = 18
                      Width = 126
                      Height = 21
                      DataField = 'codigoticresguardo'
                      DataSource = dsresasigact
                      TabOrder = 0
                    end
                    object DBDateEdit1: TDBDateEdit
                      Left = 366
                      Top = 17
                      Width = 121
                      Height = 21
                      Margins.Left = 4
                      Margins.Top = 1
                      DataField = 'fechaasig'
                      DataSource = dsresasigact
                      NumGlyphs = 2
                      TabOrder = 1
                    end
                    object DBMemo2: TDBMemo
                      Left = 107
                      Top = 47
                      Width = 380
                      Height = 37
                      DataField = 'comentarios'
                      DataSource = dsresasigact
                      TabOrder = 2
                    end
                    object DBEdit8: TDBEdit
                      Left = 601
                      Top = 11
                      Width = 200
                      Height = 21
                      DataField = 'personalentrego'
                      DataSource = dsresasigact
                      TabOrder = 3
                    end
                    object DBEdit9: TDBEdit
                      Left = 601
                      Top = 63
                      Width = 200
                      Height = 21
                      DataField = 'personalaprobo'
                      DataSource = dsresasigact
                      TabOrder = 4
                    end
                    object DBEdit15: TDBEdit
                      Left = 601
                      Top = 38
                      Width = 200
                      Height = 21
                      DataField = 'personalenterado'
                      DataSource = dsresasigact
                      TabOrder = 5
                    end
                  end
                end
              end
            end
            object TabSheet7: TTabSheet
              Caption = 'Historial Asignaciones'
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Panel11: TPanel
                Left = 0
                Top = 0
                Width = 924
                Height = 186
                Align = alClient
                Caption = 'Panel11'
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 0
                object GroupBox6: TGroupBox
                  Left = 6
                  Top = 41
                  Width = 912
                  Height = 139
                  Align = alClient
                  Caption = 'Historial de Asignaciones'
                  Padding.Left = 5
                  Padding.Top = 5
                  Padding.Right = 5
                  Padding.Bottom = 5
                  TabOrder = 0
                  object NextDBGrid1: TNextDBGrid
                    Left = 7
                    Top = 20
                    Width = 898
                    Height = 112
                    Align = alClient
                    Options = [goHeader, goSelectFullRow]
                    TabOrder = 0
                    TabStop = True
                    DataSource = dshistorialasig
                    object NxDBTextColumn1: TNxDBTextColumn
                      DefaultWidth = 120
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header.Caption = 'Codigo Resguardo'
                      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                      ParentFont = False
                      Position = 0
                      SortType = stAlphabetic
                      Width = 120
                      FieldName = 'codigoticresguardo'
                    end
                    object NxDBTextColumn2: TNxDBTextColumn
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header.Caption = 'Persona Solicitante'
                      MinWidth = 200
                      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                      ParentFont = False
                      Position = 1
                      SortType = stAlphabetic
                      FieldName = 'persol'
                    end
                    object NxDBTextColumn3: TNxDBTextColumn
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header.Caption = 'Codigo Solicitante'
                      MinWidth = 120
                      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                      ParentFont = False
                      Position = 2
                      SortType = stAlphabetic
                      FieldName = 'codigopersonal'
                    end
                    object NxDBDateColumn1: TNxDBDateColumn
                      DefaultValue = '18/06/2012'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header.Caption = 'Fecha Asignacion'
                      MinWidth = 120
                      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                      ParentFont = False
                      Position = 3
                      SortType = stDate
                      FieldName = 'fechaasig'
                      HideWhenEmpty = False
                      NoneCaption = 'None'
                      TodayCaption = 'Today'
                    end
                    object NxDBDateColumn2: TNxDBDateColumn
                      DefaultValue = '18/06/2012'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header.Caption = 'Fecha Devolucion'
                      MinWidth = 120
                      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                      ParentFont = False
                      Position = 4
                      SortType = stDate
                      FieldName = 'fechavigencia'
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
                      Header.Caption = 'Articulo'
                      MinWidth = 120
                      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                      ParentFont = False
                      Position = 5
                      SortType = stAlphabetic
                      FieldName = 'tituloarticulo'
                    end
                    object NxDBMemoColumn1: TNxDBMemoColumn
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header.Caption = 'Comentarios'
                      MinWidth = 250
                      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                      ParentFont = False
                      Position = 6
                      SortType = stAlphabetic
                      FieldName = 'comentarios'
                    end
                  end
                end
                object GroupBox7: TGroupBox
                  Left = 6
                  Top = 6
                  Width = 912
                  Height = 35
                  Align = alTop
                  Caption = 'Insumo'
                  TabOrder = 1
                  object JvLabel15: TJvLabel
                    Left = 32
                    Top = 12
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
                  object JvLabel16: TJvLabel
                    Left = 537
                    Top = 13
                    Width = 39
                    Height = 13
                    Caption = 'Estado:'
                    Transparent = True
                    HotTrackFont.Charset = DEFAULT_CHARSET
                    HotTrackFont.Color = clWindowText
                    HotTrackFont.Height = -11
                    HotTrackFont.Name = 'Tahoma'
                    HotTrackFont.Style = []
                  end
                  object JvLabel17: TJvLabel
                    Left = 582
                    Top = 8
                    Width = 8
                    Height = 25
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Transparent = True
                    HotTrackFont.Charset = DEFAULT_CHARSET
                    HotTrackFont.Color = clWindowText
                    HotTrackFont.Height = -21
                    HotTrackFont.Name = 'Tahoma'
                    HotTrackFont.Style = []
                  end
                  object DBEdit10: TDBEdit
                    Left = 110
                    Top = 9
                    Width = 183
                    Height = 21
                    DataField = 'Codigo'
                    DataSource = dsdetespxarxgrxsg
                    TabOrder = 0
                  end
                  object NxButton8: TNxButton
                    Left = 783
                    Top = 15
                    Width = 127
                    Height = 18
                    Align = alRight
                    Caption = 'Ver Resguardo'
                    TabOrder = 1
                    OnClick = NxButton8Click
                  end
                end
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'Historial mantenimientos Preventivos'
              ImageIndex = 3
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Panel12: TPanel
                Left = 0
                Top = 0
                Width = 924
                Height = 186
                Align = alClient
                Caption = 'Panel12'
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 0
                object GroupBox10: TGroupBox
                  Left = 733
                  Top = 6
                  Width = 185
                  Height = 174
                  Align = alRight
                  Caption = 'Acciones'
                  Padding.Left = 5
                  Padding.Right = 5
                  Padding.Bottom = 5
                  TabOrder = 0
                  object NxButton1: TNxButton
                    Left = 7
                    Top = 38
                    Width = 171
                    Align = alTop
                    Caption = 'Ver Mantenimiento'
                    TabOrder = 0
                    OnClick = NxButton1Click
                  end
                  object NxButton2: TNxButton
                    Left = 7
                    Top = 15
                    Width = 171
                    Align = alTop
                    Caption = 'Generar Mantenimiento'
                    TabOrder = 1
                    OnClick = NxButton2Click
                  end
                end
                object Panel16: TPanel
                  Left = 6
                  Top = 6
                  Width = 727
                  Height = 174
                  Align = alClient
                  Caption = 'Panel16'
                  TabOrder = 1
                  object GroupBox9: TGroupBox
                    Left = 1
                    Top = 41
                    Width = 725
                    Height = 132
                    Align = alClient
                    Caption = 'Historial Mantenimientos Preventivos'
                    Padding.Left = 5
                    Padding.Right = 5
                    Padding.Bottom = 5
                    TabOrder = 0
                    object NextDBGrid2: TNextDBGrid
                      Left = 7
                      Top = 15
                      Width = 711
                      Height = 110
                      Align = alClient
                      Options = [goHeader, goSelectFullRow]
                      TabOrder = 0
                      TabStop = True
                      DataSource = dsmanttoprev
                      object NxDBTextColumn5: TNxDBTextColumn
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Codigo Mantenimiento'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 0
                        SortType = stAlphabetic
                        Width = 120
                        FieldName = 'codigomantenimiento'
                      end
                      object NxDBTextColumn6: TNxDBTextColumn
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Codigo Insumo'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 1
                        SortType = stAlphabetic
                        Width = 120
                        FieldName = 'codigoinsumo'
                      end
                      object NxDBTextColumn8: TNxDBTextColumn
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Titulo Articulo'
                        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 2
                        SortType = stAlphabetic
                        Width = 120
                        FieldName = 'tituloarticulo'
                      end
                      object NxDBTextColumn7: TNxDBTextColumn
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Tipo Mantenimiento'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 3
                        SortType = stAlphabetic
                        Width = 120
                        FieldName = 'tipommanto'
                      end
                      object NxDBDateColumn3: TNxDBDateColumn
                        DefaultValue = '20/06/2012'
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Fecha Mantenimiento'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 4
                        SortType = stDate
                        Width = 120
                        FieldName = 'fechamantto'
                        HideWhenEmpty = False
                        NoneCaption = 'None'
                        TodayCaption = 'Today'
                      end
                      object NxDBMemoColumn2: TNxDBMemoColumn
                        DefaultWidth = 300
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Descripcion Fallas'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 5
                        SortType = stAlphabetic
                        Width = 300
                        FieldName = 'descripcionfallas'
                        MemoDisplayOptions = mdContent
                      end
                      object NxDBMemoColumn3: TNxDBMemoColumn
                        DefaultWidth = 300
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Tareas Realizadas'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 6
                        SortType = stAlphabetic
                        Width = 300
                        FieldName = 'tareasrealizadas'
                        MemoDisplayOptions = mdContent
                      end
                    end
                  end
                  object GroupBox16: TGroupBox
                    Left = 1
                    Top = 1
                    Width = 725
                    Height = 40
                    Align = alTop
                    Caption = 'Informacion Insumo'
                    TabOrder = 1
                    object JvLabel19: TJvLabel
                      Left = 32
                      Top = 15
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
                    object DBEdit12: TDBEdit
                      Left = 110
                      Top = 12
                      Width = 183
                      Height = 21
                      DataField = 'Codigo'
                      DataSource = dsdetespxarxgrxsg
                      TabOrder = 0
                    end
                  end
                end
              end
            end
            object TabSheet9: TTabSheet
              Caption = 'Historial Mantenimientos Correctivos'
              ImageIndex = 4
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Panel13: TPanel
                Left = 0
                Top = 0
                Width = 924
                Height = 186
                Align = alClient
                Caption = 'Panel13'
                Padding.Left = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 0
                object GroupBox11: TGroupBox
                  Left = 733
                  Top = 1
                  Width = 185
                  Height = 179
                  Align = alRight
                  Caption = 'Acciones'
                  Padding.Left = 5
                  Padding.Right = 5
                  Padding.Bottom = 5
                  TabOrder = 0
                  object NxButton3: TNxButton
                    Left = 7
                    Top = 38
                    Width = 171
                    Align = alTop
                    Caption = 'Ver Mantenimiento'
                    TabOrder = 0
                    OnClick = NxButton3Click
                  end
                  object NxButton4: TNxButton
                    Left = 7
                    Top = 15
                    Width = 171
                    Align = alTop
                    Caption = 'Generar Mantenimiento'
                    TabOrder = 1
                    OnClick = NxButton4Click
                  end
                end
                object Panel17: TPanel
                  Left = 6
                  Top = 1
                  Width = 727
                  Height = 179
                  Align = alClient
                  Caption = 'Panel17'
                  TabOrder = 1
                  object GroupBox12: TGroupBox
                    Left = 1
                    Top = 41
                    Width = 725
                    Height = 137
                    Align = alClient
                    Caption = 'Historial Mantenimientos Correctivos'
                    Padding.Left = 5
                    Padding.Top = 5
                    Padding.Right = 5
                    Padding.Bottom = 5
                    TabOrder = 0
                    object NextDBGrid3: TNextDBGrid
                      Left = 7
                      Top = 20
                      Width = 711
                      Height = 110
                      Align = alClient
                      Options = [goHeader, goSelectFullRow]
                      TabOrder = 0
                      TabStop = True
                      DataSource = dsmanttocorrect
                      object NxDBTextColumn9: TNxDBTextColumn
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Codigo Mantenimiento'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 0
                        SortType = stAlphabetic
                        Width = 120
                        FieldName = 'codigomantenimiento'
                      end
                      object NxDBTextColumn10: TNxDBTextColumn
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Codigo Insumo'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 1
                        SortType = stAlphabetic
                        Width = 120
                        FieldName = 'codigoinsumo'
                      end
                      object NxDBTextColumn11: TNxDBTextColumn
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Titulo Articulo'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 2
                        SortType = stAlphabetic
                        Width = 120
                        FieldName = 'tituloarticulo'
                      end
                      object NxDBTextColumn12: TNxDBTextColumn
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Tipo Mantenimiento'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 3
                        SortType = stAlphabetic
                        Width = 120
                        FieldName = 'tipommanto'
                      end
                      object NxDBDateColumn4: TNxDBDateColumn
                        DefaultValue = '20/06/2012'
                        DefaultWidth = 120
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Fecha Mantenimiento'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 4
                        SortType = stDate
                        Width = 120
                        FieldName = 'fechamantto'
                        HideWhenEmpty = False
                        NoneCaption = 'None'
                        TodayCaption = 'Today'
                      end
                      object NxDBMemoColumn4: TNxDBMemoColumn
                        DefaultWidth = 300
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Descripcion Fallas'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 5
                        SortType = stAlphabetic
                        Width = 300
                        FieldName = 'descripcionfallas'
                        MemoDisplayOptions = mdContent
                      end
                      object NxDBMemoColumn5: TNxDBMemoColumn
                        DefaultWidth = 300
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header.Caption = 'Tareas Realizadas'
                        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                        ParentFont = False
                        Position = 6
                        SortType = stAlphabetic
                        Width = 300
                        FieldName = 'tareasrealizadas'
                        MemoDisplayOptions = mdContent
                      end
                    end
                  end
                  object GroupBox17: TGroupBox
                    Left = 1
                    Top = 1
                    Width = 725
                    Height = 40
                    Align = alTop
                    Caption = 'Informacion Insumo'
                    TabOrder = 1
                    object JvLabel20: TJvLabel
                      Left = 32
                      Top = 15
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
                    object DBEdit13: TDBEdit
                      Left = 110
                      Top = 12
                      Width = 183
                      Height = 21
                      DataField = 'Codigo'
                      DataSource = dsdetespxarxgrxsg
                      TabOrder = 0
                    end
                  end
                end
              end
            end
            object TabSheet10: TTabSheet
              Caption = 'Proximo Mantenimiento'
              ImageIndex = 5
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object GroupBox14: TGroupBox
                Left = 0
                Top = 0
                Width = 924
                Height = 43
                Align = alTop
                Caption = 'Informacion Insumo'
                TabOrder = 0
                object JvLabel18: TJvLabel
                  Left = 32
                  Top = 15
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
                object DBEdit11: TDBEdit
                  Left = 110
                  Top = 12
                  Width = 183
                  Height = 21
                  DataField = 'Codigo'
                  DataSource = dsdetespxarxgrxsg
                  TabOrder = 0
                end
              end
              object GroupBox15: TGroupBox
                Left = 0
                Top = 43
                Width = 924
                Height = 143
                Align = alClient
                Caption = 'Fecha del Proximo Mantenimiento'
                TabOrder = 1
                object JvLabel21: TJvLabel
                  Left = 56
                  Top = 40
                  Width = 395
                  Height = 13
                  Caption = 
                    'El Proximo mantenimiento de este equipo debe de realizarse en la' +
                    ' siguiente fecha:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object DBEdit14: TDBEdit
                  Left = 56
                  Top = 59
                  Width = 395
                  Height = 21
                  DataField = 'proximomantto'
                  DataSource = dsdetespxarxgrxsg
                  TabOrder = 0
                end
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Historial Mantenimientos Preventivos'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 932
            Height = 214
            Align = alClient
            TabOrder = 0
            object GroupBox18: TGroupBox
              Left = 1
              Top = 1
              Width = 930
              Height = 212
              Align = alClient
              Caption = 'Ultimo Mantenimiento Preventivo'
              Padding.Left = 5
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              TabOrder = 0
              object NextDBGrid4: TNextDBGrid
                Left = 7
                Top = 20
                Width = 916
                Height = 185
                Align = alClient
                Options = [goHeader, goSelectFullRow]
                TabOrder = 0
                TabStop = True
                DataSource = dsultimomanttoprev
                object NxDBTextColumn13: TNxDBTextColumn
                  DefaultWidth = 120
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Codigo Mantenimiento'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 0
                  SortType = stAlphabetic
                  Width = 120
                  FieldName = 'codigomantenimiento'
                end
                object NxDBTextColumn14: TNxDBTextColumn
                  DefaultWidth = 120
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Codigo Insumo'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 1
                  SortType = stAlphabetic
                  Width = 120
                  FieldName = 'codigoinsumo'
                end
                object NxDBDateColumn5: TNxDBDateColumn
                  DefaultValue = '21/06/2012'
                  DefaultWidth = 120
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Fecha Mantenimiento'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 2
                  SortType = stDate
                  Width = 120
                  FieldName = 'fechamantto'
                  HideWhenEmpty = False
                  NoneCaption = 'None'
                  TodayCaption = 'Today'
                end
                object NxDBMemoColumn6: TNxDBMemoColumn
                  DefaultWidth = 300
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Descripcion de Fallas'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 3
                  SortType = stAlphabetic
                  Width = 300
                  FieldName = 'descripcionfallas'
                  MemoDisplayOptions = mdContent
                end
                object NxDBMemoColumn7: TNxDBMemoColumn
                  DefaultWidth = 300
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Tareas Realizadas'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 4
                  SortType = stAlphabetic
                  Width = 300
                  FieldName = 'tareasrealizadas'
                  MemoDisplayOptions = mdContent
                end
              end
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Historial mantenimiento Correctivo'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 932
            Height = 214
            Align = alClient
            Caption = 'Panel18'
            TabOrder = 0
            object GroupBox19: TGroupBox
              Left = 1
              Top = 1
              Width = 930
              Height = 212
              Align = alClient
              Caption = 'Ultimo Mantenimiento Correctivo'
              Padding.Left = 5
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              TabOrder = 0
              object NextDBGrid5: TNextDBGrid
                Left = 7
                Top = 20
                Width = 916
                Height = 185
                Align = alClient
                Options = [goHeader, goSelectFullRow]
                TabOrder = 0
                TabStop = True
                DataSource = dsultimomanttocorrect
                object NxDBTextColumn15: TNxDBTextColumn
                  DefaultWidth = 120
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Codigo Mantenimiento'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 0
                  SortType = stAlphabetic
                  Width = 120
                  FieldName = 'codigomantenimiento'
                end
                object NxDBTextColumn16: TNxDBTextColumn
                  DefaultWidth = 120
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Codigo Insumo'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 1
                  SortType = stAlphabetic
                  Width = 120
                  FieldName = 'codigoinsumo'
                end
                object NxDBDateColumn6: TNxDBDateColumn
                  DefaultValue = '21/06/2012'
                  DefaultWidth = 120
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Fecha Mantenimiento'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 2
                  SortType = stDate
                  Width = 120
                  FieldName = 'fechamantto'
                  HideWhenEmpty = False
                  NoneCaption = 'None'
                  TodayCaption = 'Today'
                end
                object NxDBMemoColumn8: TNxDBMemoColumn
                  DefaultWidth = 300
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Descripcion de Fallas'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 3
                  SortType = stAlphabetic
                  Width = 300
                  FieldName = 'descripcionfallas'
                  MemoDisplayOptions = mdContent
                end
                object NxDBMemoColumn9: TNxDBMemoColumn
                  DefaultWidth = 300
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Tareas Realizadas'
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 4
                  SortType = stAlphabetic
                  Width = 300
                  FieldName = 'tareasrealizadas'
                  MemoDisplayOptions = mdContent
                end
              end
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Proximo Mantenimiento'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox20: TGroupBox
            Left = 0
            Top = 0
            Width = 932
            Height = 214
            Align = alClient
            Caption = 'Proximos Mantenimiento'
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object NextDBGrid6: TNextDBGrid
              Left = 7
              Top = 20
              Width = 918
              Height = 187
              Align = alClient
              Options = [goHeader, goSelectFullRow]
              TabOrder = 0
              TabStop = True
              DataSource = dssiguientemanttoprev
              object NxDBTextColumn17: TNxDBTextColumn
                DefaultWidth = 200
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Codigo Insumo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 0
                SortType = stAlphabetic
                Width = 200
                FieldName = 'codigo'
              end
              object NxDBTextColumn19: TNxDBTextColumn
                DefaultWidth = 200
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Recurrencia'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 1
                SortType = stAlphabetic
                Width = 200
                FieldName = 'recurrencia'
              end
              object NxDBTextColumn20: TNxDBTextColumn
                DefaultWidth = 200
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Fecha Proximo Mantenimiento'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 2
                SortType = stAlphabetic
                Width = 200
                FieldName = 'proximomantto'
              end
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Asignados'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox21: TGroupBox
            Left = 0
            Top = 0
            Width = 932
            Height = 214
            Align = alClient
            Caption = 'Insumos Asignados'
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object NextDBGrid7: TNextDBGrid
              Left = 7
              Top = 20
              Width = 918
              Height = 187
              Align = alClient
              Options = [goHeader, goSelectFullRow]
              TabOrder = 0
              TabStop = True
              DataSource = dsasignados
              object NxDBTextColumn18: TNxDBTextColumn
                DefaultWidth = 200
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Titulo Articulo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 0
                SortType = stAlphabetic
                Width = 200
                FieldName = 'tituloarticulo'
              end
              object NxDBTextColumn21: TNxDBTextColumn
                DefaultWidth = 120
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Codigo Insumo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 1
                SortType = stAlphabetic
                Width = 120
                FieldName = 'codigoinsumo'
              end
              object NxDBTextColumn22: TNxDBTextColumn
                DefaultWidth = 300
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Personal Asignado'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 2
                SortType = stAlphabetic
                Width = 300
                FieldName = 'nomap'
              end
              object NxDBDateColumn7: TNxDBDateColumn
                DefaultValue = '21/06/2012'
                DefaultWidth = 120
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Fecha de Asignacion'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 3
                SortType = stDate
                Width = 120
                FieldName = 'fechaasig'
                HideWhenEmpty = False
                NoneCaption = 'None'
                TodayCaption = 'Today'
              end
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'No Asignados'
          ImageIndex = 5
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox22: TGroupBox
            Left = 0
            Top = 0
            Width = 932
            Height = 214
            Align = alClient
            Caption = 'Insumos No Asignados'
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object NextDBGrid8: TNextDBGrid
              Left = 7
              Top = 20
              Width = 918
              Height = 187
              Align = alClient
              Options = [goHeader, goSelectFullRow]
              TabOrder = 0
              TabStop = True
              DataSource = dsnoasignaqdos
              object NxDBTextColumn23: TNxDBTextColumn
                DefaultWidth = 120
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Codigo Insumo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 0
                SortType = stAlphabetic
                Width = 120
                FieldName = 'codigo'
              end
              object NxDBTextColumn24: TNxDBTextColumn
                DefaultWidth = 120
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Titulo Articulo'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 1
                SortType = stAlphabetic
                Width = 120
                FieldName = 'tituloarticulo'
              end
              object NxDBDateColumn8: TNxDBDateColumn
                DefaultValue = '21/06/2012'
                DefaultWidth = 200
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Fecha Especificacion'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 2
                SortType = stDate
                Width = 200
                FieldName = 'fechaespecificacion'
                HideWhenEmpty = False
                NoneCaption = 'None'
                TodayCaption = 'Today'
              end
              object NxDBTextColumn25: TNxDBTextColumn
                DefaultWidth = 200
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Estado'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 3
                SortType = stAlphabetic
                Width = 200
                FieldName = 'estado'
              end
            end
          end
        end
      end
    end
    object AdvToolPanelTab1: TAdvToolPanelTab
      Left = 1
      Top = 1
      Width = 942
      Height = 168
      Color = clWhite
      ColorTo = 16248798
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = ppTop
      TabBorderColor = 9841920
      TabColor = 16572875
      TabColorTo = 14722429
      TabHoverColor = 14483455
      TabHoverColorTo = 6013175
      Version = '1.5.4.1'
      object AdvToolPanel1: TAdvToolPanel
        Left = 0
        Top = 23
        Width = 0
        Height = 0
        BackgroundTransparent = False
        BackGroundPosition = bpTopLeft
        Button3D = False
        HoverButtonColor = 14483455
        HoverButtonColorTo = 6013175
        DownButtonColor = 557032
        DownButtonColorTo = 8182519
        CaptionButton = False
        ColorTo = 13007698
        GradientDirection = gdVertical
        DockDots = True
        Caption = 'Busqueda por detalle'
        CaptionGradientDirection = gdVertical
        FocusCaptionFontColor = clBlack
        FocusCaptionColor = 9758459
        FocusCaptionColorTo = 1414638
        NoFocusCaptionFontColor = clWhite
        NoFocusCaptionColor = 14059353
        NoFocusCaptionColorTo = 9648131
        OpenWidth = 175
        CloseHint = 'Close panel'
        LockHint = 'Lock panel'
        UnlockHint = 'Unlock panel'
        Sections = <>
        SectionLayout.CaptionColor = 16244422
        SectionLayout.CaptionColorTo = 14060643
        SectionLayout.CaptionFontColor = 8661248
        SectionLayout.CaptionRounded = False
        SectionLayout.Corners = scRectangle
        SectionLayout.BackGroundColor = 16248798
        SectionLayout.BackGroundColorTo = 16242365
        SectionLayout.BorderColor = clWhite
        SectionLayout.BorderWidth = 1
        SectionLayout.BackGroundGradientDir = gdVertical
        SectionLayout.Indent = 4
        SectionLayout.Spacing = 4
        SectionLayout.ItemFontColor = 11876608
        SectionLayout.ItemHoverTextColor = 11876608
        SectionLayout.ItemHoverUnderline = True
        SectionLayout.UnderLineCaption = False
        ShowCaptionBorder = False
        Version = '1.5.4.1'
        object JvLabel27: TJvLabel
          Left = 26
          Top = 28
          Width = 25
          Height = 13
          Caption = 'Area'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel28: TJvLabel
          Left = 25
          Top = 77
          Width = 36
          Height = 13
          Caption = 'Grupos'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel29: TJvLabel
          Left = 418
          Top = 32
          Width = 53
          Height = 13
          Caption = 'Subgrupos'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel26: TJvLabel
          Left = 418
          Top = 78
          Width = 38
          Height = 13
          Caption = 'Articulo'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Edit6: TEdit
          Left = 418
          Top = 92
          Width = 367
          Height = 21
          TabOrder = 0
          OnKeyPress = Edit6KeyPress
        end
        object NxButton13: TNxButton
          Left = 760
          Top = 75
          Width = 26
          Height = 15
          Caption = '...'
          TabOrder = 1
          OnClick = NxButton13Click
        end
        object NxButton12: TNxButton
          Left = 26
          Top = 125
          Width = 368
          Height = 45
          Caption = 'Buscar'
          TabOrder = 2
          OnClick = NxButton12Click
        end
        object Edit1: TEdit
          Left = 25
          Top = 45
          Width = 369
          Height = 21
          TabOrder = 3
          OnClick = Edit1Click
          OnKeyPress = Edit1KeyPress
        end
        object NxButton9: TNxButton
          Left = 365
          Top = 27
          Width = 26
          Height = 15
          Caption = '...'
          TabOrder = 4
          OnClick = NxButton9Click
        end
        object NxButton10: TNxButton
          Left = 366
          Top = 75
          Width = 26
          Height = 15
          Caption = '...'
          TabOrder = 5
          OnClick = NxButton10Click
        end
        object Edit2: TEdit
          Left = 25
          Top = 92
          Width = 369
          Height = 21
          TabOrder = 6
          OnKeyPress = Edit2KeyPress
        end
        object NxButton11: TNxButton
          Left = 758
          Top = 27
          Width = 26
          Height = 15
          Caption = '...'
          TabOrder = 7
          OnClick = NxButton11Click
        end
        object Edit3: TEdit
          Left = 418
          Top = 45
          Width = 368
          Height = 21
          TabOrder = 8
          OnKeyPress = Edit3KeyPress
        end
      end
      object AdvToolPanel2: TAdvToolPanel
        Left = 0
        Top = 23
        Width = 0
        Height = 0
        BackgroundTransparent = False
        BackGroundPosition = bpTopLeft
        Button3D = False
        HoverButtonColor = 14483455
        HoverButtonColorTo = 6013175
        DownButtonColor = 557032
        DownButtonColorTo = 8182519
        CaptionButton = False
        ColorTo = 13007698
        GradientDirection = gdVertical
        DockDots = True
        Caption = 'Busqueda por criterio'
        CaptionGradientDirection = gdVertical
        FocusCaptionFontColor = clBlack
        FocusCaptionColor = 9758459
        FocusCaptionColorTo = 1414638
        NoFocusCaptionFontColor = clWhite
        NoFocusCaptionColor = 14059353
        NoFocusCaptionColorTo = 9648131
        OpenWidth = 160
        CloseHint = 'Close panel'
        LockHint = 'Lock panel'
        UnlockHint = 'Unlock panel'
        Sections = <>
        SectionLayout.CaptionColor = 16244422
        SectionLayout.CaptionColorTo = 14060643
        SectionLayout.CaptionFontColor = 8661248
        SectionLayout.CaptionRounded = False
        SectionLayout.Corners = scRectangle
        SectionLayout.BackGroundColor = 16248798
        SectionLayout.BackGroundColorTo = 16242365
        SectionLayout.BorderColor = clWhite
        SectionLayout.BorderWidth = 1
        SectionLayout.BackGroundGradientDir = gdVertical
        SectionLayout.Indent = 4
        SectionLayout.Spacing = 4
        SectionLayout.ItemFontColor = 11876608
        SectionLayout.ItemHoverTextColor = 11876608
        SectionLayout.ItemHoverUnderline = True
        SectionLayout.UnderLineCaption = False
        ShowCaptionBorder = False
        Version = '1.5.4.1'
        object JvLabel32: TJvLabel
          Left = 17
          Top = 26
          Width = 111
          Height = 13
          Caption = 'Busqueda por Criterios'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 45
          Width = 722
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'idcriteriostic'
          ListField = 'cadbuscar'
          ListSource = dscriterios
          ParentFont = False
          TabOrder = 0
        end
        object NxButton16: TNxButton
          Left = 390
          Top = 75
          Width = 348
          Height = 24
          Caption = 'Eliminar Criterio'
          TabOrder = 1
          OnClick = NxButton16Click
        end
        object NxButton14: TNxButton
          Left = 17
          Top = 75
          Width = 351
          Height = 24
          Caption = 'Agregar Criterio'
          TabOrder = 2
          OnClick = NxButton14Click
        end
        object NxButton17: TNxButton
          Left = 16
          Top = 107
          Width = 722
          Height = 36
          Caption = 'Buscar'
          TabOrder = 3
          OnClick = NxButton17Click
        end
      end
      object AdvToolPanel3: TAdvToolPanel
        Left = 0
        Top = 23
        Width = 942
        Height = 145
        BackgroundTransparent = False
        BackGroundPosition = bpTopLeft
        Button3D = False
        HoverButtonColor = 14483455
        HoverButtonColorTo = 6013175
        DownButtonColor = 557032
        DownButtonColorTo = 8182519
        CaptionButton = False
        ColorTo = 13007698
        GradientDirection = gdVertical
        DockDots = True
        Caption = 'Busqueda por Descripcion'
        CaptionGradientDirection = gdVertical
        FocusCaptionFontColor = clBlack
        FocusCaptionColor = 9758459
        FocusCaptionColorTo = 1414638
        NoFocusCaptionFontColor = clWhite
        NoFocusCaptionColor = 14059353
        NoFocusCaptionColorTo = 9648131
        OpenWidth = 160
        CloseHint = 'Close panel'
        LockHint = 'Lock panel'
        UnlockHint = 'Unlock panel'
        Sections = <>
        SectionLayout.CaptionColor = 16244422
        SectionLayout.CaptionColorTo = 14060643
        SectionLayout.CaptionFontColor = 8661248
        SectionLayout.CaptionRounded = False
        SectionLayout.Corners = scRectangle
        SectionLayout.BackGroundColor = 16248798
        SectionLayout.BackGroundColorTo = 16242365
        SectionLayout.BorderColor = clWhite
        SectionLayout.BorderWidth = 1
        SectionLayout.BackGroundGradientDir = gdVertical
        SectionLayout.Indent = 4
        SectionLayout.Spacing = 4
        SectionLayout.ItemFontColor = 11876608
        SectionLayout.ItemHoverTextColor = 11876608
        SectionLayout.ItemHoverUnderline = True
        SectionLayout.UnderLineCaption = False
        ShowCaptionBorder = False
        Version = '1.5.4.1'
        object JvLabel30: TJvLabel
          Left = 40
          Top = 39
          Width = 74
          Height = 13
          Caption = 'Descripciones: '
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel31: TJvLabel
          Left = 75
          Top = 75
          Width = 38
          Height = 13
          Caption = 'Buscar:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 120
          Top = 40
          Width = 649
          Height = 21
          KeyField = 'IdDetalle'
          ListField = 'CodigoDetalle'
          ListSource = dsdescripciones
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 119
          Top = 67
          Width = 649
          Height = 21
          TabOrder = 1
        end
        object NxButton18: TNxButton
          Left = 119
          Top = 105
          Width = 166
          Height = 36
          Caption = 'Buscar'
          TabOrder = 2
          OnClick = NxButton18Click
        end
      end
    end
  end
  object cdareas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 884
    Top = 144
  end
  object dsareas: TDataSource
    DataSet = cdareas
    Left = 904
    Top = 144
  end
  object cdgrupos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdDisciplina'
    MasterFields = 'iddisciplina'
    MasterSource = dsareas
    PacketRecords = 0
    Params = <>
    Left = 824
    Top = 104
  end
  object dsgrupos: TDataSource
    DataSet = cdgrupos
    Left = 840
    Top = 104
  end
  object cdsubgrupos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdGrupo'
    MasterFields = 'IdGrupo'
    MasterSource = dsgrupos
    PacketRecords = 0
    Params = <>
    Left = 824
    Top = 56
  end
  object dssubgrupos: TDataSource
    DataSet = cdsubgrupos
    Left = 840
    Top = 56
  end
  object dsdetespxarxgrxsg: TDataSource
    DataSet = cddetespxarxgrxsg
    Left = 136
    Top = 280
  end
  object cddetespxarxgrxsg: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cddetespxarxgrxsgAfterScroll
    Left = 32
    Top = 248
  end
  object memespecificados: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = memespecificadosAfterScroll
    Left = 136
    Top = 240
  end
  object dsmemespecificados: TDataSource
    DataSet = memespecificados
    Left = 216
    Top = 272
  end
  object cdresasigact: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 424
  end
  object dsresasigact: TDataSource
    DataSet = cdresasigact
    Left = 40
    Top = 432
  end
  object cdhistorialasig: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 448
  end
  object dshistorialasig: TDataSource
    DataSet = cdhistorialasig
    Left = 96
    Top = 456
  end
  object cdmanttoprev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 440
  end
  object cdmanttocorrect: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 416
  end
  object dsmanttoprev: TDataSource
    DataSet = cdmanttoprev
    Left = 160
    Top = 440
  end
  object dsmanttocorrect: TDataSource
    DataSet = cdmanttocorrect
    Left = 296
    Top = 416
  end
  object cdultimosmanttoprev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 464
  end
  object dsultimomanttoprev: TDataSource
    DataSet = cdultimosmanttoprev
    Left = 272
    Top = 464
  end
  object cdultimomanttocorrect: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 456
  end
  object dsultimomanttocorrect: TDataSource
    DataSet = cdultimomanttocorrect
    Left = 440
    Top = 472
  end
  object cdsiguientemanttoprev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 416
  end
  object dssiguientemanttoprev: TDataSource
    DataSet = cdsiguientemanttoprev
    Left = 456
    Top = 416
  end
  object cdasignados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 416
  end
  object cdnoasignados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    Top = 416
  end
  object dsasignados: TDataSource
    DataSet = cdasignados
    Left = 560
    Top = 416
  end
  object dsnoasignaqdos: TDataSource
    DataSet = cdnoasignados
    Left = 744
    Top = 416
  end
  object cdcriterios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 888
    Top = 56
  end
  object dscriterios: TDataSource
    DataSet = cdcriterios
    Left = 904
    Top = 56
  end
  object dscriteriosup: TDataSource
    DataSet = cdcriteriosup
    Left = 912
    Top = 104
  end
  object cdcriteriosup: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 896
    Top = 104
  end
  object memmanttosprev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 496
  end
  object dsmemmanttoprev: TDataSource
    DataSet = memmanttosprev
    Left = 904
    Top = 496
  end
  object ninguno: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41044.735946493100000000
    ReportOptions.LastChange = 41092.101755081020000000
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
    Left = 968
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDOrganizacion
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 177.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        Height = 211.889920000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 0.779530000000000000
          Top = 152.181200000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmPrincipalTic.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'CODIGO PERSONAL')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 0.779530000000000000
          Top = 167.299320000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmPrincipalTic.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'NOMBRES')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 0.779530000000000000
          Top = 181.535560000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmPrincipalTic.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'CARGO')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 0.779530000000000000
          Top = 196.653680000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmPrincipalTic.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'DEPARTAMENTO')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 3.338590000000000000
          Top = 117.842610000000000000
          Width = 714.331170000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.DropShadow = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALE DE RESGUARDO')
          ParentFont = False
        end
        object frxDBDOrganizacionnombreorganizacion: TfrxMemoView
          Left = 166.299320000000000000
          Width = 551.811380000000000000
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
          Top = 34.015770000000000000
          Width = 589.606680000000000000
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
          Left = 166.299320000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
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
          Left = 170.078850000000000000
          Top = 74.031540000000010000
          Width = 548.031850000000000000
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
          Left = 11.338590000000000000
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
        object frxDBDResguardocodigoticresguardo: TfrxMemoView
          Left = 400.630180000000000000
          Top = 95.488249999999990000
          Width = 317.480520000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.DropShadow = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Codigo Resguardo: [frxDBDResguardo."codigoticresguardo"]')
          ParentFont = False
        end
        object frxDBDResguardopersonalasig1: TfrxMemoView
          Left = 113.385900000000000000
          Top = 166.299320000000000000
          Width = 608.504330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'personalasig'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDResguardo."personalasig"]')
          ParentFont = False
        end
        object frxDBDResguardocodigopersonal: TfrxMemoView
          Left = 114.385900000000000000
          Top = 152.181200000000000000
          Width = 604.724800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'codigopersonal'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDResguardo."codigopersonal"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        DataSet = TicRepModuleUnit.frxDBDResguardo
        DataSetName = 'frxDBDResguardo'
        RowCount = 0
        object frxDBDResguardocodigoinsumo: TfrxMemoView
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'codigoinsumo'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDResguardo."codigoinsumo"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'tituloarticulo'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDResguardo."tituloarticulo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'fechaasig'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDResguardo."fechaasig"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 548.945270000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'fechavigencia'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDResguardo."fechavigencia"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 57.102350000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDResguardo."codigoticresguardo"'
        object Memo2: TfrxMemoView
          Top = 41.984229999999880000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmPrincipalTic.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CODIGO INSUMO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 188.756030000000000000
          Top = 41.984229999999880000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmPrincipalTic.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'ARTICULO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 377.732530000000000000
          Top = 41.984183619999980000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmPrincipalTic.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'FECHA ASIGNACION')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 548.031850000000000000
          Top = 41.984229999999880000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmPrincipalTic.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'FECHA VIGENCIA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.DropShadow = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'INSUMOS ASIGNADOS')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 206.433210000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 13.677179999999910000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 10218495
          DataSet = FrmPrincipalTic.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'COMENTARIOS')
          ParentFont = False
        end
        object frxDBDResguardocomentarios: TfrxMemoView
          Top = 28.795299999999880000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'comentarios'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDResguardo."comentarios"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 1.000000000000000000
          Top = 66.031540000000010000
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
        object frxDBDResguardofirm1na1: TfrxMemoView
          Left = 4.779530000000000000
          Top = 149.078850000000000000
          Width = 260.787570000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'firm1na'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."firm1na"]')
          ParentFont = False
        end
        object frxDBDResguardofirm2na1: TfrxMemoView
          Left = 265.567100000000000000
          Top = 148.858380000000000000
          Width = 230.551330000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'firm2na '
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."firm2na "]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 38.795300000000000000
          Top = 133.740260000000000000
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
            'Primer Firmante')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 285.362400000000000000
          Top = 134.960730000000000000
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
            'Segundo Firmante')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 515.016080000000000000
          Top = 134.740260000000000000
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
            'Persona Responsable')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 0.779530000000000000
          Top = 164.787570000000000000
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
          Left = 193.756030000000000000
          Top = 172.346629999999900000
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
          Left = 227.771800000000000000
          Top = 172.346629999999900000
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
          Left = 428.086890000000000000
          Top = 187.464750000000000000
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
          Left = 227.771800000000000000
          Top = 187.464750000000000000
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
        object frxDBDResguardopersonalasig2: TfrxMemoView
          Left = 498.897960000000000000
          Top = 149.401670000000000000
          Width = 215.433210000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'personalasig'
          DataSet = TicRepModuleUnit.frxDBDResguardo
          DataSetName = 'frxDBDResguardo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDResguardo."personalasig"]')
          ParentFont = False
        end
      end
    end
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
    Left = 968
    Top = 256
  end
  object frxDBDAsignados: TfrxDBDataset
    UserName = 'frxDBDAsignados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigoinsumo=codigoinsumo'
      'idarticulo=idarticulo'
      'numinsumoespecificado=numinsumoespecificado'
      'nomap=nomap'
      'tituloarticulo=tituloarticulo'
      'fechaasig=fechaasig')
    DataSet = cdasignados
    BCDToCurrency = False
    Left = 904
    Top = 304
  end
  object PopupMenu4: TPopupMenu
    Left = 672
    Top = 264
    object ModificarInsumo1: TMenuItem
      Caption = 'Modificar Insumo'
      OnClick = ModificarInsumo1Click
    end
  end
  object cdpersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 784
    Top = 232
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 832
    Top = 160
  end
  object cddescripciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 704
    Top = 54
  end
  object dsdescripciones: TDataSource
    DataSet = cddescripciones
    Left = 632
    Top = 54
  end
  object dspersonal: TDataSource
    DataSet = cdpersonal
    Left = 784
    Top = 280
  end
  object FrxValeResguardoEntrega: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41149.413438321760000000
    ReportOptions.LastChange = 41149.413438321760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 520
    Top = 120
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object cdresguardosdevueltos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 880
    Top = 576
  end
  object dsresguardosdevueltos: TDataSource
    DataSet = cdresguardosdevueltos
    Left = 848
    Top = 576
  end
  object frxValeDevolucion: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41149.516501435190000000
    ReportOptions.LastChange = 41149.516501435190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 320
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object cdvaleresguardo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 784
    Top = 336
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
    Left = 648
    Top = 320
    Datasets = <
      item
        DataSet = TicRepModuleUnit.frxDBDMantenimientos
        DataSetName = 'frxDBDMantenimientos'
      end
      item
        DataSet = frxDBDOrganizacion
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
          Left = 166.299320000000000000
          Top = 34.015770000000010000
          Width = 570.709030000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = frxDBDOrganizacion
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
          DataSet = frxDBDOrganizacion
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
          Top = 204.126160000000100000
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
          Top = 203.126160000000100000
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
    Left = 608
    Top = 320
  end
end
