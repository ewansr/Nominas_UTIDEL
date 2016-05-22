object FrmPlazaRhuDetalle: TFrmPlazaRhuDetalle
  Left = 0
  Top = 0
  Caption = 'Captura de plazas'
  ClientHeight = 561
  ClientWidth = 778
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
  object Splitter3: TSplitter
    Left = 0
    Top = 233
    Width = 778
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object admi: TPanel
    Left = 0
    Top = 520
    Width = 778
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCancelar: TNxButton
      Left = 673
      Top = 1
      Width = 104
      Height = 39
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = btnCancelarClick
    end
    object btnGuardar: TNxButton
      Left = 569
      Top = 1
      Width = 104
      Height = 39
      Align = alRight
      Caption = 'Guardar'
      TabOrder = 1
      OnClick = btnGuardarClick
    end
  end
  object pnlDatos: TPanel
    Left = 0
    Top = 236
    Width = 778
    Height = 284
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 776
      Height = 282
      Align = alClient
      TabOrder = 0
      object Splitter2: TSplitter
        Left = 349
        Top = 1
        Width = 6
        Height = 280
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 348
        Height = 280
        Align = alLeft
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 1
          Top = 1
          Width = 346
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Panel10: TPanel
          Left = 1
          Top = 4
          Width = 346
          Height = 275
          Align = alClient
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 344
            Height = 273
            Align = alClient
            Caption = 'Partidas Agregadas'
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object DBGrid2: TDBGrid
              Left = 7
              Top = 20
              Width = 330
              Height = 246
              Align = alClient
              DataSource = dsGrupoPlazas
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'titulocargo'
                  Title.Caption = 'Cargo'
                  Width = 220
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cantidad'
                  Title.Caption = 'Cantidad'
                  Width = 80
                  Visible = True
                end>
            end
          end
        end
      end
      object Panel6: TPanel
        Left = 355
        Top = 1
        Width = 420
        Height = 280
        Align = alClient
        TabOrder = 1
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 418
          Height = 278
          Align = alClient
          TabOrder = 0
          object GroupBox4: TGroupBox
            Left = 1
            Top = 1
            Width = 416
            Height = 276
            Align = alClient
            Caption = 'Ver detalles de Plaza'
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 7
              Top = 20
              Width = 402
              Height = 249
              Align = alClient
              DataSource = dsPlazaDetalle
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid1DrawColumnCell
              OnDblClick = DBGrid1DblClick
              OnKeyUp = DBGrid1KeyUp
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CodigoPlazaDetalle'
                  Title.Caption = 'Codigo Plaza'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'titulodepartamento'
                  Title.Caption = 'Departamento'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FechaRequerido'
                  Title.Caption = 'Requerido'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Vacante'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ExperienciaMinima'
                  Title.Caption = 'Experiencia Minima'
                  Width = 98
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UnidadExperiencia'
                  Title.Caption = 'Unidad Experiencia'
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 778
    Height = 192
    Align = alTop
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 776
      Height = 190
      Align = alClient
      Caption = 'Datos Solicitud de Plaza'
      TabOrder = 0
      object JvLabel3: TJvLabel
        Left = 28
        Top = 23
        Width = 45
        Height = 13
        Caption = 'Solicitud:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lbl3: TJvLabel
        Left = 161
        Top = 128
        Width = 77
        Height = 13
        Caption = 'Observaciones:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object img2: TJvImage
        Left = 28
        Top = 42
        Width = 107
        Height = 87
        AutoSize = True
        Center = True
        Proportional = True
        Stretch = True
      end
      object edtCodigo: TDBAdvEdit
        Left = 398
        Top = 11
        Width = 121
        Height = 21
        LabelCaption = 'C'#243'digo de alta:'
        LabelPosition = lpLeftCenter
        LabelMargin = 5
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        ReadOnly = True
        TabOrder = 0
        Text = 'edtCodigo'
        Visible = True
        Version = '2.9.0.0'
        DataField = 'codigoplaza'
        DataSource = dsPlaza
      end
      object dtpFecha: TAdvDBDateTimePicker
        Left = 198
        Top = 11
        Width = 97
        Height = 21
        Date = 41157.685439814820000000
        Time = 41157.685439814820000000
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dkDate
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 41157.685439814820000000
        Version = '1.1.0.1'
        LabelCaption = 'Fecha:'
        LabelPosition = lpLeftCenter
        LabelMargin = 5
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        DataField = 'fecha'
        DataSource = dsPlaza
      end
      object grp1: TAdvGroupBox
        Left = 159
        Top = 30
        Width = 578
        Height = 92
        Caption = 'Solicitante'
        TabOrder = 2
        object lbl1: TJvLabel
          Left = 15
          Top = 48
          Width = 44
          Height = 13
          Caption = 'Puesto:'
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
        object lbl2: TJvLabel
          Left = 15
          Top = 70
          Width = 88
          Height = 13
          Caption = 'Departamento:'
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
        object lblCargoHist: TJvLabel
          Left = 66
          Top = 47
          Width = 17
          Height = 13
          Caption = '---'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
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
        object lblDeptoHist: TJvLabel
          Left = 109
          Top = 70
          Width = 17
          Height = 13
          Caption = '---'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
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
        object img1: TImage
          Left = 142
          Top = 22
          Width = 17
          Height = 16
          Cursor = crHandPoint
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000001764944415478DA63FCFFFF3F03
            258071701970318D91819191018C9998186602858C81F8ECBF7F0CE9206520AC
            3FEB3F6E032EA432A60135A701856681689D3407E32BB30E9C85F141B4C1ECFF
            B3701A703A81F18C69AE8BF19595276E7D7FF5E5B376B285F1D5B927CE728AF1
            F0AA0719A95D9871E8ACE982FF26380D381AC598C6C2CD96AB1EA4AFF3F4E483
            E752E6F292CF4E3E7C2E61222B7967E3952B7FBEFE9A6CBD0C8F0BF6043282A8
            3410D68BD23306C981F0951557CE02C5401A67B9ACC713069B3D18D3B804D873
            B5FCE4751E9E7EF95CCE5854F2D1D9D7CFA50D84246F6E7D72E5FBA7DF937D77
            E071C16A07C633AE45AAC627963EB8F5F9E5EFCF76A9E2C68766BF3CCB2BCECA
            6BE027A87678F6ABB3A107F084C16C43C6346094A5DDFEC6304B958B212DB49A
            DB7875EBD7B3303E88EEB98DC7058C8C8CAC404A1C88B9D3C519EA15D919D4EE
            FF64B835F325433D50EC0F10BF00AAFF8ECF0066202500C4EC58121DC8800F40
            F5BF701A400E187803004C4CCFE175D027640000000049454E44AE426082}
        end
        object lblSolicitante: TJvLabel
          Left = 173
          Top = 24
          Width = 17
          Height = 13
          Caption = '---'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
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
        object edtCodigoSolic: TAdvEditBtn
          Left = 15
          Top = 23
          Width = 121
          Height = 19
          Flat = False
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          Enabled = True
          ReadOnly = False
          TabOrder = 0
          Visible = True
          OnKeyPress = edtCodigoSolicKeyPress
          Version = '1.3.2.8'
          ButtonStyle = bsButton
          ButtonWidth = 18
          Etched = False
          ButtonCaption = '...'
          OnClickBtn = edtCodigoSolicClickBtn
        end
      end
      object btnCargarImagen: TAdvGlowButton
        Left = 28
        Top = 135
        Width = 107
        Height = 21
        Caption = 'Cargar imagen'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btnCargarImagenClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object edtObservaciones: TDBRichEdit
        Left = 252
        Top = 128
        Width = 485
        Height = 56
        DataField = 'observaciones'
        DataSource = dsPlaza
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PlainText = True
        TabOrder = 4
      end
    end
  end
  object cdplaza: TClientDataSet
    Aggregates = <>
    Params = <>
    OnReconcileError = cdplazaReconcileError
    Left = 192
    Top = 296
  end
  object cdplazadetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 336
  end
  object dsGrupoPlazas: TDataSource
    DataSet = mdGrupoPlazas
    Left = 104
    Top = 352
  end
  object dsPlazaDetalle: TDataSource
    DataSet = mdPlazaDetalle
    Left = 504
    Top = 336
  end
  object cdpersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 504
  end
  object mdGrupoPlazas: TJvMemoryData
    FieldDefs = <
      item
        Name = 'IdGrupo'
        DataType = ftInteger
      end
      item
        Name = 'IdCargo'
        DataType = ftInteger
      end
      item
        Name = 'IdOrganizacion'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'CodigoCargo'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'TituloCargo'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Cantidad'
        DataType = ftInteger
      end>
    Left = 104
    Top = 296
  end
  object mdPlazaDetalle: TJvMemoryData
    FieldDefs = <>
    AfterScroll = mdPlazaDetalleAfterScroll
    Left = 584
    Top = 336
  end
  object dsPlaza: TDataSource
    DataSet = cdplaza
    Left = 192
    Top = 352
  end
  object cdDeptos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 592
    Top = 64
  end
  object dsDeptos: TDataSource
    DataSet = cdDeptos
    Left = 632
    Top = 64
  end
  object pmnuEstado: TAdvPopupMenu
    Version = '2.5.3.4'
    Left = 784
    Top = 168
    object Vacante1: TMenuItem
      Caption = 'Disponible'
    end
    object Nodisponible1: TMenuItem
      Caption = 'No disponible'
    end
  end
  object cdgruposplaza: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 16
  end
  object cdborraractno: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 408
  end
  object cddepartamentos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    Top = 328
  end
  object dsdepartamentos: TDataSource
    DataSet = cddepartamentos
    Left = 808
    Top = 320
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
    ReportOptions.LastChange = 41353.743147187500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 560
    Top = 448
    Datasets = <
      item
        DataSet = frxDBCdPersonal
        DataSetName = 'frxDBCdPersonal'
      end
      item
        DataSet = frxDBOrganizacion
        DataSetName = 'frxDBOrganizacion'
      end
      item
        DataSet = frxDBplazapersonal
        DataSetName = 'frxDBplazapersonal'
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
      object PageFooter1: TfrxPageFooter
        Height = 49.133890000000000000
        Top = 880.630490000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 650.079160000000000000
          Top = 22.677180000000020000
          Width = 75.590599999999990000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo21: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.559060000000045000
          Width = 529.134200000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'tituloorganizacion'
          DataSet = frxDBOrganizacion
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBOrganizacion."tituloorganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 113.385900000000000000
          Top = 17.795300000000000000
          Width = 529.134200000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'descripcion'
          DataSet = frxDBOrganizacion
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBOrganizacion."descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.472480000000020000
          Width = 272.126160000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'rfc'
          DataSet = frxDBOrganizacion
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOrganizacion."rfc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 385.512060000000000000
          Top = 30.472480000000020000
          Width = 257.008040000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = frxDBOrganizacion
          DataSetName = 'frxDBOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' [frxDBOrganizacion."telefono1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture4: TfrxPictureView
          Left = 75.590599999999990000
          Top = 2.779530000000022000
          Width = 30.236240000000000000
          Height = 41.574830000000000000
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
      end
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo26: TfrxMemoView
          Left = 1.000000000000000000
          Top = 0.779530000000001200
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
          Left = 11.338590000000000000
          Top = 7.559059999999999000
          Width = 68.031540000000010000
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
          Left = 94.488249999999990000
          Top = 3.779530000000001000
          Width = 638.740570000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'tituloorganizacion'
          DataSet = FrmCatalogoPersonal.frxDBOrganizacion
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
          Left = 94.488249999999990000
          Top = 34.015770000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'descripcion'
          DataSet = FrmCatalogoPersonal.frxDBOrganizacion
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
          Left = 94.488249999999990000
          Top = 56.692950000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rfc'
          DataSet = FrmCatalogoPersonal.frxDBOrganizacion
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
          Left = 415.748300000000000000
          Top = 56.692950000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCatalogoPersonal.frxDBOrganizacion
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
      object Header1: TfrxHeader
        Height = 41.574830000000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.779529999999994100
          Width = 733.228820000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ficha de Personal')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 578.268090000000000000
        Top = 241.889920000000000000
        Width = 740.409927000000000000
        RowCount = 1
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.559059999999988000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Imagen del personal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 11.338590000000000000
          Top = 49.133889999999980000
          Width = 128.504020000000000000
          Height = 132.283550000000000000
          ShowHint = False
          DataField = 'imagenpersonal'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo5: TfrxMemoView
          Left = 152.196970000000000000
          Top = 30.015770000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Codigo Personal:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 152.196970000000000000
          Top = 48.913420000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Nombres y Apellidos:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 152.196970000000000000
          Top = 67.811070000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Estado Civil:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779529999999994000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Datos Personales')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo13: TfrxMemoView
          Left = 152.181200000000000000
          Top = 84.149660000000010000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'No. Seguro Social: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 151.181200000000000000
          Top = 100.267780000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'C.U.R.P:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 152.181200000000000000
          Top = 114.385900000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'R.F.C: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 151.181200000000000000
          Top = 128.504020000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Telefono:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 151.181200000000000000
          Top = 143.622140000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Sexo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 151.181200000000000000
          Top = 158.740260000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Contacto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 152.181200000000000000
          Top = 173.858380000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Telefono Contacto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 11.338590000000000000
          Top = 205.756030000000000000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Domicilio')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 12.338590000000000000
          Top = 229.212740000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 340.157700000000000000
          Top = 228.433210000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Minicipio:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 12.338590000000000000
          Top = 246.448980000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 12.338590000000000000
          Top = 261.567100000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Numero:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 341.157700000000000000
          Top = 244.448980000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 340.157700000000000000
          Top = 260.787570000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'C.P.:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 11.338590000000000000
          Top = 302.362400000000000000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Datos del Nacimiento')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 13.118120000000000000
          Top = 327.819110000000000000
          Width = 120.944960000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha de Nacimiento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 340.157700000000000000
          Top = 328.819110000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Delegacion:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 13.338590000000000000
          Top = 343.716760000000000000
          Width = 158.740260000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Nombre y Apellidos del Padre:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 13.338590000000000000
          Top = 360.614410000000000000
          Width = 170.078850000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Nombre y Apellidos de la Madre')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 11.118120000000000000
          Top = 385.409710000000000000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Datos de Contratacion:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Picture3: TfrxPictureView
          Left = 15.118120000000000000
          Top = 430.764070000000100000
          Width = 98.267780000000000000
          Height = 98.267780000000000000
          ShowHint = False
          DataField = 'DoctoAutorizacion'
          DataSet = frxDBplazapersonal
          DataSetName = 'frxDBplazapersonal'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo42: TfrxMemoView
          Left = 15.118120000000000000
          Top = 412.645950000000100000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Contrato:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 132.283550000000000000
          Top = 442.205010000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Solicitud de Plaza:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 132.283550000000000000
          Top = 458.661720000000100000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Codigo de Plaza:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 132.283550000000000000
          Top = 475.338900000000100000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Cargo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 132.283550000000000000
          Top = 491.016080000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Departamento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 132.283550000000000000
          Top = 507.693260000000000000
          Width = 94.488249999999990000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Convenio:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalcodigopersonal: TfrxMemoView
          Left = 268.346630000000000000
          Top = 30.236239999999980000
          Width = 461.102660000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataField = 'codigopersonal'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."codigopersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalNombreCompleto: TfrxMemoView
          Left = 270.126160000000000000
          Top = 48.354360000000010000
          Width = 461.102660000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."NombreCompleto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalcurp: TfrxMemoView
          Left = 268.346630000000000000
          Top = 99.267779999999990000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'curp'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."curp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalrfc: TfrxMemoView
          Left = 268.346630000000000000
          Top = 114.724490000000000000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'rfc'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."rfc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonaltelefono: TfrxMemoView
          Left = 269.346630000000000000
          Top = 129.504020000000000000
          Width = 464.882190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'telefono'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."telefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalcontacto: TfrxMemoView
          Left = 268.346630000000000000
          Top = 157.740260000000000000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'contacto'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."contacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonaltelefonocontacto: TfrxMemoView
          Left = 268.346630000000000000
          Top = 175.637910000000000000
          Width = 464.882190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'telefonocontacto'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."telefonocontacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalTituloDepartamento: TfrxMemoView
          Left = 229.771800000000000000
          Top = 491.559370000000100000
          Width = 502.677490000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'TituloDepartamento'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."TituloDepartamento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalTituloCargo: TfrxMemoView
          Left = 229.551330000000000000
          Top = 474.661720000000100000
          Width = 502.677490000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'TituloCargo'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."TituloCargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBplazapersonalCodigoPlaza: TfrxMemoView
          Left = 230.551330000000000000
          Top = 442.543600000000100000
          Width = 502.677490000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'CodigoPlaza'
          DataSet = frxDBplazapersonal
          DataSetName = 'frxDBplazapersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBplazapersonal."CodigoPlaza"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBplazapersonalCodigoPlazaDetalle: TfrxMemoView
          Left = 230.551330000000000000
          Top = 459.102660000000000000
          Width = 502.677490000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'CodigoPlazaDetalle'
          DataSet = frxDBplazapersonal
          DataSetName = 'frxDBplazapersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBplazapersonal."CodigoPlazaDetalle"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBplazapersonalcodigoorganizacion: TfrxMemoView
          Left = 230.551330000000000000
          Top = 506.457020000000100000
          Width = 502.677490000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'codigoorganizacion'
          DataSet = frxDBplazapersonal
          DataSetName = 'frxDBplazapersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBplazapersonal."codigoorganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonaldelegacion: TfrxMemoView
          Left = 408.189240000000000000
          Top = 328.819110000000000000
          Width = 325.039580000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'delegacion'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."delegacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalEstadoCivil: TfrxMemoView
          Left = 268.346630000000000000
          Top = 66.252010000000010000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'EstadoCivil'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."EstadoCivil"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalnumerosegurosocial: TfrxMemoView
          Left = 268.346630000000000000
          Top = 85.149660000000010000
          Width = 464.882190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'numerosegurosocial'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."numerosegurosocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalsexo: TfrxMemoView
          Left = 269.346630000000000000
          Top = 143.622140000000000000
          Width = 464.882190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'sexo'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."sexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalEstado: TfrxMemoView
          Left = 63.252010000000000000
          Top = 230.551330000000000000
          Width = 272.126160000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'Estado'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."Estado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalCalle: TfrxMemoView
          Left = 62.472480000000000000
          Top = 246.889920000000000000
          Width = 272.126160000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'Calle'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."Calle"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalNumero: TfrxMemoView
          Left = 71.811070000000000000
          Top = 261.787570000000100000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'Numero'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."Numero"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalCP: TfrxMemoView
          Left = 400.630180000000000000
          Top = 260.787570000000100000
          Width = 332.598640000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'CP'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."CP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalColonia: TfrxMemoView
          Left = 403.409710000000000000
          Top = 244.889920000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'Colonia'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."Colonia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalMunicipio: TfrxMemoView
          Left = 403.630180000000000000
          Top = 229.771800000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'Municipio'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."Municipio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalfechanacimiento: TfrxMemoView
          Left = 136.063080000000000000
          Top = 328.819110000000000000
          Width = 200.315090000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'fechanacimiento'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."fechanacimiento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalnombremadre: TfrxMemoView
          Left = 188.976500000000000000
          Top = 361.834880000000000000
          Width = 544.252320000000100000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'nombremadre'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."nombremadre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBCdPersonalnombrepadre: TfrxMemoView
          Left = 177.637910000000000000
          Top = 344.937230000000000000
          Width = 555.590910000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'nombrepadre'
          DataSet = frxDBCdPersonal
          DataSetName = 'frxDBCdPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCdPersonal."nombrepadre"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBCdPersonal: TfrxDBDataset
    UserName = 'frxDBCdPersonal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'activo=activo'
      'codigopersonal=codigopersonal'
      'Nombres=Nombres'
      'APaterno=APaterno'
      'AMaterno=AMaterno'
      'NombreCompleto=NombreCompleto'
      'codigopersonal=codigopersonal'
      'curp=curp'
      'descripcion=descripcion'
      'correo=correo'
      'idpersonal=idpersonal'
      'imagenpersonal=imagenpersonal'
      'numerosegurosocial=numerosegurosocial'
      'fechaalta=fechaalta'
      'Gruposanguineo=Gruposanguineo'
      'rfc=rfc'
      'telefono=telefono'
      'contacto=contacto'
      'idpostulante=idpostulante'
      'telefonocontacto=telefonocontacto'
      'doccontratacion=doccontratacion'
      'infonavit=infonavit'
      'NumeroInfonavit=NumeroInfonavit'
      'Estado=Estado'
      'EstadoCivil=EstadoCivil'
      'estadonacimiento=estadonacimiento'
      'numerosegurosocial=numerosegurosocial'
      'sexo=sexo'
      'nacionalidad=nacionalidad'
      'Municipio=Municipio'
      'Calle=Calle'
      'Numero=Numero'
      'Colonia=Colonia'
      'fechanacimiento=fechanacimiento'
      'delegacion=delegacion'
      'nombremadre=nombremadre'
      'nombrepadre=nombrepadre'
      'CP=CP'
      'Correo=Correo'
      'FechaReingreso=FechaReingreso'
      'IdPlazaDetalle=IdPlazaDetalle'
      'IdCargo=IdCargo'
      'CodigoCargo=CodigoCargo'
      'TituloCargo=TituloCargo'
      'IdDepartamento=IdDepartamento'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'DescripcionDepartamento=DescripcionDepartamento'
      'Nivel=Nivel'
      'IdSalario=IdSalario'
      'CodigoSalario=CodigoSalario'
      'TituloSalario=TituloSalario'
      'salario=salario'
      'IdMoneda=IdMoneda'
      'codigomoneda=codigomoneda'
      'TituloMoneda=TituloMoneda')
    DataSet = cdpersonal
    BCDToCurrency = False
    Left = 512
    Top = 504
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
    Left = 696
    Top = 544
  end
  object cdplazapersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 632
    Top = 424
  end
  object frxDBplazapersonal: TfrxDBDataset
    UserName = 'frxDBplazapersonal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodigoPlaza=CodigoPlaza'
      'DoctoAutorizacion=DoctoAutorizacion'
      'CodigoPlazaDetalle=CodigoPlazaDetalle'
      'DoctoAutorizacion=DoctoAutorizacion'
      'titulocargo=titulocargo'
      'codigodepartamento=codigodepartamento'
      'codigoorganizacion=codigoorganizacion')
    DataSet = cdplazapersonal
    BCDToCurrency = False
    Left = 632
    Top = 488
  end
end
