object FrmCapturaRetardos: TFrmCapturaRetardos
  Left = 0
  Top = 0
  Caption = 'Captura de Retardos e Inasistencias'
  ClientHeight = 540
  ClientWidth = 1091
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxSchRetardos: TcxScheduler
    AlignWithMargins = True
    Left = 3
    Top = 156
    Width = 1085
    Height = 303
    DateNavigator.ColCount = 4
    DateNavigator.OnSelectionChanged = cxSchRetardosDateNavigatorSelectionChanged
    ViewDay.HeaderContainer = False
    ViewDay.ShowAllDayEventsInContentArea = True
    ViewWeek.Active = True
    Align = alClient
    ContentPopupMenu.PopupMenu = dxPopup1
    ContentPopupMenu.UseBuiltInPopupMenu = False
    ContentPopupMenu.Items = []
    ControlBox.Control = CxGridMain
    DialogsStyle = 'Ribbon2010'
    EventOperations.Deleting = False
    EventOperations.DialogEditing = False
    EventOperations.DialogShowing = False
    EventOperations.InplaceEditing = False
    EventOperations.MovingBetweenResources = False
    EventOperations.Moving = False
    EventOperations.Recurrence = False
    EventOperations.SharingBetweenResources = True
    EventOperations.Sizing = False
    EventPopupMenu.PopupMenu = dxPopup1
    EventPopupMenu.Items = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OptionsView.ShowNavigationButtons = False
    OptionsView.ViewPosition = vpRight
    OptionsView.WorkDays = [dMonday, dTuesday, dWednesday, dThursday, dFriday, dSaturday]
    OptionsView.WorkFinish = 0.833333333333333400
    Storage = SchedulerDBStorage
    TabOrder = 0
    OnEventSelectionChanged = cxSchRetardosEventSelectionChanged
    Selection = 7
    Splitters = {
      010000007E0000003D020000830000003D02000001000000420200002E010000}
    StoredClientBounds = {01000000010000003C0400002E010000}
    object CxGridMain: TcxGrid
      Left = 0
      Top = 0
      Width = 572
      Height = 171
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      object CxGridPersonal: TcxGridDBTableView
        PopupMenu = dxPopupPersonal
        Navigator.Buttons.CustomButtons = <
          item
            Hint = 'Presione para abrir el panel de b'#250'squeda'
            ImageIndex = 103
            Visible = False
          end>
        Navigator.Buttons.Images = Form2.cxImageResIconosTodos16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = 'Registro No: [RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dsPersonal
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '$0.00'
            Kind = skSum
            FieldName = 'SalarioIntegrado'
            Column = grdColumDbGridGrid1DBTableView1Column11
            DisplayText = 'Salario integrado'
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <>
          end>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.InfoText = 'Filtrar Registros'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        Images = Form2.cxImageResIconosTodos16
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.NoDataToDisplayInfoText = '< Sin empleados Cargados >'
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        OptionsView.GroupRowHeight = 35
        OptionsView.Indicator = True
        Styles.Background = cxstyl1
        Styles.Content = cxstylFontContent
        Styles.Header = cxstylFont
        object CxColumnCodigoEmpleado: TcxGridDBColumn
          Caption = 'C'#243'digo Postulante'
          DataBinding.FieldName = 'CodigoPersonal'
          PropertiesClassName = 'TcxLabelProperties'
          SortIndex = 1
          SortOrder = soAscending
          Width = 137
        end
        object grdColumDbGridGrid1DBTableView1Column12: TcxGridDBColumn
          Caption = 'Tipo de N'#243'mina'
          DataBinding.FieldName = 'titulo'
          Visible = False
          GroupIndex = 0
          SortIndex = 0
          SortOrder = soAscending
          Width = 119
        end
        object CxColumnEmpleado: TcxGridDBColumn
          Caption = 'Nombre Completo'
          DataBinding.FieldName = 'NombreCompleto'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 214
        end
        object grdColumDbGridGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Fecha Registro'
          DataBinding.FieldName = 'FechaAlta'
          Width = 127
        end
        object grdColumDbGridGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'R.F.C.'
          DataBinding.FieldName = 'Rfc'
          Width = 114
        end
        object grdColumDbGridGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'C.U.R.P.'
          DataBinding.FieldName = 'Curp'
          Width = 89
        end
        object grdColumDbGridGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = 'No. I.M.S.S.'
          DataBinding.FieldName = 'NumeroSeguroSocial'
          Width = 94
        end
        object CxColumnRegpat: TcxGridDBColumn
          Caption = 'Registro Patronal'
          DataBinding.FieldName = 'RegistroPatronal'
          Width = 143
        end
        object grdColumDbGridGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = 'Proyecto'
          DataBinding.FieldName = 'NombreOrganizacion'
          Width = 144
        end
        object grdColumDbGridGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = 'Departamento'
          DataBinding.FieldName = 'TituloDepartamento'
          Width = 143
        end
        object grdColumDbGridGrid1DBTableView1Column9: TcxGridDBColumn
          Caption = 'Puesto'
          DataBinding.FieldName = 'TituloCargo'
          Width = 124
        end
        object grdColumDbGridGrid1DBTableView1Column10: TcxGridDBColumn
          Caption = 'Salario Diario'
          DataBinding.FieldName = 'SalarioDiario'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 114
        end
        object grdColumDbGridGrid1DBTableView1Column11: TcxGridDBColumn
          Caption = 'Salario Integrado'
          DataBinding.FieldName = 'SalarioIntegrado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 135
        end
        object CxColumnInfonavit: TcxGridDBColumn
          Caption = 'INFONAVIT'
          DataBinding.FieldName = 'infonavit'
          Width = 130
        end
        object CxColumnAplicacion: TcxGridDBColumn
          Caption = 'Aplicaci'#243'n INFONAVIT'
          DataBinding.FieldName = 'Aplicacioninfonavit'
          Width = 133
        end
        object CxColumnTérmino: TcxGridDBColumn
          Caption = 'T'#233'rmino INFONAVIT'
          DataBinding.FieldName = 'Terminoinfonavit'
          Width = 148
        end
        object cxColumnatAplicacionInfonavit: TcxGridDBColumn
          Caption = 'Tipo de Credito INFONAVIT'
          DataBinding.FieldName = 'tAplicacionInfonavit'
          Width = 210
        end
        object CxColumnTermino: TcxGridDBColumn
          Caption = 'Factor INFONAVIT'
          DataBinding.FieldName = 'FactorInfonavit'
          Width = 94
        end
        object CxColumnTipoMovimiento: TcxGridDBColumn
          DataBinding.FieldName = 'TipoMovimiento'
          Visible = False
        end
        object CxColumnDiasDescanso: TcxGridDBColumn
          DataBinding.FieldName = 'DiasDescanso'
          Visible = False
        end
        object CxColumnEspecial: TcxGridDBColumn
          DataBinding.FieldName = 'Especial'
          Visible = False
        end
        object CxColumnIDPersonal: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonal'
          Visible = False
        end
        object CxGridPersonalColumn1: TcxGridDBColumn
          Visible = False
        end
      end
      object CxLevelPersonal: TcxGridLevel
        Caption = 'Cat'#225'logo maestro de Personal'
        GridView = CxGridPersonal
        MaxDetailHeight = 5
        Options.TabsForEmptyDetails = False
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 462
    Width = 1091
    Height = 78
    Align = alBottom
    DataSource = SchedulerDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Caption'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Start'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Finish'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ParentID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Options'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'recurrencyIndex'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'recurrencyInfo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ResourceID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Location'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Message'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReminderDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReminderMinutes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'State'
        Visible = True
      end>
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1091
    Height = 126
    BarManager = DxManager1
    ColorSchemeName = 'Office2010Blue'
    Contexts = <>
    TabOrder = 2
    TabStop = False
    object dxTabRetardos: TdxRibbonTab
      Active = True
      Caption = 'Retardos'
      Groups = <
        item
          ToolbarName = 'dxbrOpciones'
        end
        item
          ToolbarName = 'dxbrReporte'
        end>
      Index = 0
    end
    object dxTabInasistencias: TdxRibbonTab
      Caption = 'Inasistencias'
      Groups = <
        item
          ToolbarName = 'dxbrOpcionesInasistencias'
        end
        item
          ToolbarName = 'dxbrReporte'
        end>
      Index = 1
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 126
    Width = 1091
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      1091
      27)
    object cxLabel5: TcxLabel
      Left = 955
      Top = 7
      Anchors = [akTop, akRight]
      Caption = 'Retardos Aplica Descuento'
      ParentColor = False
      Style.Color = 11468799
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 941
      Top = 6
      Anchors = [akTop, akRight]
      Caption = '   '
      ParentColor = False
      Style.BorderColor = clBlack
      Style.BorderStyle = ebsFlat
      Style.Color = 11060735
    end
    object CxLbl2: TcxLabel
      Left = 779
      Top = 7
      Anchors = [akTop, akRight]
      Caption = '   '
      ParentColor = False
      Style.BorderColor = clBlack
      Style.BorderStyle = ebsFlat
      Style.Color = 11468799
    end
    object CxLblSdIModificado: TcxLabel
      Left = 794
      Top = 7
      Anchors = [akTop, akRight]
      Caption = 'Retardos No Aplica Desc.'
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 654
      Top = 7
      Anchors = [akTop, akRight]
      Caption = '   '
      ParentColor = False
      Style.BorderColor = clBlack
      Style.BorderStyle = ebsFlat
      Style.Color = clGreen
    end
    object cxLabel8: TcxLabel
      Left = 667
      Top = 7
      Anchors = [akTop, akRight]
      Caption = 'Salidas Registradas'
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 555
      Top = 7
      Anchors = [akTop, akRight]
      Caption = '   '
      ParentColor = False
      Style.BorderColor = clBlack
      Style.BorderStyle = ebsFlat
      Style.Color = clBlue
    end
    object cxLabel11: TcxLabel
      Left = 568
      Top = 7
      Anchors = [akTop, akRight]
      Caption = 'Inasistencias'
      Transparent = True
    end
  end
  object pnlDatos: TPanel
    Left = 494
    Top = 149
    Width = 470
    Height = 383
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Visible = False
    object cxLabel1: TcxLabel
      Left = 8
      Top = 16
      Caption = 'Empleado:'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 39
      Caption = 'Fecha:'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 259
      Top = 39
      Caption = 'Hora:'
      Transparent = True
    end
    object CxCheckAplicaDescuento: TcxDBCheckBox
      Left = 8
      Top = 295
      Caption = 'Aplica Descuento sobre C'#225'lculo de N'#243'mina'
      DataBinding.DataField = 'AplicaDescuento'
      DataBinding.DataSource = dsExcepcionUpt
      Properties.ImmediatePost = True
      TabOrder = 3
      Transparent = True
      Width = 225
    end
    object cxLabel4: TcxLabel
      Left = 8
      Top = 122
      Caption = 'Comentarios:'
      Transparent = True
    end
    object CxMemoDescripcion: TcxDBMemo
      Left = 8
      Top = 141
      DataBinding.DataField = 'Comentarios'
      DataBinding.DataSource = dsExcepcionUpt
      TabOrder = 5
      Height = 148
      Width = 449
    end
    object CxTextEmpleado: TcxTextEdit
      Left = 68
      Top = 15
      Enabled = False
      TabOrder = 6
      Text = 'CxTextEmpleado'
      Width = 389
    end
    object CxDateFecha: TcxDBDateEdit
      Left = 68
      Top = 39
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = dsExcepcionUpt
      Properties.ValidationOptions = [evoShowErrorIcon]
      TabOrder = 7
      Width = 165
    end
    object CxDbTimeHora: TcxDBTimeEdit
      Left = 296
      Top = 39
      DataBinding.DataField = 'hora'
      DataBinding.DataSource = dsExcepcionUpt
      Properties.TimeFormat = tfHourMin
      TabOrder = 8
      Width = 161
    end
    object cxbtnGuardar: TcxButton
      Left = 160
      Top = 355
      Width = 75
      Height = 25
      Caption = '&Guardar'
      LookAndFeel.SkinName = 'MoneyTwins'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000040000
        00130000001E0000002000000020000000200000002100000021000000210000
        002200000022000000220000002300000021000000160000000500000012281E
        16CB37291EFF463A31FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D
        3DFFAD6839FFAB6535FF42362EFF3D3026FF241A13CE00000015000000193B2C
        21FF685C54FF483C34FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B5
        79FFE2B276FFE2B273FF443931FF51433AFF34261DFF0000001E000000183E2F
        24FF6C6057FF4A3F37FFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A6
        6DFFD4A56AFFD4A268FF473B33FF5B4F47FF37291EFF0000001D000000164031
        26FF6F645CFF4C4038FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EF
        EAFFF6EFEAFFF6EFE9FF463B34FF5D5249FF3A2C21FF0000001B000000144434
        29FF73675FFF4F443CFFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1
        EBFFF7F0EBFFF7F0ECFF4A4037FF5F534BFF3D2E23FF00000019000000124637
        2CFF776B63FF50453DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4E433BFF61544CFF403126FF0000001700000010493A
        2FFF796E66FF50453DFF61564EFF60564EFF60554DFF5F544CFF5E544CFF5E53
        4BFF5D524AFF5C5249FF5B5149FF61554DFF433429FF000000150000000E4C3D
        32FF7C706AFF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B43
        3AFF594139FF584038FF573F37FF63574FFF46362DFF000000130000000D4E3F
        35FF80746DFF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7
        CAFFF3EAE2FFF3E9E2FF5A4139FF645850FF483A2FFF000000110000000B5142
        36FF827770FF70564DFFF9F5F2FFF4EAE4FFF1E6DEFFEBDCD2FFE9D9CCFF4E41
        3DFF60534CFFF3EAE3FF5D453CFF655951FF4C3D32FF0000000F000000095344
        39FF857A73FF755A50FFFAF6F3FFF5EDE7FFF4EDE6FFF4ECE6FFEFE2DAFF493D
        38FF5A4D46FFF4EBE4FF60483FFF655A52FF4F3F34FF0000000D000000075545
        3AFF887D76FF795E54FFFAF6F4FFF5EEE9FFF5EDE7FFF4EDE7FFF4ECE6FF473A
        36FF483D36FFE9D9CDFF644C43FF675A52FF514137FF0000000B000000065748
        3DFF898079FF7C6157FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF5
        F2FFF5EEE9FFF4ECE6FF695046FF82776FFF534439FF00000009000000034235
        2EC058493DFF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E
        64FF82695FFF7D645BFF6E544AFF56453BFF3F332BC200000005000000000000
        0002000000030000000400000004000000040000000400000005000000050000
        0005000000050000000500000006000000060000000400000001}
      TabOrder = 9
      OnClick = cxbtnGuardarClick
    end
    object cxbtnCancel: TcxButton
      Left = 241
      Top = 355
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      LookAndFeel.SkinName = 'MoneyTwins'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000030000
        000B000000120000001300000013000000140000001400000014000000140000
        0014000000140000001500000015000000140000000D000000030000000B1C11
        6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
        93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
        9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
        D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
        A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
        BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
        A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
        CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
        ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
        B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
        B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
        BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
        C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
        D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
        D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
        A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
        DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
        BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
        DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
        F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
        A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
        DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
        0002000000030000000400000004000000040000000400000004000000040000
        0004000000040000000400000005000000050000000300000001}
      TabOrder = 10
    end
    object CxCbbTipo: TcxDBComboBox
      Left = 68
      Top = 85
      DataBinding.DataField = 'Tipo'
      DataBinding.DataSource = dsExcepcionUpt
      Properties.Items.Strings = (
        'ENTRADA'
        'SALIDA')
      Properties.OnChange = CxCbbTipoPropertiesChange
      TabOrder = 11
      Width = 165
    end
    object cxLabel9: TcxLabel
      Left = 8
      Top = 86
      Caption = 'Evento:'
      Transparent = True
    end
    object CxCheckAplicaTiempoExtra: TcxDBCheckBox
      Left = 8
      Top = 317
      Caption = 'Aplica Tiempo Excedente'
      DataBinding.DataField = 'AplicaTiempoExcendente'
      DataBinding.DataSource = dsExcepcionUpt
      TabOrder = 13
      Transparent = True
      Visible = False
      Width = 225
    end
    object checkHabilitar: TcxCheckBox
      Left = 239
      Top = 87
      Caption = 'Habilitar'
      Properties.OnEditValueChanged = checkHabilitarPropertiesEditValueChanged
      TabOrder = 14
      Transparent = True
      Width = 121
    end
    object CxDateFechaDescuento: TcxDBDateEdit
      Left = 68
      Top = 62
      DataBinding.DataField = 'FechaDescuento'
      DataBinding.DataSource = dsExcepcionUpt
      Properties.InputKind = ikRegExpr
      Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon]
      TabOrder = 15
      Width = 165
    end
    object cxlbl1: TcxLabel
      Left = 8
      Top = 62
      Caption = 'Aplicar:'
      Transparent = True
    end
  end
  object pnlDatosInasistencia: TPanel
    Left = 58
    Top = 132
    Width = 313
    Height = 281
    TabOrder = 9
    Visible = False
    object cxLabel12: TcxLabel
      Left = 8
      Top = 30
      Caption = 'Inicio:'
      Transparent = True
    end
    object cxLabel13: TcxLabel
      Left = 8
      Top = 52
      Caption = 'T'#233'rmino:'
      Transparent = True
    end
    object CxCbbTipoIna: TcxDBLookupComboBox
      Left = 74
      Top = 96
      DataBinding.DataField = 'IdTipoInasistencia'
      DataBinding.DataSource = dsInasistenciasUPDATE
      Properties.KeyFieldNames = 'IdTipoInasistencia'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsTipoInasistencia
      TabOrder = 2
      Width = 231
    end
    object cxLabel14: TcxLabel
      Left = 8
      Top = 97
      Caption = 'Tipo:'
      Transparent = True
    end
    object cxLabel15: TcxLabel
      Left = 8
      Top = 118
      Caption = 'Referencia:'
      Transparent = True
    end
    object CxMemoReferencia: TcxDBMemo
      Left = 8
      Top = 134
      DataBinding.DataField = 'Referencia'
      DataBinding.DataSource = dsInasistenciasUPDATE
      TabOrder = 5
      Height = 89
      Width = 297
    end
    object CxDateInicioIna: TcxDBDateEdit
      Left = 74
      Top = 28
      DataBinding.DataField = 'Inicio'
      DataBinding.DataSource = dsInasistenciasUPDATE
      TabOrder = 6
      Width = 231
    end
    object CxDateTerminoIna: TcxDBDateEdit
      Left = 74
      Top = 51
      DataBinding.DataField = 'Termino'
      DataBinding.DataSource = dsInasistenciasUPDATE
      TabOrder = 7
      Width = 231
    end
    object btnGuardarInasistencia: TcxButton
      Left = 87
      Top = 229
      Width = 75
      Height = 25
      Caption = 'Guardar'
      LookAndFeel.SkinName = 'MoneyTwins'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000040000
        00130000001E0000002000000020000000200000002100000021000000210000
        002200000022000000220000002300000021000000160000000500000012281E
        16CB37291EFF463A31FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D
        3DFFAD6839FFAB6535FF42362EFF3D3026FF241A13CE00000015000000193B2C
        21FF685C54FF483C34FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B5
        79FFE2B276FFE2B273FF443931FF51433AFF34261DFF0000001E000000183E2F
        24FF6C6057FF4A3F37FFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A6
        6DFFD4A56AFFD4A268FF473B33FF5B4F47FF37291EFF0000001D000000164031
        26FF6F645CFF4C4038FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EF
        EAFFF6EFEAFFF6EFE9FF463B34FF5D5249FF3A2C21FF0000001B000000144434
        29FF73675FFF4F443CFFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1
        EBFFF7F0EBFFF7F0ECFF4A4037FF5F534BFF3D2E23FF00000019000000124637
        2CFF776B63FF50453DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4E433BFF61544CFF403126FF0000001700000010493A
        2FFF796E66FF50453DFF61564EFF60564EFF60554DFF5F544CFF5E544CFF5E53
        4BFF5D524AFF5C5249FF5B5149FF61554DFF433429FF000000150000000E4C3D
        32FF7C706AFF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B43
        3AFF594139FF584038FF573F37FF63574FFF46362DFF000000130000000D4E3F
        35FF80746DFF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7
        CAFFF3EAE2FFF3E9E2FF5A4139FF645850FF483A2FFF000000110000000B5142
        36FF827770FF70564DFFF9F5F2FFF4EAE4FFF1E6DEFFEBDCD2FFE9D9CCFF4E41
        3DFF60534CFFF3EAE3FF5D453CFF655951FF4C3D32FF0000000F000000095344
        39FF857A73FF755A50FFFAF6F3FFF5EDE7FFF4EDE6FFF4ECE6FFEFE2DAFF493D
        38FF5A4D46FFF4EBE4FF60483FFF655A52FF4F3F34FF0000000D000000075545
        3AFF887D76FF795E54FFFAF6F4FFF5EEE9FFF5EDE7FFF4EDE7FFF4ECE6FF473A
        36FF483D36FFE9D9CDFF644C43FF675A52FF514137FF0000000B000000065748
        3DFF898079FF7C6157FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF5
        F2FFF5EEE9FFF4ECE6FF695046FF82776FFF534439FF00000009000000034235
        2EC058493DFF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E
        64FF82695FFF7D645BFF6E544AFF56453BFF3F332BC200000005000000000000
        0002000000030000000400000004000000040000000400000005000000050000
        0005000000050000000500000006000000060000000400000001}
      TabOrder = 8
      OnClick = btnGuardarInasistenciaClick
    end
    object btnCancelarInasistencia: TcxButton
      Left = 168
      Top = 229
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      LookAndFeel.SkinName = 'MoneyTwins'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000030000
        000B000000120000001300000013000000140000001400000014000000140000
        0014000000140000001500000015000000140000000D000000030000000B1C11
        6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
        93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
        9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
        D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
        A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
        BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
        A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
        CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
        ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
        B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
        B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
        BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
        C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
        D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
        D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
        A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
        DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
        BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
        DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
        F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
        A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
        DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
        0002000000030000000400000004000000040000000400000004000000040000
        0004000000040000000400000005000000050000000300000001}
      TabOrder = 9
    end
    object lblNombreIndicativo: TcxLabel
      Left = 8
      Top = 7
      Caption = 'Nombre:'
      Transparent = True
    end
    object lblNombre: TcxLabel
      Left = 74
      Top = 7
      Caption = 'lblNombre'
      Transparent = True
    end
    object cxlbl3: TcxLabel
      Left = 8
      Top = 74
      Caption = 'Aplicar:'
      Transparent = True
    end
    object CxDateAplicaDescuento: TcxDBDateEdit
      Left = 74
      Top = 73
      DataBinding.DataField = 'FechaDescuento'
      DataBinding.DataSource = dsInasistenciasUPDATE
      TabOrder = 13
      Width = 231
    end
  end
  object cdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 496
  end
  object cdCorteHorarios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 480
  end
  object dsTipoNomina: TDataSource
    Left = 544
    Top = 480
  end
  object dsCorteHorarios: TDataSource
    Left = 432
    Top = 480
  end
  object SchedulerDataSource: TDataSource
    DataSet = mdEvents
    Left = 496
    Top = 496
  end
  object SchedulerDBStorage: TcxSchedulerDBStorage
    Reminders.Active = False
    Resources.Items = <>
    SmartRefresh = True
    CustomFields = <>
    DataSource = SchedulerDataSource
    FieldNames.ActualFinish = 'ActualFinish'
    FieldNames.ActualStart = 'ActualStart'
    FieldNames.Caption = 'Caption'
    FieldNames.GroupID = 'GroupID'
    FieldNames.EventType = 'Type'
    FieldNames.Finish = 'Finish'
    FieldNames.ID = 'ID'
    FieldNames.LabelColor = 'LabelColor'
    FieldNames.Location = 'Location'
    FieldNames.Message = 'Message'
    FieldNames.Options = 'Options'
    FieldNames.ParentID = 'TipoExcepcion'
    FieldNames.RecurrenceIndex = 'RecurrenceIndex'
    FieldNames.RecurrenceInfo = 'RecurrenceInfo'
    FieldNames.ReminderDate = 'ReminderDate'
    FieldNames.ReminderMinutesBeforeStart = 'ReminderMinutes'
    FieldNames.ResourceID = 'idExcepcion'
    FieldNames.Start = 'Start'
    FieldNames.State = 'State'
    FieldNames.TaskIndexField = 'idPersonal'
    UseIndexedID = True
    Left = 1000
    Top = 192
  end
  object SchedulerStorage: TcxSchedulerStorage
    CustomFields = <>
    Reminders.Active = False
    Resources.Items = <>
    Left = 1000
    Top = 240
  end
  object SchedulerAggregateStorage: TcxSchedulerAggregateStorage
    CustomFields = <>
    Resources.Items = <>
    Links = <
      item
        Default = True
        Storage = SchedulerDBStorage
      end
      item
        Storage = SchedulerStorage
      end>
    Left = 1000
    Top = 288
  end
  object mdEvents: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F13000000040000000C000300494400040000000300
      0900506172656E7449440004000000030005005479706500080000000B000600
      537461727400080000000B00070046696E6973680004000000030008004F7074
      696F6E7300FF0000000100080043617074696F6E000400000003001000526563
      757272656E6365496E64657800000000000D000F00526563757272656E636549
      6E666F00000000000D000B005265736F75726365494400FF000000010009004C
      6F636174696F6E00FF000000010008004D65737361676500080000000B000D00
      52656D696E6465724461746500040000000300100052656D696E6465724D696E
      757465730004000000030006005374617465000400000003000B004C6162656C
      436F6C6F7200080000000B000C0041637475616C537461727400080000000B00
      0D0041637475616C46696E69736800FF00000001000C0053796E634944466965
      6C6400}
    SortOptions = []
    Left = 464
    Top = 328
    object mdEventsID: TAutoIncField
      FieldName = 'ID'
    end
    object mdEventsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object mdEventsType: TIntegerField
      FieldName = 'Type'
    end
    object mdEventsStart: TDateTimeField
      FieldName = 'Start'
    end
    object mdEventsFinish: TDateTimeField
      FieldName = 'Finish'
    end
    object mdEventsOptions: TIntegerField
      FieldName = 'Options'
    end
    object mdEventsCaption: TStringField
      FieldName = 'Caption'
      Size = 255
    end
    object mdEventsRecurrenceIndex: TIntegerField
      FieldName = 'RecurrenceIndex'
    end
    object mdEventsRecurrenceInfo: TBlobField
      FieldName = 'RecurrenceInfo'
    end
    object mdEventsResourceID: TBlobField
      FieldName = 'ResourceID'
    end
    object mdEventsLocation: TStringField
      FieldName = 'Location'
      Size = 255
    end
    object mdEventsMessage: TStringField
      FieldName = 'Message'
      Size = 255
    end
    object mdEventsReminderDate: TDateTimeField
      FieldName = 'ReminderDate'
    end
    object mdEventsReminderMinutes: TIntegerField
      FieldName = 'ReminderMinutes'
    end
    object mdEventsState: TIntegerField
      FieldName = 'State'
    end
    object mdEventsLabelColor: TIntegerField
      FieldName = 'LabelColor'
    end
    object mdEventsActualStart: TDateTimeField
      FieldName = 'ActualStart'
    end
    object mdEventsActualFinish: TDateTimeField
      FieldName = 'ActualFinish'
    end
    object mdEventsSyncIDField: TStringField
      FieldName = 'SyncIDField'
      Size = 255
    end
    object intgrfldEventsTipoExcepcion: TIntegerField
      FieldName = 'TipoExcepcion'
    end
    object intgrfldEventsGroupID: TIntegerField
      FieldName = 'GroupID'
    end
    object intgrfldEventsidExcepcion: TIntegerField
      FieldName = 'idExcepcion'
    end
    object intgrfldEventsidPersonal: TIntegerField
      FieldName = 'idPersonal'
    end
  end
  object DxManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 880
    Top = 360
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbrOpciones: TdxBar
      Caption = 'Opciones Retardos'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1047
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'CxDateInicio'
        end
        item
          Visible = True
          ItemName = 'CxDateTermino'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'CxCheckInasistencias'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'CxCheckRetardos'
        end
        item
          Visible = True
          ItemName = 'dxBtnAbrir'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBtnAgregar'
        end
        item
          Visible = True
          ItemName = 'dxBtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxBtnEliminar'
        end
        item
          Visible = True
          ItemName = 'dxBtnRefrescar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrReporte: TdxBar
      Caption = 'Reporte'
      CaptionButtons = <>
      DockedLeft = 616
      DockedTop = 0
      FloatLeft = 1125
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBtnListado'
        end
        item
          Visible = True
          ItemName = 'dxBtnCerrar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrOpcionesInasistencias: TdxBar
      Caption = 'Opciones Inasistencia'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 946
      FloatTop = 259
      FloatClientWidth = 126
      FloatClientHeight = 216
      ItemLinks = <
        item
          Visible = True
          ItemName = 'CxDateInicio'
        end
        item
          Visible = True
          ItemName = 'CxDateTermino'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'CxCheckInasistencias'
        end
        item
          Visible = True
          ItemName = 'CxCheckRetardos'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBtnAbrir'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBtnRegistrarInasistencia'
        end
        item
          Visible = True
          ItemName = 'dxBtnEditarInasistencia'
        end
        item
          Visible = True
          ItemName = 'dxBtnEliminarInasistencia'
        end
        item
          Visible = True
          ItemName = 'dxBtnRefrescar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBtnAgregar: TdxBarLargeButton
      Caption = '&Registrar Evento'
      Category = 0
      Hint = 'Registrar Evento'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0002000000080000000C0000000D0000000D0000000D0000000E0000000E0000
        000E0000000E0000000D00000009000000020000000000000000000000000000
        0007295B8FBF357DC6FF337AC5FF3079C3FF2E76C2FF2C74C0FF2971BEFF276F
        BEFF256EBCFF236CBAFF174C86C1000000090000000000000000000000000000
        000A3C83CAFF87CAF0FF66B9EBFF62B6EAFF5FB4E9FF5CB2E8FF59B1E8FF56AF
        E8FF53AEE7FF50ACE7FF246CBBFF0000000D0000000000000000000000000000
        000A3F85CCFF8FCFF1FF4690D2FF438DD0FF408BCEFF3D88CEFF3B86CCFF3984
        CBFF3683C9FF55AFE7FF256EBDFF0000000D0000000000000000000000000000
        000A4389CEFF98D3F3FF4A92D4FFFAF7F3FFF5EFE9FFF5EFEAFFF5EFEAFFF5EF
        EAFF3A85CBFF59B1E8FF2971BEFF0000000D0000000000000000000000000000
        0009468CD0FFA0D7F3FF4F97D5FFFBF8F6FFF6F0EBFFF6EFEAFFF5F0EBFFF5F0
        EAFF3D87CCFF5EB5E9FF2B73C0FF0000000C0000000000000000000000000000
        00094A8FD2FFA9DBF5FF5399D6FFFCFAF8FFF6F1ECFFF6F0ECFFF7F0ECFFF6F1
        EBFF408BCFFF65B6E8FF3275BEFF0000000B0000000000000000000000000000
        00084D92D3FFB0DFF7FF569CD8FFFDFBFAFFF7F2EDFFF7F1ECFFF7F1EDFFF7F1
        EDFF478CCBFF6BB2DEFF3876BBFF0000000B0000000000000000000000000000
        00075094D6FFB8E2F7FF5B9FDAFFFDFCFBFFF8F2EEFFF8F2EEFFF7F2EDFFF0E8
        E3FF7FA9D2FF98C6E2FF729BC9FF0000000A0000000000000000000000000000
        00075398D7FFBDE6F8FF5EA3DCFFFEFDFDFFF8F3F0FFF8F3F0FFEDE5E0FFE2D6
        D0FFABC4DCFF6296CCFFA2BCD8FF09315F8B0000000000000000000000000000
        0006559AD9FFC3E9F9FF62A6DEFFFEFEFEFFF9F4F1FFEAE1DCFFE5D9D5FFEEE6
        E3FFAFC4D9FF1664B9FF3878BFFF1462B7FF0000000000000000000000000000
        0006589DDAFFC9EBFAFF66A9E0FFFFFFFEFFD0BEB7FFBBA298FFCCB8B2FF7E9E
        C6FF1C6ABEFF80D2F8FF4EAEE9FF5CC0F8FF1967BCFF0C335C7E000000000000
        00055BA0DDFFCDEDFBFF69ACE1FFAC8E83FF946C5DFF926A5CFFAD8E84FFCDBB
        B4FF4985C4FF6DBDEDFF6ECBF8FF58B1EAFF185290BD00000000000000000000
        00034678A5C05C9FDCFF599EDCFFB38D7EFFF1E9E2FFE2D2C6FFE9DCD2FF7A98
        BEFF2879CAFFABE4FCFF89C9EFFFA7E2FBFF2576C7FF133B6481000000000000
        0001000000030000000400000005866A5FBEB58F80FFB58F80FFB48E7FFF8569
        5EBF000000062C7FCEFF215F9AC12B7ECDFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001842687E000000001841687E0000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000040000000500000005000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000500000005000000020000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000001000000040000000A000000100000001400000015000000150000
        0015000000160000001600000016000000160000001600000016000000170000
        00170000001700000017000000170000001700000016000000120000000B0000
        0004000000010000000000000000000000000000000000000000000000000000
        000000000002000000090E1F32592B62A1EA2E6AB1FF2E6AB0FF2D69AFFF2D67
        AEFF2C67AEFF2C66ADFF2A63ACFF2A62ACFF2A61ABFF2961AAFF2960AAFF245C
        A7FF245BA7FF245AA6FF2259A6FF2358A4FF2257A4FF1E4F94EB09182E5B0000
        000A000000020000000100000000000000000000000000000000000000000000
        0000000000040000000F2D65A1E869AFDEFF66BAEBFF65B9ECFF62B8EBFF61B8
        EBFF60B6EBFF5FB6EBFF5DB4EAFF5CB4EBFF5BB3EAFF59B2E9FF58B1E9FF56B0
        E9FF55AFE8FF54AEE9FF52AEE9FF52ADE8FF51ADE8FF4E9BD7FF1E4F93E80000
        0011000000040000000100000000000000000000000000000000000000000000
        000000000004000000113573B6FF82CAF1FF58B2EAFF51AEE8FF4FADE8FF4DAC
        E7FF4DABE7FF4CABE7FF4BAAE7FF4BA9E7FF4AA9E7FF49A8E6FF49A7E6FF47A8
        E6FF47A6E6FF46A6E5FF45A6E5FF45A6E6FF49A8E6FF61B7EBFF2359A6FF0000
        0014000000050000000100000000000000000000000000000000000000000000
        000000000004000000123777B8FF88CCF1FF54B1E9FF357BBFFF2866AEFF2965
        ADFF2864ADFF2864ADFF2863ADFF2762ACFF2763ACFF2762ACFF2661ACFF2661
        ABFF2560ABFF2660AAFF2560AAFF2F73BBFF46A6E5FF65B9EBFF245CA7FF0000
        0015000000050000000100000000000000000000000000000000000000000000
        000000000004000000113A7BBAFF8ED0F3FF58B3EAFF2A68AFFFF9F5F1FFF9F5
        F1FFF9F5F0FFF9F4F0FFF9F4F0FFF8F4F0FFF8F4F0FFF8F4EFFFF8F3EFFFF8F4
        EFFFF8F3EEFFF7F3EEFFF7F3EEFF2661ABFF48A7E6FF6ABBECFF255FAAFF0000
        0014000000050000000100000000000000000000000000000000000000000000
        000000000004000000103C7EBDFF93D3F3FF5BB6EAFF2B6AB0FFF9F6F3FFF6F0
        E9FFF5EFE9FFF5EFE8FFF5EFE9FFF6EEE8FFF5EEE8FFF5EEE8FFF4EEE8FFF5EE
        E7FFF4EEE8FFF5EEE7FFF8F4EFFF2763ADFF4BA9E7FF6FBFEDFF2761ABFF0000
        0013000000050000000000000000000000000000000000000000000000000000
        0000000000040000000F3E82BFFF98D5F3FF5EB8ECFF2D6CB3FFFAF7F4FFF6F0
        EAFFF6F0EAFFF6F0EAFFF5F0EAFFF9F6F3FFFBF9F6FFF8F4EFFFF5EFE9FFF5EE
        E9FFF5EFE8FFF5EEE8FFF9F5F0FF2865ADFF4DABE7FF73C1EEFF2864ADFF0000
        0013000000050000000000000000000000000000000000000000000000000000
        0000000000040000000F4285C1FF9DD9F5FF62BBECFF2E6FB4FFFBF8F5FFF7F1
        EBFFF7F0EBFFF7F0EAFFEBEDE7FF438869FF759F8BFFFAF8F5FFF7F1EAFFF5EF
        E9FFF5EFE9FFF5EFE9FFF9F6F2FF2967AFFF4FADE8FF79C4EFFF2966AEFF0000
        0012000000040000000000000000000000000000000000000000000000000000
        0000000000030000000E4388C3FFA3DCF5FF66BEEDFF2F72B5FFFBF9F6FFF7F1
        ECFFF7F1ECFFF4F2EEFF4E896EFF1FB57FFF1B744DFFDEE6E0FFF9F5F1FFF6EF
        EAFFF6EFEAFFF6F0E9FFFAF6F3FF2B6AB0FF53AFE9FF7EC7EFFF2A69B0FF0000
        0011000000040000000000000000000000000000000000000000000000000000
        0000000000030000000D468BC5FFA8DEF6FF6AC1EEFF3074B7FFFCFAF8FFF7F2
        EEFFF7F4F0FF60977EFF1EAB78FF23CE93FF1EA976FF689B84FFFBF9F6FFF8F2
        EDFFF6F0EAFFF6F1EAFFFBF8F5FF2C6CB2FF57B2EAFF84CBF1FF2C6CB1FF0000
        0010000000040000000000000000000000000000000000000000000000000000
        0000000000030000000C488FC7FFADE1F7FF6EC3EFFF3276B8FFFCFAF9FFFAF6
        F2FF75A590FF36AD84FF5BE0B9FF5ADFB8FF47DAACFF20825AFFCFDED6FFFAF7
        F4FFF7F1ECFFF7F1EBFFFBF8F6FF2D6EB4FF5AB4EAFF89CEF1FF2D6FB3FF0000
        0010000000040000000000000000000000000000000000000000000000000000
        0000000000030000000C4A92C9FFB1E3F7FF72C6F0FF3378BAFFFDFBFAFF8BB5
        A1FF38A781FF66E4C0FF4CB895FF47B390FF63E2BEFF47CEA3FF408969FFF7F8
        F4FFF9F5F2FFF7F1ECFFFCFAF7FF2E71B4FF5DB6EAFF8ED0F3FF2F72B5FF0000
        000F000000040000000000000000000000000000000000000000000000000000
        0000000000030000000B4D95CAFFB7E6F8FF76C9F0FF347CBBFFFEFCFBFF5AA5
        87FF65D1B3FF45AF8DFF88BBA5FF9CC9B5FF4FBA99FF63E3BFFF37AB83FF87B5
        A1FFFCF9F7FFF9F5EFFFFCFAF8FF3073B6FF61B9EBFF95D4F3FF3075B7FF0000
        000E000000040000000000000000000000000000000000000000000000000000
        0000000000030000000A4F98CCFFBBE8F9FF7ACCF2FF367EBCFFFEFCFCFFF2F1
        EDFF54A685FFA3CAB9FFF9F5F0FFFAF4F0FF82C0A8FF62CBADFF6AE6C5FF2C93
        6DFFC5DBD1FFFCFAF7FFFDFBFAFF6597C8FF8BCCF0FF9AD7F3FF3277B9FF4141
        414C000000050000000100000000000000000000000000000000000000000000
        0000000000020000000A529ACEFFBFE9F9FF7ECFF2FF3681BEFFFEFDFCFFFBF6
        F3FFFAF6F2FFFAF5F2FFFAF5F2FFF9F5F1FFF7F4F0FF7AC1A7FF62CAAFFF80EA
        D1FF329873FFC8DED4FFFCFBFBFF5C91C6FFB0DCF1FFB6E2F7FF679BCBFF7D7D
        7D890F345B870000000400000000000000000000000000000000000000000000
        00000000000200000009539DD0FFC4EDFAFF83D2F3FF3882C0FFFEFDFDFFFBF6
        F4FFFBF6F3FFFAF6F3FFFBF6F3FFFAF5F2FFF8F3EFFFF7F2EEFF95CCB6FF4AB5
        94FF7EDBC4FF3CA07DFFE9F0ECFF216EB9FF5E90C3FFCDE7F4FF9FBFDCFF4562
        8BC7206AB8FF0000000600000000000000000000000000000000000000000000
        0000000000020000000856A0D1FFC7EEFBFF86D5F4FF3985C2FFFFFEFDFFFBF7
        F5FFFCF7F5FFFBF7F4FFFBF7F4FFF7F1EDFFF2EBE7FFF3ECE8FFF4ECE9FFD1E1
        D6FF64BA9CFF77C1A7FFF7F6F5FF2472BCFF3183C9FF6C96C5FF5683BAFF2B7F
        C7FF226EBAFF0000000700000000000000000000000000000000000000000000
        0000000000020000000858A2D3FFCBEFFBFF8AD8F6FF3A88C3FFFFFEFEFFFCF8
        F5FFFBF7F5FFFBF6F3FFF2ECE7FFEBE1DEFFEBE2DEFFECE2DFFFF0E9E7FFF4EF
        EDFFF2EEECFFF1EFEDFFF1EFEFFF2775C0FF56B9EEFF2575C1FF216EBAFF3DAA
        EBFF2472BCFF0000000B00000006000000060000000300000001000000000000
        000000000002000000075AA4D4FFCFF1FCFF8EDBF6FF3B89C4FFFEFDFDFFFAF6
        F4FFF8F3F1FFE9E2DDFFDED2CDFFDCD0CBFFDACFCBFFDCD0CBFFE5DCD8FF8BB1
        D4FF2B7BC5FF2A7BC4FF2A7AC3FF297AC3FF45AFEDFF43AFEDFF43AEECFF42AD
        ECFF2776C0FF2675BFFF2775BFFF2674BFFF12395D8300000002000000000000
        000000000002000000065BA7D5FFD1F3FCFF92DDF7FF3C8AC4FFFCFBFBFFF3F1
        EEFFDDD3CEFFC6B8B3FFBEAFAAFFBAABA5FFB6A7A2FFB6A7A1FFCBC0BCFFDDD6
        D3FF86AACDFF5DAADEFF81CFF5FF5FBFF1FF49B3EEFF48B2EEFF48B1EEFF47B1
        EDFF46B0EDFF55B8EFFF499EDAFF143B60850000000500000001000000000000
        000000000001000000065DA9D7FFD5F4FCFF96E1F8FF4C94C7FFF2F0F0FFCEC7
        C2FFA48B82FF927063FF8B6858FF875D4FFF84594BFF82594BFF845D50FFA58A
        82FFC8BCB7FF81A7C9FF53A1DBFF66C4F2FF4FB7EFFF4EB6EEFF4DB5EFFF4CB5
        EEFF4BB4EEFF3E95D6FF153E6285000000050000000100000000000000000000
        0000000000010000000560ACD8FFD8F6FDFFACEAFAFF9AC5DFFF8C98A5FF9170
        65FFAF8D7DFFC3A898FFCCB3A2FFD4BDACFFD7C0AFFFCFB6A5FFC3A794FFC8B2
        A4FFCBB9B1FF6986ADFF3C8BCFFF69C4F2FF73CAF4FF7BCFF5FF7BCDF5FF71C9
        F4FF66C2F2FF3182CAFF0E315A87000000040000000100000000000000000000
        00000000000100000003589CC4E8BBE4F3FFD8F6FDFFDFEDF0FFA17E6FFFE6DA
        D3FFF4EFEAFFF4EDE7FFF2EBE4FFE9DDD3FFDDC9BAFFDBC5B6FFEADDD3FFF1EA
        E5FF84A7CEFF6DAADCFFC6EDFBFFC7EDFBFFABE3F9FF85D3F5FF84D3F6FF83D3
        F5FFA4E0F9FFB8E7FAFF61A2D7FF0F325C860000000400000001000000000000
        00000000000000000002182B35424E88AACA62ADD8FFA9CDE3FFAC8F83FFB087
        78FFAF8877FFAD8576FFAD8475FFEDE1D9FFE4D5C8FFE0D0C2FFB6978BFF82A3
        C2FF398FD4FF398ED4FF388ED3FF378ED2FFB4E7FAFFA5E1F9FFB7E7FAFFA4E0
        F9FF358AD0FF358ACFFF3489CFFF3488CEFF1A44688400000001000000000000
        00000000000000000001000000020000000300000003000000060000000B0000
        000E0000000E0000001281645AC2E2D1C9FFF3EDE7FFDCCBC0FF795B4FC90000
        00180000001500000016000000163A91D6FFCBEFFCFF6FB3E3FF73B4E3FFC7ED
        FBFF378ED3FF0000000700000004000000030000000200000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        00010000000100000002130F0D227E6358B7AF897CFA75584DBA120D0C230000
        00020000000100000001000000043C95D9FF8CC4EAFF1E486A831D486A838AC3
        EAFF3B92D6FF0000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000030000000500000006000000010000
        00000000000000000000000000023E98DBFF1F4B6C8100000002000000021F4A
        6B813D95D9FF0000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001204D6E800000000200000000000000000000
        00021F4B6D800000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000000000000000000000000000000000000}
      OnClick = dxBtnAgregarClick
    end
    object dxBtnEditar: TdxBarLargeButton
      Caption = '&Editar Evento'
      Category = 0
      Hint = 'Editar Evento'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000010421C11FF31140CE2190A069A0304
        07450000000E0000000200000000000000000000000000000000000000000000
        0002000000080000000C0000000D0000001B663C2BDEB9C7D2FF7889A2FF2441
        82FF051033980000001100000002000000000000000000000000000000000000
        0007295B8FBF357DC6FF337AC5FF528CC7FF696573FF879AB2FFC8E3F5FF1F66
        B6FF2B6BA8FF0512369700000010000000020000000000000000000000000000
        000A3C83CAFF8ACCF1FF66B9EBFF7AC0EAFF7AAAC9FF488BC3FFDEFEFDFF51B4
        E3FF1F68B7FF3173AEFF061538960000000F0000000200000000000000000000
        000A3F85CCFF93D1F2FF4690D2FF4F93D2FF6BA2D2FF5291C2FF479FD2FFDEFE
        FDFF59BFE9FF216BB9FF367BB3FF07173A940000000D00000002000000000000
        000A4389CEFF9CD5F3FF4A92D4FFFAF7F3FFF6F1EBFFEEE9E7FF8BB1CCFF4BA5
        D5FFDEFEFDFF61CAEFFF246FBCFF3B83B9FF08193D920000000C000000000000
        0009468CD0FFA3D9F4FF4F97D5FFFBF8F6FFF6F0EBFFF6F1ECFFEFEBE8FF8DB3
        CEFF4EAAD7FFDEFEFDFF68D4F4FF2875BEFF3F8BBEFF091B3F8F000000000000
        00094A8FD2FFABDDF5FF5399D6FFFCFAF8FFF6F1ECFFF6F0ECFFF7F1EEFFF0ED
        E8FF5695C7FF51AEDAFFDEFEFDFF6EDDF8FF2C7BC2FF18448BFF000000000000
        00084D92D3FFB2E0F7FF569CD8FFFDFBFAFFF7F2EDFFF7F1ECFFF7F1EDFFF7F2
        EFFF72A6D6FF62A3D0FF54B1DCFFDEFEFDFF4FA6D4FF102C4E89000000000000
        00075094D6FFBAE4F7FF5B9FDAFFFDFCFBFFF8F2EEFFF8F2EEFFF7F2EDFFF0E8
        E3FF639DD4FF8DC3E6FF4D8EC4FF357FBCFF173A598700000006000000000000
        00075398D7FFBFE7F9FF5EA3DCFFFEFDFDFFF8F3F0FFF8F3F0FFEDE5E0FFE2D6
        D0FF458BCCFF7FBBE6FF5890CBFF0000000D0000000300000001000000000000
        0006559AD9FFC5E9F9FF62A6DEFFFEFEFEFFF9F4F1FFEAE1DCFFDCCDC7FFDCCD
        C7FF478BCCFF67ADDEFF377BC2FF000000090000000000000000000000000000
        0006589DDAFFCAEBFAFF66A9E0FFFFFFFEFFD0BEB7FFBBA298FFBBA199FFBBA1
        98FF4081C3FF66A9DBFF377BC2FF000000080000000000000000000000000000
        00055BA0DDFFCDEDFBFF69ACE1FFAC8E83FF946C5DFF926A5CFF91685AFF9A76
        69FF3D7DC0FF65A6D8FF397CC1FF000000070000000000000000000000000000
        00034678A5C05C9FDCFF599EDCFFB38D7EFFF1E9E2FFE2D2C6FFE1D0C3FF9971
        63FF4386CAFF498DD1FF33689AC1000000040000000000000000000000000000
        0001000000030000000400000005866A5FBEB58F80FFB58F80FFB48E7FFF8569
        5EBF000000060000000600000004000000010000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00030000000B000000160000001A000000140000000D00000007000000040000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000500000015452E26FF241510DA100A0788020101340000001B000000100000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000020000
        0007000000194E382ED7A07C6FFF544649FF2A2D47F716254FB3070C1A580000
        00190000000C0000000500000002000000010000000100000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000040000000500000005000000070000
        000A00000018281D188282706CFFADCAE6FF7492BFFF425D99FF2E478AFF101E
        3F9D000000210000001100000009000000070000000500000005000000020000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000001000000040000000A000000100000001400000015000000150000
        0017000000200504033E555973F7DBE3EFFFA2C2E2FF7896C2FF536DA2FF3151
        94FF071A43A300000030000000210000001A00000017000000120000000B0000
        0004000000010000000000000000000000000000000000000000000000000000
        000000000002000000090E1F32592B62A1EA2E6AB1FF2E6AB0FF2D69AFFF2D67
        ADFF5281B9FF678BB7FF4D6DA5FF8B9FC7FFCED9E9FF2084DBFF51A9E2FF1552
        AAFF154B9EFF335592FF5E80AFFF436EABFF2256A2FF1E4F93EB09182E5B0000
        000A000000020000000100000000000000000000000000000000000000000000
        0000000000040000000F2D65A1E869AFDEFF66BAEBFF65B9ECFF62B8EBFF61B7
        EAFF5FB4E8FF77BBE4FF70A2CAFF4B6CABFFFFFFFFFF4DA3E5FF2389DFFF56AD
        E3FF1658ACFF174FA0FF406EA6FF7CB3D8FF69B3E3FF4D99D4FF1E4F92E80000
        0011000000040000000100000000000000000000000000000000000000000000
        000000000004000000113573B6FF82CAF1FF58B2EAFF51AEE8FF4FADE8FF4DAC
        E7FF4DAAE6FF55ADE4FF7CB7DEFF5A87BAFF6990C2FFC2E5F8FF50A7E6FF2791
        E0FF5DB1E5FF1A5DAFFF1953A4FF3E6EA8FF78B2D8FF75BBE5FF2358A4FF0000
        0015000000050000000100000000000000000000000000000000000000000000
        000000000004000000123777B8FF88CCF1FF54B1E9FF357BBFFF2866AEFF2965
        ADFF2864ACFF2863ACFF4979B5FF6488B7FF4578B0FF4590D0FFC7E8F8FF56AE
        E7FF2C97E1FF62B5E6FF1B62B2FF1B57A6FF3F71ABFF8ABEDCFF4472AFFF0000
        0018000000060000000100000000000000000000000000000000000000000000
        000000000004000000113A7BBAFF8ED0F3FF58B3EAFF2A68AFFFF9F5F1FFF9F5
        F1FFF9F5F0FFF8F3EFFFF7F2EEFFF2EFEBFFE7E6E3FF84A6C6FF4895D2FFCBEB
        FAFF5AB4EBFF319DE4FF67BAE7FF1E65B6FF1D5DA9FF4B7BB0FF6286B5FF0000
        001C000000070000000200000000000000000000000000000000000000000000
        000000000004000000103C7EBDFF93D3F3FF5BB6EAFF2B6AB0FFF9F6F3FFF6F0
        E9FFF5EFE9FFF5EFE8FFF4EEE8FFF4ECE6FFF0EAE6FFE6E2DEFF85A7C6FF4C9A
        D4FFCFEEFBFF60B9EDFF36A5E9FF6EBEE8FF206BB9FF2061ADFF3A64A0FF0000
        00250000000D0000000200000001000000000000000000000000000000000000
        0000000000040000000F3E82BFFF98D5F3FF5EB8ECFF2D6CB3FFFAF7F4FFF6F0
        EAFFF6F0EAFFF6F0EAFFF5F0EAFFF9F6F3FFF9F7F4FFF3F0ECFFE8E5E1FF87A9
        C9FF4F9FD7FFD3F0FCFF64BEEFFF3BABEBFF72C2EAFF2371BCFF2266AFFF0D27
        4E9A000000170000000800000002000000010000000000000000000000000000
        0000000000040000000F4285C1FF9DD9F5FF62BBECFF2E6FB4FFFBF8F5FFF7F1
        EBFFF7F0EBFFF7F0EAFFEBEDE7FF438869FF759F8BFFF8F6F3FFF2EDE7FFE9E6
        E2FF89ADCBFF52A3D8FFD6F2FCFF6AC5F0FF42B2EBFF77C6ECFF2677C0FF256B
        B4FF0E2950920000001100000007000000020000000100000000000000000000
        0000000000030000000E4388C3FFA3DCF5FF66BEEDFF2F72B5FFFBF9F6FFF7F1
        ECFFF7F1ECFFF4F2EEFF4E896EFF1FB57FFF1B744DFFDEE6E0FFF7F3EFFFF2ED
        E8FFECE8E5FF8DB1CDFF56A8DAFFD9F4FDFF89D5F6FF47BBEFFF7BCBECFF2A7D
        C1FF2871B7FF191C278F0000000F000000060000000200000000000000000000
        0000000000030000000D468BC5FFA8DEF6FF6AC1EEFF3074B7FFFCFAF8FFF7F2
        EEFFF7F4F0FF60977EFF1EAB78FF23CE93FF1EA976FF689B84FFFBF9F6FFF7F1
        ECFFF3EEE9FFEDEAE6FF90B6D3FF5AADDCFFDCF6FDFF74CFF6FF4CC0F0FF80D0
        EEFF78777BFF794A3AFF2A110B8E0000000E0000000600000002000000000000
        0000000000030000000C488FC7FFADE1F7FF6EC3EFFF3276B8FFFCFAF9FFFAF6
        F2FF75A590FF36AD84FF5BE0B9FF5ADFB8FF47DAACFF20825AFFCFDED6FFFAF7
        F4FFF6F0EBFFF4EFEAFFF1EFEEFF518EC1FF5DB0DEFFDEF8FEFF7AD6F7FF90B9
        C5FFD8C1B3FF996B59FF815141FF190D228C0000000C00000005000000000000
        0000000000030000000C4A92C9FFB1E3F7FF72C6F0FF3378BAFFFDFBFAFF8BB5
        A1FF38A781FF66E4C0FF4CB895FF47B390FF63E2BEFF47CEA3FF408969FFF7F8
        F4FFF9F5F2FFF6F0EBFFF9F8F5FF6D99C5FF61A6D4FF60B4E0FFE7F7F9FFDBC3
        B1FFCFB39FFFDBC5B8FF584B8BFF212095FF0A0A3E8B0000000B000000000000
        0000000000030000000B4D95CAFFB7E6F8FF76C9F0FF347CBBFFFEFCFBFF5AA5
        87FF65D1B3FF45AF8DFF88BBA5FF9CC9B5FF4FBA99FF63E3BFFF37AB83FF87B5
        A1FFFCF9F7FFF9F5EFFFFBF9F7FF5088C0FF8FC9E9FF88A4B8FFB58F7EFFFAF0
        E2FFDFC8B6FF9A97C5FF8791E3FF2B2EAAFF25259CFF0F0F4589000000000000
        0000000000030000000A4F98CCFFBBE8F9FF7ACCF2FF367EBCFFFEFCFCFFF2F1
        EDFF54A685FFA3CAB9FFF9F5F0FFFAF4F0FF82C0A8FF62CBADFF6AE6C5FF2C93
        6DFFC5DBD1FFFCFAF7FFFDFBFAFF3175B7FF7CC5EDFFB5DEF0FF817E8CFFBC97
        88FFF6EEE7FF8B9FEDFF6275E1FF98A2E7FF7B85D0FF272A96FF000000000000
        0000000000020000000A529ACEFFBFE9F9FF7ECFF2FF3681BEFFFEFDFCFFFBF6
        F3FFFAF6F2FFFAF5F2FFFAF5F2FFF9F5F1FFF7F4F0FF7AC1A7FF62CAAFFF80EA
        D1FF329873FFC8DED4FFFEFDFCFF4082BFFF68BFECFFADDDF5FF72A1CBFF372C
        458A6B78D4FFDBE7FCFF8BA0EEFFACC0F3FF4E57C3FF21235A84000000000000
        00000000000200000009539DD0FFC4EDFAFF83D2F3FF3882C0FFFEFDFDFFFBF6
        F4FFFBF6F3FFFAF6F3FFFBF6F3FFFAF5F2FFF8F3EFFFF7F2EEFF95CCB6FF4AB5
        94FF7EDBC4FF3CA07DFFDEECE5FF357ABAFF6CC1EEFFA4DBF4FF639BCBFF0000
        0010262A60847180DAFFDCE8FCFF6675D7FF262A608300000005000000000000
        0000000000020000000856A0D1FFC7EEFBFF86D5F4FF3985C2FFFFFEFDFFFBF7
        F5FFFCF7F5FFFBF7F4FFFBF7F4FFF7F1EDFFF2EBE7FFF3ECE8FFF4ECE9FFD1E1
        D6FF64BA9CFF77C1A7FFFBF8F7FF377BBAFF70C3EDFFAADDF4FF498CC3FF0100
        000D000000062B3166815761CEFF2C3166810000000400000002000000000000
        0000000000020000000858A2D3FFCBEFFBFF8AD8F6FF3A88C3FFFFFEFEFFFCF8
        F5FFFBF7F5FFFBF6F3FFF2ECE7FFEBE1DEFFEBE2DEFFECE2DFFFEDE3E0FFEEE5
        E1FFEEE7E3FFECE8E4FFF7F3F3FF397EB8FF74C5EBFFAEDFF5FF4C8FC5FF0100
        000B000000040000000200000002000000020000000100000000000000000000
        000000000002000000075AA4D4FFCFF1FCFF8EDBF6FF3B89C4FFFEFDFDFFFAF6
        F4FFF8F3F1FFE9E2DDFFDED2CDFFDCD0CBFFDACFCBFFDCD0CBFFDED2CDFFDED4
        D0FFE2D8D3FFE6DDD8FFEDE9E6FF3C7EB6FF78C4E9FFB2DFF2FF4F92C7FF0100
        000B000000020000000000000000000000000000000000000000000000000000
        000000000002000000065BA7D5FFD1F3FCFF92DDF7FF3C8AC4FFFCFBFBFFF3F1
        EEFFDDD3CEFFC6B8B3FFBEAFAAFFBAABA5FFB6A7A2FFB6A7A1FFBAABA6FFC0B2
        ADFFC9BBB7FFD3C7C1FFDED6D3FF3E7AABFF7AC1E1FFB3DFEEFF5095C9FF0000
        0009000000020000000000000000000000000000000000000000000000000000
        000000000001000000065DA9D7FFD5F4FCFF96E1F8FF4C94C7FFF2F0F0FFCEC7
        C2FFA48B82FF927063FF8B6858FF875D4FFF84594BFF82594BFF845D50FF8764
        59FF977E75FFB5A7A2FFC9BCB7FF4D78A0FF7BB9D3FFB6DDEEFF5398CAFF0000
        0008000000020000000000000000000000000000000000000000000000000000
        0000000000010000000560ACD8FFD8F6FDFFACEAFAFF9AC5DFFF8C98A5FF9170
        65FFAF8D7DFFC3A898FFCCB3A2FFD4BDACFFD7C0AFFFCFB6A5FFC3A794FFB597
        85FF9B7666FF7C5B4FFF787A81FF8398A8FF89BCD0FFB8DEECFF559ACBFF0000
        0007000000020000000000000000000000000000000000000000000000000000
        00000000000100000003589CC4E8BBE4F3FFD8F6FDFFDFEDF0FFA17E6FFFE6DA
        D3FFF4EFEAFFF4EDE7FFF2EBE4FFE9DDD3FFDDC9BAFFDBC5B6FFE3D1C4FFE8DA
        D0FFE5D6CAFFD1BCAFFF845E51FFB7BEBEFFB4D1DBFFA2CEE2FF4F8EB9E80000
        0005000000010000000000000000000000000000000000000000000000000000
        00000000000000000002182B35424E88AACA62ADD8FFA9CDE3FFAC8F83FFB087
        78FFAF8877FFAD8576FFAD8475FFEDE1D9FFE4D5C8FFE0D0C2FF9E7564FF9E75
        62FF9D7462FF9B7361FF997669FF9CB7CAFF5899C5FF477DA1CD162833450000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000000000001000000020000000300000003000000060000000B0000
        000E0000000E0000001281645AC2E2D1C9FFF3EDE7FFDCCBC0FF795B4FC90000
        0017000000130000001300000011000000080000000500000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        00010000000100000002130F0D227E6358B7AF897CFA75584DBA120D0C230000
        0002000000010000000100000001000000010000000100000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000030000000500000006000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnEditarClick
    end
    object dxBtnEliminar: TdxBarLargeButton
      Caption = 'Eli&minar Evento'
      Category = 0
      Hint = 'Eliminar Evento'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000A00000010000000090000000200000000000000000000
        00020000000A000000120000000C000000030000000000000000000000000000
        00020000000F0F0742921D0F7EEF0603347A0000000E00000002000000020000
        000F0804347C1D0F7EF00F084194000000120000000200000000000000000000
        0008120B47923233AFFF3648CCFF1D1EA5FF0603357A0000000F0000000F0703
        357C1F20A5FF3747CCFF2D2FAEFF120B46950000000B00000000000000000000
        000C281C8DF1596CD8FF3B51D3FF3A4FD2FF1E22A6FF0602347D0502357E2022
        A6FF3A50D3FF3A50D3FF4C5FD4FF291D8CF10000001000000000000000000000
        0006130F3C734D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
        D7FF415AD7FF5B72DEFF484AB8FF130F3C790000000900000000000000000000
        00010000000A16123F73585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
        DBFF6983E3FF5356C0FF16123F780000000C0000000200000000000000000000
        0000000000010000000A191643755D63C7FF6783E5FF5774E2FF5774E2FF5774
        E2FF565CC6FF1916437A0000000D000000020000000000000000000000000000
        00000000000100000009100E3D734A50BEFF7492EBFF6383E7FF6483E7FF6383
        E7FF3840B6FF0B0839780000000C000000020000000000000000000000000000
        0001000000071413416E555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
        EEFF7796EDFF414ABCFF0E0C3C730000000A0000000100000000000000000000
        00041818456B636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
        F8FF83A3F2FF83A1F1FF5058C4FF121040710000000600000000000000000000
        00065759C3EFAFC6F6FF8EADF4FFABC4F8FF6F76D0FF1817456F24244F70868E
        E1FFB5CCF9FF8DACF4FFA1B8F4FF5758C3EF0000000900000000000000000000
        000331326B8695A0EAFFC0D3F9FF7880D7FF1C1C496B00000006000000072527
        526C8B93E6FFC1D3F9FF949EE9FF303168870000000500000000000000000000
        00010000000431336B825E62CBEC1F204D680000000500000001000000010000
        00052728536B5E62CBEC31326883000000070000000100000000000000000000
        0000000000000000000200000004000000020000000100000000000000000000
        0001000000030000000500000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000006000000060000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000006000000060000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000100000002000000070000000F00000017000000170000
        0010000000070000000200000001000000000000000000000000000000000000
        0000000000000000000100000002000000070000001100000018000000180000
        0011000000080000000300000001000000000000000000000000000000000000
        0000000000010000000200000008000000150E0A2F682A1E8CEC2A1E8DEE0605
        2C6C000000160000000800000002000000010000000000000000000000000000
        00000000000100000002000000090000001706052C6E271B8AEF271A88EC0D09
        2E6B000000170000000900000002000000010000000000000000000000000000
        0000000000010000000600000014100C3370312DA6FE2A33BBFF2A34BCFF1B1B
        98FE080632780000001600000009000000020000000100000000000000000000
        00010000000200000009000000180705327A1D1D99FE262FB9FF252EB8FF2B25
        A1FE0E0A32730000001700000007000000020000000000000000000000000000
        0001000000030000000E0F0C30673631A9FE2C39C1FF2B37C0FF2B37BFFF2B37
        BEFF1C1E9BFE0806327800000016000000090000000200000001000000010000
        000200000009000000170705327A1F209DFE2733BCFF2733BDFF2732BEFF2732
        BDFF2D27A3FE0E0A2F6A00000010000000030000000100000000000000000000
        00010000000500000014362C95EB3F4AC6FF2F3BC2FF2E3BC2FF2E3AC2FF2D3A
        C2FF2D39C0FF1D1F9CFE08063278000000160000000900000003000000030000
        0009000000160706327920219DFE2A36BEFF2A35BFFF2936BFFF2A36BEFF2935
        BFFF2C35BCFF322792EC00000016000000050000000100000000000000000000
        000100000005000000143B309CF05B67D1FF3B48C8FF313DC4FF313DC3FF303D
        C3FF303DC3FF303BC2FF1E209CFE07063277000000160000000A0000000A0000
        00160806327821229DFE2D39C0FF2D39C1FF2D38C0FF2C38C0FF2C37C0FF2C37
        C0FF4753C8FF372B98F100000017000000050000000100000000000000000000
        0001000000030000000D14113C734E4DB9FF606FD6FF3D49C9FF3440C5FF3340
        C5FF333FC4FF333FC5FF333EC3FF1F219DFE070632770000001B0000001B0806
        327823249EFE303CC2FF303CC3FF303CC3FF2F3CC3FF2F3CC3FF2E3BC2FF4D5A
        CDFF4643B3FF130F3A760000000F000000040000000100000000000000000000
        00000000000100000006000000121713437C5354BDFF6674D8FF404CCCFF3643
        C7FF3643C7FF3643C7FF3542C6FF3540C5FF20229EFE0705327D0705327D2325
        9FFE343FC4FF3340C5FF3240C5FF323FC5FF333EC4FF323EC4FF5361D0FF4C4C
        B8FF1511417F0000001500000007000000010000000000000000000000000000
        0000000000010000000200000007000000121814447C5759BFFF6A7ADAFF4250
        CDFF3946C9FF3846C9FF3945C8FF3845C8FF3844C7FF21239EFE21239EFE3742
        C6FF3643C7FF3643C7FF3542C7FF3543C7FF3542C6FF5967D2FF5151BBFF1612
        427F000000150000000800000002000000010000000000000000000000000000
        000000000000000000010000000200000007000000121815457C5B5DC2FF707F
        DDFF4553CFFF3C49CAFF3C49CAFF3B48CAFF3B48C9FF3B47C9FF3A47C9FF3A47
        C9FF3947C9FF3946C9FF3846C8FF3845C8FF5F6DD5FF5556BEFF1713437E0000
        0014000000080000000200000001000000000000000000000000000000000000
        00000000000000000000000000010000000200000007000000121916457B5E61
        C4FF7484DFFF4856CFFF3F4CCCFF3E4CCCFF3D4CCCFF3D4BCCFF3E4BCBFF3D4A
        CBFF3D4ACBFF3D4ACBFF3C49CBFF6574D8FF595BC1FF1815447D000000130000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000006000000111A17
        467A6265C7FF7989E0FF4B59D1FF4250CEFF424FCEFF414FCEFF414ECDFF404D
        CEFF3F4ECDFF3F4DCCFF6A7ADBFF5D5FC3FF1915457C00000013000000070000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000080000
        00151B18487E5C5FC6FF505DD4FF4552D0FF4552D0FF4452D0FF4351CFFF4352
        CFFF4351CFFF4452CFFF5558C2FF1A1746800000001700000009000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000070000
        00140B0934733132A9FE4857D2FF4857D3FF4756D3FF4755D2FF4755D2FF4655
        D1FF4654D2FF4554D1FF292AA4FE090732750000001600000008000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000050000000E0C0A
        356D3739ACFE5D6BD9FF6775DBFF6976DDFF6B79DDFF6E7CDDFF6D7BDDFF6875
        DCFF6371DAFF5F6ED9FF5564D6FF2F30A7FE0A08336F00000010000000060000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000050000000E0D0C366B4647
        B3FD7987E1FF7987E2FF7886E1FF7885E1FF7684E0FF7583E0FF7381E0FF7280
        DFFF707DDFFF6E7CDEFF6D7BDDFF6977DCFF3A3BABFE0C09346E000000100000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000050000000D0F0D386A4B4CB6FD808E
        E3FF808EE4FF7F8DE4FF7E8CE4FF7E8BE3FF7C8AE3FFA0B0EDFFA4B4EEFF7F8C
        E4FF7683E1FF7483E0FF7280E0FF717FDFFF6E7BDDFF3F40B0FE0D0B366D0000
        000F000000060000000200000001000000000000000000000000000000000000
        00000000000000000001000000040000000C100F396A5051BAFD8694E6FF8795
        E7FF8694E6FF8593E6FF8592E6FF8491E6FFA6B7EFFF7B80D5FF7B80D5FFAABB
        F0FF8491E6FF7B89E3FF7886E2FF7684E2FF7482E1FF717FE0FF4445B4FE0F0E
        386C0000000E0000000500000001000000000000000000000000000000000000
        000000000001000000030000000A12113B685658BEFD8C9AE8FF8D9BE9FF8D9A
        E9FF8C9AE9FF8C99E8FF8A98E8FFACBDF2FF7F84D8FF201F4D79201E4D797E84
        D6FFAEBFF2FF8795E7FF7E8DE5FF7C8AE3FF7A88E3FF7785E2FF7483E1FF474A
        B8FD110F396B0000000D00000005000000010000000000000000000000000000
        00000000000200000007121138605A5CBFFD93A0EBFF93A1EBFF93A1EBFF92A0
        EBFF929FEAFF919FEAFFB1C3F3FF8288DAFF211F4E7400000010000000102120
        4E758187D9FFB1C2F3FF8B99E9FF818FE6FF7F8EE5FF7D8CE5FF7A89E4FF7886
        E2FF4B4EBCFD1210386300000009000000020000000000000000000000000000
        00000000000302020510605FBBF1A1ACECFF99A7EDFF99A7EDFF99A7EDFF98A6
        EDFF97A5ECFFB6C8F5FF848BDCFF21214F730000000C00000006000000060000
        000C21204F748389DAFFB5C5F4FF8E9CEBFF8593E7FF8291E7FF808FE7FF7D8C
        E6FF7B89E3FF615EBCF402020513000000030000000000000000000000000000
        0000000000020202030C7C7CD3F7BCCDF6FFA4B1F0FF9EACEFFF9EACEFFF9DAC
        EEFFBBCCF6FF878EDDFF232251730000000B0000000400000001000000010000
        00040000000B22214F73848BDCFFB8C8F5FF919FEBFF8796E8FF8594E9FF8391
        E7FFA6B7F0FF7775CFF70101030F000000030000000000000000000000000000
        00000000000100000006252555728C94E1FFC4D5F8FFAAB8F1FFA5B3F0FFBFD1
        F8FF8A91DFFF232352710000000A000000040000000100000000000000000000
        0001000000040000000B23225073878EDDFFBACBF6FF95A3ECFF8B9AEBFFB0C2
        F4FF868DDDFF2322537500000008000000020000000000000000000000000000
        000000000001000000030000000828285A788C94E2FFD1E4FBFFD1E4FBFF8A92
        E0FF252555730000000900000003000000010000000000000000000000000000
        000000000001000000040000000A23235172878FDFFFCDE0FAFFCCDFFAFF878F
        DEFF2626587B0000000B00000004000000010000000000000000000000000000
        0000000000000000000100000003000000072626536E8485D9F78385D9F72424
        516C000000080000000300000001000000000000000000000000000000000000
        0000000000000000000100000004000000092323506D8181D6F78080D6F72323
        52710000000A0000000400000001000000000000000000000000000000000000
        0000000000000000000000000001000000020000000500000007000000070000
        0005000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000030000000600000009000000090000
        0007000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000002000000020000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnEliminarClick
    end
    object dxBtnListado: TdxBarLargeButton
      Caption = '&Listar Retardos/Inasistencias'
      Category = 0
      Hint = 'Listar Retardos/Inasistencias'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A0000000F000000110000001100000011000000100000
        000B000000030000000000000000000000000000000000000000000000090000
        000E000000168A6559C3BF8D7BFFBF8D7BFFC08D7BFFBF8D7BFFC08D7BFF8A65
        58C500000019000000100000000A0000000200000000000000007B5143C0A76E
        5BFFA06855FFC2917FFFF7F0ECFFF7EFECFFF7F0EBFFF6EFEBFFF6EFEAFFC291
        7FFF875746FF8B5948FF623F33C20000000A0000000000000000BB7E6BFFECD9
        CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFF8F1EDFFC495
        83FFE2CCBCFFE6D1C1FFB67764FF0000000E0000000000000000BE8571FFF1E5
        DAFFEBDACFFF794734FF794734FF784734FF784734FF784734FF784734FF7847
        34FFECDACEFFEBDBCFFFBA7C69FF0000000D0000000000000000C28B78FFF5EE
        E7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7
        DEFFF2E7DDFFF2E5DEFFBD836FFF0000000C0000000000000000C7937FFFFAF4
        F1FFCDBEB9FF72564AFF624338FF614036FF604035FF5F3F34FF5F3E33FF6E4F
        47FFCCBDB6FFF7F0ECFFC18A76FF0000000A0000000000000000CC9986FFFDFA
        FAFF806256FF745043FF744F43FF744E43FF734E42FF724D42FF724C41FF724C
        40FF7A5C50FFFCF8F6FFC5917CFF000000090000000000000000BB9080E9F5EB
        E6FF7D5C4DFF564BADFF3737D1FF3334CDFF3131CBFF2F2FC9FF2B2BC5FF2929
        C4FF2626C2FF2425BFFF2222BCFF2020BBFF1E1EB8FF14147CAD34292444A681
        72CC886857FF3C3DD3FFFAF6F6FF3636D0FF3233CCFF3030CAFFF8F2F1FFF7F2
        EFFF6B69D1FF2526C2FFF6EEEBFF2121BCFF1F1FBBFF1D1EB9FF000000010000
        00030000000C3E3ED4FFFBF7F6FF3738D2FF3536D0FF3232CCFFF8F4F2FF2D2E
        C7FFF7F2EFFF2728C2FFF6F0ECFF2223BDFF2121BCFF1E1EB9FF000000000000
        0000000000084040D7FFFBF8F7FFFBF7F6FF7574DCFF3435CDFFF9F5F2FF2F2F
        CAFFF8F3F0FF292AC4FFF6F1EEFFF6EFECFF2222BDFF2020BBFF000000000000
        0000000000064042D9FFFCF8F8FF3C3CD3FFFBF7F6FF3637D0FFFAF5F3FF3030
        CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526C2FF2323BFFF2121BCFF000000000000
        0000000000044243D9FFFBFAF9FFFCF8F8FF7878DFFF3838D2FFFAF7F5FFFAF5
        F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2EFFFF6F0EDFF2222BDFF000000000000
        0000000000012E2E94AE4242D8FF4040D7FF3D3ED4FF3A3AD3FF3737D0FF3435
        CDFF3132CBFF2F2FC9FF2B2CC7FF292AC4FF2727C2FF181982AD000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        0004000000050000000500000005000000050000000500000005000000060000
        0006000000060000000600000006000000050000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000001000000010000000100000002000000060000000B0000
        0010000000120000001300000013000000140000001400000015000000150000
        0015000000160000001600000016000000140000000F00000007000000030000
        0001000000010000000100000001000000000000000000000000000000010000
        000100000002000000050000000500000006000000080000000F7B5A4DC4A578
        67FFA57767FFA57767FFA47666FFA47665FFA37565FFA37565FFA37564FFA373
        63FFA27363FFA27262FFA17262FFA17262FF775448C6000000140000000A0000
        0008000000060000000600000003000000010000000100000000000000010000
        00040000000A0000001100000015000000160000001B00000025A97C6BFFF8F0
        EDFFF7F0EDFFF7F0EDFFF7F0ECFFF7F0EBFFF6EEE8FFF6EEE8FFF5EDE8FFF5ED
        E8FFF5ECE7FFF6EDE7FFF5ECE7FFF5ECE6FFA37364FF00000034000000280000
        00230000001F000000170000000D000000050000000100000000000000020000
        000A2D1F1B598D6454EA9B6C5CFF9B6B5CFF976958FF8E6151FFAC8070FFF9F3
        EFFFDFAE75FFDEAE75FFDEAE76FFDEAE74FFDCA76CFFDAA164FFDAA063FFD9A0
        62FFD89F61FFD99E5FFFD89D5FFFF4E9E2FFA57767FF724538FF794A3CFF7E4E
        3FFF835242FF7A4D3FEC2618135F0000000D0000000300000001000000040000
        000F996F60EFC39F8DFFCBAB9AFFDCC5B4FFD8C0B0FFCEB6A4FF996C5AFFF9F5
        F2FFE1B37CFFE5BC87FFE5BD88FFE5BB86FFE4B881FFDFAE73FFDFAD72FFDFAC
        70FFDFAB6EFFDEAA6CFFD89E5FFFF4EAE3FFA87A69FFBEA28DFFC8A995FFD0B3
        9FFFC4A18FFFC09B89FF936758F0000000150000000500000001000000040000
        0011A67A69FFC8A797FFCDAF9EFFDFCABBFFDAC3B4FFDFCEC2FFA87B6BFFFAF6
        F3FFE2B782FFE7C18EFFE8C08FFFE7C08DFFE7BE8AFFE2B379FFDFAF74FFDFAE
        72FFDFAD70FFDEAC6FFFD99F61FFF4EBE5FFA97D6DFFD0BAABFFC7A692FFD0B4
        A0FFC3A290FFC5A493FF9F6F5FFF000000180000000700000001000000040000
        0011A87B6BFFCBAB9BFFD0B3A4FFE3D0C3FFDFCABBFFA37D6CFFAB7F6FFFFAF7
        F5FFE5BD88FFE8C493FFE9C596FFE8C493FFE8C392FFE5BA84FFE0B076FFE0B0
        74FFE0AE72FFDFAD70FFD9A062FFF5ECE7FFAD8071FF9E7766FFCEB3A0FFD7BE
        ADFFC8A897FFC9A898FFA07160FF000000190000000600000001000000040000
        0010AA7E6DFFCEB0A1FFD3B8AAFFE7D7CCFFE5D3C6FF966C5BFF7A4835FF7A48
        36FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4836FF7A4836FF7A4835FF7A4835FF7A4835FF966C5BFFE5D3C7FFE7D7
        CBFFD3B8AAFFCEAFA1FFA17261FF000000180000000600000001000000040000
        000FAC806FFFD1B6A7FFD6BEB1FFEBDDD5FFE8D9CEFFE8D9CFFFE8D9CFFFE8DA
        CEFFE8D9CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACFFFE8D9CFFFE8D9CFFFE8DA
        CEFFE8D9CFFFE8DACFFFE8D9CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACEFFEBDE
        D5FFD6BEB1FFD1B6A8FFA37463FF000000170000000600000001000000030000
        000EAE8272FFD4BBAFFFDAC4B9FFEFE5DDFFECE0D7FFECE0D7FFECE0D7FFECE0
        D8FFECE0D7FFECE0D8FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
        D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFEFE5
        DDFFDAC4B9FFD4BBAFFFA47665FF000000160000000500000001000000030000
        000DAF8474FFD8C1B7FFDECBC1FFF4EBE6FFF0E7E0FFF1E8E2FFF5EFEAFFF6F2
        EDFFF7F3EEFFF7F3EFFFF7F3EFFFF7F3EEFFF7F3EEFFF7F3EFFFF7F3EEFFF7F3
        EFFFF7F3EFFFF7F3EFFFF7F2EFFFF6F1EEFFF5EFE9FFF1E8E2FFF0E6DFFFF3EB
        E6FFDECBC0FFD8C1B7FFA67867FF000000150000000500000001000000030000
        000CB28978FFDCC7BEFFE1D0C8FFF6F1ECFFF5EEEAFFE8E2DEFF8C7972FF654D
        45FF553C32FF553A32FF553B32FF543A31FF543A32FF543931FF523930FF5238
        30FF523830FF52372FFF51372EFF614941FF88766FFFE7E1DDFFF5EEE9FFF6F1
        EDFFE1D0C8FFDCC7BDFFA87C6BFF000000140000000500000001000000030000
        000BB68D7DFFDFCCC4FFE4D5CEFFF9F5F2FFE0D8D4FF674E44FF674A40FF6B4E
        44FF6D4F45FF6E4F45FF6E4F45FF6D4F45FF6D4F45FF6D4F45FF6E4F45FF6D4F
        45FF6D4F45FF6D4F45FF6D4F45FF6C4D43FF65483EFF614840FFDFD7D3FFF9F5
        F2FFE4D5CEFFDFCCC4FFAC8070FF000000130000000500000000000000020000
        000AB99281FFE2D1CBFFE8DAD4FFFBF9F7FF907F78FF6B4F45FF715449FF7153
        49FF715349FF705349FF715449FF71534AFF715349FF71544AFF715349FF7153
        49FF715449FF705349FF715449FF70534AFF715349FF684D42FF8B7973FFFBF9
        F7FFE8DAD4FFE2D1CBFFAF8575FF000000110000000400000000000000020000
        0009BC9787FFE5D6CFFFEBDFD9FFFDFCFAFF6C554AFF896B5FFF8D6F63FF9172
        65FF967769FF957668FF97796AFF9C7E6FFF9E7F70FF9E7F70FF9E7F70FF9E7F
        70FF9E7F70FF9D7D6EFF97796AFF957669FF967869FF8F7163FF7F6558FFFDFC
        FAFFEBDFD9FFE5D6CFFFB38B7BFF000000100000000400000000000000020000
        0007B59283F1E5D6D0FFECE1DDFFFEFDFCFF6E5649FFB19280FFB29381FFB293
        81FFB39381FFB29381FFB29381FFB29381FFB29381FFB29381FFB29281FFB392
        81FFB29381FFB29381FFB29281FFB29381FFB29381FFB39281FFAA8B79FFFEFD
        FCFFECE1DDFFE1D3CDFFAE897AF40000000D0000000400000000000000010000
        0005846C61AFDDCAC2FFEEE4E1FFFEFEFEFF7F6759FFC4A490FF715349FF7053
        49FF715249FF705348FF705248FF705248FF705248FF705248FF6E5147FF6E50
        46FF6E5046FF6E5045FF6D5045FF6D4F45FF6D4F45FFC6A592FFC5A490FFFEFE
        FEFFEEE4E1FFBDACA6FF80665CB50000000A0000000200000000000000010000
        00031E19172DBFA296F0E1D0C8FFF9F5F3FF866E5FFFC8A994FFA97C6BFFF2EA
        E5FFEEE2DBFFEDE2DAFFEDE1DAFFEDE1DBFFECE0D9FFECE0D9FFEDE0D9FFEDDF
        D8FFECDFD8FFECDED8FFECDED7FFF0E5E0FFA37364FFC4A691FFD2B29BFFF0EC
        ECFFC9BAB4FF6C554DF11F191736000000050000000100000000000000000000
        00010000000315121020856F67ABB59789E58E786AFF937D71FFAD8272FFF4EC
        E8FFEFE4DEFFEFE3DEFFEFE4DDFFEEE3DDFFEEE2DDFFEEE3DCFFEEE2DCFFEDE2
        DBFFEEE2DBFFEDE1DAFFEDE1DBFFF1E7E2FFA67969FF8F796EFF998275FF735C
        53E654443DAE0B09072700000006000000020000000000000000000000000000
        0000000000010000000200000004000000050000000A00000015B18876FFF4EF
        EBFFF1E7E1FFF1E6E1FFF0E6E0FFF0E5E1FFEFE5E0FFF0E5DFFFF0E5DEFFEFE4
        DEFFEFE4DEFFEEE4DEFFEFE3DDFFF3E9E5FFAB7E6EFF0000001F000000100000
        000A000000070000000400000002000000010000000000000000000000000000
        000000000000000000000000000100000001000000040000000EB68D7EFFF6F1
        EEFFF2E9E4FFF2E9E5FFF2E9E3FFF8F4F1FFF9F4F1FFF8F3F1FFF8F3F1FFF8F3
        F1FFF8F3F0FFF8F3F0FFF8F3F0FFFAF6F4FFD7C2BAFF00000016000000070000
        0003000000010000000100000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000030000000CBB9484FFF9F4
        F0FFF4ECE8FFF3EBE8FFF3EBE7FFF9F5F3FF6766C4FF2B2BAFFF2929ADFF2727
        ACFF2524A9FF2322A6FF2220A5FF201EA3FF1E1CA1FF1D1A9FFF1B189DFF1917
        9BFF18149AFF171398FF100D6CB7000000000000000000000000000000000000
        000000000000000000000000000000000000000000030000000BBF998AFFF9F5
        F3FFF6EFEBFFF6EEEBFFF5EEEBFFFAF7F5FF3031B4FF585EDAFF4A4FD6FF474B
        D4FF4549D2FF4245D1FF4042CFFF3D3FCEFF3A3CCCFF383ACBFF3637C9FF3435
        C8FF3333C7FF3131C6FF171399FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000009C3A08FFFFAF7
        F5FFF7F1EEFFF7F1EEFFF6F0EDFFFBF8F6FF3133B7FF5C62DDFFFAF6F6FF4A4F
        D6FF474CD4FF4549D2FFF8F2F1FFF7F2EFFF7978D8FF3B3DCDFFF6EEEBFF3637
        C9FF3435C8FF3233C7FF18159AFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000008C7A495FFFBF8
        F7FFF8F4F1FFF9F3F1FFF9F3F0FFFCF9F8FF3436B9FF6066DEFFFBF7F6FF4D53
        D8FF4A50D6FF484CD5FFF8F4F2FF4246D1FFF7F2EFFF3D40CDFFF6F0ECFF383A
        CAFF3638C9FF3435C8FF1A189CFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000007CAA99AFFFDFA
        F8FFFAF6F4FFFAF6F4FFF9F6F4FFFCFAF9FF3638BCFF646BE0FFFBF8F7FFFBF7
        F6FF8587E1FF4A50D6FFF9F5F2FF454AD3FFF8F3F0FF3F43CFFFF6F1EEFFF6EF
        ECFF383ACBFF3638C9FF1D1A9EFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000005CDAD9FFFFDFB
        FBFFFDFBFAFFFDFBFAFFFDFBF9FFFEFDFDFF383BBEFF6770E3FFFCF8F8FF535A
        DBFFFBF7F6FF4E54D8FFFAF5F3FF484CD4FFF8F3F1FF4247D1FFF7F1EFFF3D40
        CEFF3A3DCDFF383ACAFF1E1CA0FF000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000039A8378BFCFB0
        A2FFCEB0A1FFCEB0A1FFCEAFA1FFE7D8D0FF3A3DC1FF6A73E4FFFBFAF9FFFCF8
        F8FF898DE4FF5057DAFFFAF7F5FFFAF5F4FF8183DEFF454AD3FFF8F2F0FFF7F2
        EFFFF6F0EDFF3B3DCCFF201FA3FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0004000000040000000500000005000000053C40C3FF6E76E5FF6B74E4FF6870
        E3FF646CE1FF6067E0FF5D63DDFF585FDBFF555BD9FF5157D7FF4D52D6FF4A4F
        D4FF474BD2FF4347D0FF2221A5FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000012E3191BD3D41C3FF3B3EC2FF393C
        C0FF383ABDFF3538BCFF3437B9FF3234B8FF3032B5FF2E2FB3FF2C2DB1FF2A2B
        AEFF2828ACFF2626AAFF1B1B7CBD000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnListadoClick
    end
    object dxBtnAbrir: TdxBarLargeButton
      Caption = '&Mostrar Eventos'
      Category = 0
      Hint = 'Mostrar Eventos'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0002000000090000000E0000000F0000000F0000000F00000010000000100000
        00100000001100000011000000100000000B0000000300000000000000000000
        0008285B8FC0357DC6FF327AC4FF3077C2FF2D75C1FF2B73C0FF2870BEFF266E
        BDFF256DBCFF226BBBFF216AB9FF154B84C20000000A00000000000000000000
        000C3C82CAFF77C2EEFF64B7EAFF61B5EAFF5DB4E9FF5AB2E8FF58B0E7FF54AF
        E7FF51ACE7FF50ABE6FF4DAAE6FF216ABAFF0000000F00000000000000000000
        000C3F85CBFF80C7EFFF3F8BCBFF3C88CBFF3986C8FF3583C7FF3381C6FF307F
        C4FF2F7FC4FF2D7DC3FF50ACE7FF246CBBFF0000000F00000000000000000000
        000B4288CDFF88CBF0FF4490CEFFF3ECEAFFEDE6E4FFEFEAE7FFE6E1DEFFE9E4
        E1FFECE5E1FF3181C5FF55AFE7FF256EBDFF0000000F00000000000000000000
        000B458BD0FF91D0F1FF4A95D1FFF5F1EFFFEFECE9FFA8B7AFFF125838FF6688
        77FFE7E2DFFF4D91CDFF59B1E8FF2971BEFF0000000E00000000000000000000
        000A498ED2FF99D4F3FF65A5D8FFF5F3F2FFAEBFB5FF1E825BFF2EE1AAFF1574
        4FFFA2B0A7FF8BB5DAFF63B6E9FF2B73C0FF0000000D00000000000000000000
        00094C92D3FFADDDF5FFA3C8E6FFB6C9C0FF258863FF40ECB9FF38ECB7FF2BD1
        9CFF236749FF87ACC6FF95CCEDFF2F76C2FF0000000D00000000000000000000
        00094E95D5FFB8E1F7FF84B2BEFF34906CFF5EF2C9FF71F9D7FF77F7D7FF41EB
        B9FF23B081FF326D5FFFA7CDE3FF6499D1FF0000000C00000000000000000000
        00085397D7FFBEE4F7FF78AFB3FF4AAA89FF77DBBEFF419E7EFF237956FF6ADF
        C1FF41E9B8FF1D9A6FFF52867FFF92B4D6FF0000000D00000000000000000000
        0007559AD9FFC5E8F9FFAFD2ECFFA3C5B7FF52967BFF98B8A9FFC5D1CBFF408D
        6FFF6DE1C3FF48ECBDFF18855CFF5B8891FF0000001500000001000000000000
        0007589DDAFFBDE6F9FF84BCE4FFF8F8F8FFF0F0EEFFEEEEECFFEDEBEAFFD1D9
        D4FF3D896BFF62D0B3FF66EFCCFF1C6F4DFF0000001B00000002000000000000
        00065B9FDCFFC2E7F7FF6AA6D2FFA5A3A1FF7D7976FF645E5DFF696462FFABA8
        A8FFB2B7B3FF3B826DFF359170FF6D95A5FF0000001300000000000000000000
        00055DA1DEFFC5E6F5FF767C80FFB3AEACFFD2CDCAFFE5E0DDFFCFC6C1FFB8AF
        AAFFC1BEBDFFA6ABAFFFC3D9E6FF9BBDDEFF0000000A00000000000000000000
        00034778A6C05DA0DBFF918987FF8D8682FF88817FFFD0CCCAFFC8C3C1FF6C66
        64FF76726FFF837F7DFF5C95CBFF4E7BA6CA0000000500000000000000000000
        00010000000300000004000000050000000525232243716C6ACA605B59CA1D1B
        1B44000000060000000600000006000000040000000100000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000020000000500000005000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000070000000700000007000000060000
        0005000000030000000100000001000000000000000000000000000000000000
        00000000000000000001000000040000000B0000001200000016000000180000
        0018000000180000001800000018000000180000001800000018000000190000
        0019000000190000001900000019000000190000001A0000001A000000180000
        00140000000C0000000500000001000000000000000000000000000000000000
        000000000001000000020000000A0B1C305A22579AEB265FAAFF255EA9FF245D
        A8FF245CA7FF245BA7FF235AA7FF235AA6FF2258A5FF2257A5FF2256A4FF2156
        A4FF2155A4FF2055A2FF2053A2FF2052A1FF1F52A1FF1F52A1FF1F50A0FF1C49
        91EB09172D5D0000000B00000003000000010000000000000000000000000000
        0000000000010000000400000011275B9CE869AEDEFF6EC1EEFF6CBFEEFF6BBE
        EDFF69BDEDFF68BDECFF66BBECFF64BAECFF63BAECFF62B9EBFF60B7EBFF5FB7
        EBFF5DB6EBFF5CB5EAFF5AB4EAFF59B3EAFF57B2E9FF56B2E9FF55B0E9FF4B99
        D6FF1B4890E90000001300000005000000010000000000000000000000000000
        00000000000100000005000000142E6AB1FF87CDF2FF67BDEDFF60BAEBFF5FB8
        ECFF5EB8ECFF5DB7EBFF5CB7EBFF5AB6EBFF5AB4EAFF59B4EAFF57B4EAFF57B3
        E9FF56B2EAFF55B1E9FF54B0E9FF53B0E8FF52AFE9FF51AEE8FF52AFE8FF63B8
        EBFF2053A1FF0000001700000005000000010000000000000000000000000000
        0000000000000000000500000014316DB2FF8CD1F2FF65BDECFF397EC0FF2865
        ADFF2863ACFF2763ACFF2762ABFF2660AAFF265FAAFF265EA9FF255EA8FF255D
        A8FF245CA7FF245BA7FF245AA6FF2259A6FF2358A4FF3070B7FF53B0E9FF67BA
        ECFF2154A3FF0000001700000006000000010000000000000000000000000000
        00000000000000000005000000133371B4FF91D3F3FF69BFEEFF2A69AFFFFCFA
        F8FFFAF5F1FFF9F5F1FFF9F5F1FFF9F5F1FFF9F5F0FFF9F5F0FFF8F4EFFFF8F3
        EFFFF8F3EFFFF9F4F0FFF9F4EFFFF9F4EFFFF9F4EFFF2359A5FF56B2EAFF6CBE
        EDFF2256A4FF0000001600000006000000010000000000000000000000000000
        00000000000000000005000000123573B6FF96D6F3FF6CC2EEFF2B6CB2FFFCFA
        F8FFF5EDE5FFF4EDE5FFF4EDE4FFF4EDE4FFF3EBE2FFF2EAE1FFF0E7DFFFF0E7
        DEFFF0E8DEFFF2E9E1FFF3EAE1FFF4EAE0FFF9F4EFFF245CA8FF58B4EAFF70C1
        EEFF2359A6FF0000001600000005000000010000000000000000000000000000
        00000000000000000004000000123777B8FF9CDAF5FF6FC5EFFF2D6FB3FFFCFA
        F9FFF5EEE6FFF6EEE5FFF5EDE5FFF4ECE4FFF1E9E2FFF1ECE6FFEBE8E4FFEAE7
        E3FFEFEBE7FFF1E9E1FFF3E9E1FFF3EBE1FFF9F4F0FF265EA9FF5CB6EBFF75C3
        EEFF245BA7FF0000001500000005000000010000000000000000000000000000
        00000000000000000004000000113A7BBAFFA1DCF6FF73C7EFFF2F71B5FFFCFB
        F9FFF5EFE7FFF5EEE6FFF4EDE5FFF4EBE3FFF0EBE7FFE4E1DDFF4F725FFF2065
        48FFBAC2B9FFEFE9E5FFF1E8DFFFF2EAE2FFF9F5F0FF2660ABFF5FB8ECFF7BC7
        F0FF255DA8FF0000001400000005000000010000000000000000000000000000
        00000000000000000004000000103C7EBDFFA5DFF6FF76CAF0FF3074B6FFFDFB
        F9FFF7F0E8FFF6EFE8FFF4EDE6FFF1ECE6FFE8E6E2FF5E816FFF2B8362FF35A3
        7BFF476E59FFE7E4E0FFF0E9E3FFF3EBE3FFF8F4F0FF2863ACFF62BBECFF80CA
        F1FF2660ABFF0000001300000005000000000000000000000000000000000000
        000000000000000000040000000F3E82BFFFABE1F7FF7ACCF2FF3177B8FFFDFB
        F9FFF7F0E9FFF6EFE8FFF3EDE7FFEBE8E5FF739483FF2C8060FF3CCA9BFF3FCA
        9CFF20674AFFA2B0A5FFEDE9E5FFF1EAE3FFF8F4F0FF2965ADFF66BEEDFF86CD
        F1FF2763ACFF0000001300000005000000000000000000000000000000000000
        000000000000000000040000000F4285C1FFAFE3F8FF7DCFF2FF327ABAFFFDFB
        FAFFF6F0EAFFF3EEE9FFEEEBE9FF8AA798FF2C805FFF3ECA9CFF2BC590FF31C8
        94FF3BB28BFF2F634BFFDDDCD8FFF1EBE6FFF8F4F0FF2A68AFFF69C0EEFF8BD0
        F2FF2965AEFF0000001200000005000000000000000000000000000000000000
        000000000000000000030000000E4388C3FFB4E5F9FF81D1F4FF347DBCFFFCFB
        F9FFF5F0EBFFF0EDEAFF9FB8AAFF2E7F60FF45CDA2FF2EC896FF2CC894FF2CC7
        94FF3DCE9EFF2B8563FF749583FFEDE9E6FFF6F3EFFF2C6BB1FF6CC2EEFF91D4
        F3FF2A68AFFF0000001100000004000000000000000000000000000000000000
        000000000000000000030000000D468BC5FFB8E8FAFF85D4F4FF367FBDFFFAF9
        F8FFF3F0EDFFB3C6BCFF358667FF62D5B4FF58D9B2FF5CDAB5FF6EE0BEFF50D6
        ADFF39CD9DFF44C79CFF216949FFC9D0C9FFF4F2EFFF2E6DB3FF70C5F0FF96D7
        F4FF2B6BB1FF0000001000000004000000000000000000000000000000000000
        000000000000000000030000000C488FC7FFBCEAFAFF89D7F4FF4288C2FFF8F7
        F7FFC3D3CAFF38896AFF69D8B8FF5ADBB6FF65DDBCFFA6E7D5FF90D2BDFF8EEB
        D2FF5FDCB8FF54D7B0FF3BA782FF50846EFFEEECEBFF5489BFFF73C7F0FF9BD9
        F4FF2C6EB2FF0000001000000004000000000000000000000000000000000000
        000000000000000000030000000C4A92C9FFC1ECFAFF8CD9F5FF428BC3FFE1EA
        E6FF398A6AFF9DE1CFFF7EE8CCFF6CE2C2FFA1E3D1FF3A9F79FF369A73FFA6E1
        D0FF8CEBD4FF5EDDB9FF64DDBBFF308968FF9CB7AAFF8BAED0FF7ECBEFFF9FDB
        F5FF2E70B4FF0000000F00000004000000000000000000000000000000000000
        000000000000000000030000000B4D95CAFFC4EEFBFF8FDCF7FF438DC5FFF3F5
        F4FF64B093FF5FBA9BFFBAF6EAFFA5E2D0FF46A884FFCDDDD5FFC5D8CFFF36A3
        7BFFB3EBDCFF88ECD2FF5EDEBAFF63D4B4FF307F60FF81A8BEFFA9DAF0FFA5DD
        F5FF3073B7FF0000000E00000004000000000000000000000000000000000000
        000000000000000000030000000A4F98CCFFC8F0FBFF92DFF7FF3D8AC5FFFBFB
        FAFFEEF0ECFF5AB192FF4EB391FF59B492FFE2E9E4FFF5F2EFFFF4F2EFFFB2D6
        C6FF3DAE85FFC2F3E7FF87EBD2FF63E0BEFF54BE9DFF3B8271FFB3DAEAFFBDE4
        F5FF3176B7FF0000000D00000003000000000000000000000000000000000000
        000000000000000000020000000A529ACEFFCBF1FCFF96E1F8FF3C8CC7FFFDFC
        FBFFF9F8F4FFEDF1EDFF93CDB8FFF1F2EFFFF8F5F3FFF8F4EFFFF8F3F0FFF5F3
        F0FF98CEB8FF4AB993FFC8F7ECFF8BEDD6FF6AE4C2FF3EA380FF67A69AFFCFE9
        F2FF568FC3FF0000000E00000003000000000000000000000000000000000000
        0000000000000000000200000009539DD0FFCFF3FCFF99E4F9FF3D8FC8FFFEFD
        FCFFFAF7F4FFFAF8F5FFFAF7F4FFFAF8F4FFF9F6F2FFF9F4EEFFF6F0EBFFF7F2
        EEFFF4F2EFFF87CAB0FF4ABE97FFCCF8EFFF93EFDAFF6BDFC1FF349875FF91C1
        BAFF93B6D6FF0000000F00000004000000000000000000000000000000000000
        000000000000000000020000000856A0D1FFD1F4FCFF9CE5F9FF3E91C9FFFEFD
        FCFFFCF9F6FFFCF9F6FFFCF9F5FFFBF9F5FFF6F1ECFFF0E8E4FFF1EAE4FFF2EA
        E3FFF3EEEAFFF4F0EEFF98D2BDFF48C098FFCBF7EEFF98F1DDFF61DDBCFF389F
        7BFF77AAB6FF0000001200000006000000010000000000000000000000000000
        000000000000000000020000000858A2D3FFD4F6FCFF9FE8FBFF3F93CAFFFEFE
        FDFFFCFAF6FFFBF9F5FFFAF7F4FFF0EAE3FFE8DDD7FFE9DDD7FFE9DFD9FFEAE0
        DAFFEAE1DBFFEEE8E4FFF2EEEBFFA9D8C6FF4AC39EFFCFF9F0FFA8F6E6FF60DE
        BCFF3CA482FF0B241A5000000008000000010000000000000000000000000000
        00000000000000000002000000075AA4D4FFD7F7FEFFA2EAFBFF4096CCFFFDFD
        FCFFFBF7F5FFF9F6F2FFE7DED8FFD9CAC2FFD7C8C0FFD6C8C0FFD8C9C3FFDACC
        C4FFDBCFC9FFDFD4CDFFE6DDD8FFF0EBE8FFB8DED0FF3DBF96FFB0EFDFFFBFFB
        EEFF91E9D3FF339876FA0D281F49000000020000000000000000000000000000
        00000000000000000002000000065BA7D5FFDAF8FEFFA5EDFBFF4296CCFFFBFA
        F9FFF4F2EEFFD9CEC9FFC0AFA6FFB8A59CFFB4A098FFB19D96FFB19F96FFB3A2
        9BFFB8A8A0FFBFB0A8FFCBBDB6FFDBD2CCFFEDE9E6FF8DBBCDFF4DC6A5FF6FD7
        B8FF95D8C4FF2B7F62CD02060410000000010000000000000000000000000000
        00000000000000000001000000065DA9D7FFDCF9FEFFA8EEFDFF519FD0FFF1F0
        EFFFCCC1BCFFA2887DFF967466FF926D5CFF8F6758FF8D6254FF8B604FFF875F
        51FF865F51FF88675BFF987F76FFB7A9A2FFD1C6C2FF8CAEC9FFC6E5EFFFA4E1
        D6FF53AE9BFF06120E2700000004000000010000000000000000000000000000
        000000000000000000010000000560ACD8FFDFF9FEFFB2F1FDFF9ECBE2FF8B97
        A1FF917066FFAF8C7CFFC0A393FFCDB5A4FFCFB6A6FFD7C0AFFFD4BDACFFC7AC
        9AFFC1A593FFAE8D7CFF967160FF78574EFF787D85FF8AA4B7FFA9DBEAFFDAF3
        F9FF81B4D9FF0000000900000003000000000000000000000000000000000000
        0000000000000000000100000003589CC4E8BEE6F4FFCCF7FEFFD9EDF1FFA07C
        6DFFDECEC5FFF1E9E2FFF0E7DFFFEFE6DCFFE9DBD0FFDECBBDFFDBC5B5FFDAC6
        B6FFE2D1C4FFE6D7CBFFE4D4C8FFCBB5A7FF815E4FFFBAC7C9FFB4E2EDFFACDA
        EDFF3780B4E80000000500000001000000000000000000000000000000000000
        0000000000000000000000000002182B35424E88AACA62ADD8FFA9CDE3FFB38B
        7BFFB2897AFFB18A79FFAF8879FFB08778FFDECEC3FFE8DACFFFE3D3C6FFD7C3
        B4FFAC8473FFAB8372FFA98271FFAA806FFFA88170FF9EBBCFFF599ECBFF467E
        A3CB0F2432440000000300000001000000000000000000000000000000000000
        0000000000000000000000000001000000020000000300000003000000060000
        000B0000000E0000000E000000125F4A4296C9AC9FFFE2D3CAFFE1D1C8FFBB9D
        90FF553F37990000001700000013000000140000001100000009000000050000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        00010000000100000001000000020403030E5F4B438EA38072E7A48172E75640
        398F040303100000000200000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000300000005000000060000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnAbrirClick
    end
    object dxBtnCerrar: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000200000005000000060000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000060000000600000003000000010000000100000000000000000000
        0001000000040000000B00000013000000170000001800000019000000190000
        001900000019000000190000001A0000001A0000001A0000001A0000001A0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001B000000160000000E000000050000000100000000000000010000
        00020000000A0E0A2C5B2A208BEB2F2399FF2F2399FF2E2298FF2D2198FF2C20
        96FF2C2096FF2B1F95FF2B1F95FF2A1E94FF2B1D93FF291C93FF291B93FF291A
        93FF291A92FF271992FF271991FF271990FF26188FFF26178FFF26168FFF2416
        8EFF25168DFF201380EC0A06275E0000000D0000000300000001000000010000
        0004000000112D238DE8272DB1FF222FB9FF212DB7FF202DB7FF1F2BB6FF1F2B
        B6FF1F2BB6FF1E2AB6FF1E2AB6FF1F2BB4FF1E2BB6FF1E2AB6FF1E2AB6FF1E2A
        B4FF1D29B4FF1D29B4FF1C27B4FF1C28B4FF1B27B4FF1B27B3FF1B27B3FF1A26
        B3FF1B26B3FF1D20A8FF21147FE9000000150000000600000001000000010000
        000500000014342A9EFF2E3EC6FF2A3BC4FF2A3AC5FF2A3AC4FF2A3AC4FF2A3A
        C4FF2A3AC3FF2A38C4FF2A38C4FF2A38C4FF2937C3FF2837C3FF2A37C3FF2837
        C4FF2836C3FF2736C2FF2836C2FF2735C2FF2735C2FF2635C1FF2533C1FF2533
        C1FF2533C1FF1C27B3FF261890FF000000190000000600000001000000010000
        000500000015372DA1FF3142C7FF2D3DC6FF2E3CC5FF2D3EC5FF2D3DC6FF2C3C
        C5FF2D3CC5FF2C3DC5FF2C3CC5FF2D3BC5FF2C3CC4FF2C3AC4FF2B39C4FF2B3B
        C4FF2B39C4FF2B39C3FF2A38C3FF2939C3FF2937C3FF2837C3FF2736C3FF2836
        C2FF2735C1FF1D29B4FF281A92FF0000001A0000000700000001000000000000
        000500000014382FA4FF3747C9FF3041C7FF3041C7FF2F40C7FF3041C7FF2F40
        C7FF2F40C7FF2F40C6FF303EC6FF2F3FC6FF2E3FC6FF2F3DC6FF2E3EC7FF2E3C
        C6FF2D3DC6FF2D3BC6FF2C3CC5FF2D3AC5FF2B39C4FF2B39C4FF2B39C4FF2A38
        C4FF2937C4FF1F2CB7FF2A1D94FF000000190000000600000001000000000000
        0005000000133B32A5FF3A4CCAFF3243C9FF3343C9FF3243C8FF3243C9FF3242
        C8FF3646C9FF4A5BD2FF5363D5FF4757D1FF3242C9FF3142C8FF3142C8FF3241
        C8FF4555D0FF5060D4FF4857D1FF3340C7FF2E3EC7FF2E3EC6FF2E3BC5FF2D3B
        C5FF2B3CC5FF222DB8FF2D2095FF000000190000000600000001000000000000
        0005000000133D34A8FF3E4FCEFF3547CAFF3547CAFF3546CAFF3547CBFF3849
        CCFF4F5DD2FF444BBCFF3D41B2FF464DBEFF4C5CD1FF3545C9FF3545C9FF4B5B
        D1FF424ABBFF393BACFF3E44B6FF4B59CFFF3444C9FF313FC7FF303FC8FF2F40
        C7FF2F3EC6FF2430BBFF2F2198FF000000180000000600000001000000000000
        0004000000123E36AAFF4357CFFF384ACCFF3849CCFF384ACDFF394ACCFF4E5E
        D2FF4046B6FF9597D4FFE8E8F6FF8081CBFF4148B8FF4F5FD4FF4E5ED4FF3F45
        B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4A58CEFF3444C9FF3243C8FF3242
        C8FF3142C8FF2734BCFF30249AFF000000170000000600000001000000000000
        0004000000114139ADFF495CD2FF3B4ECDFF3B4FCEFF3C4DCEFF3B4CCEFF444A
        BAFF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
        C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C40B3FF3647CBFF3646CAFF3545
        C9FF3444C9FF2A38BEFF32269CFF000000160000000600000001000000000000
        000400000010413BAFFF4D61D3FF3E52D0FF3E52CFFF3E51D0FF3E52CFFF3B3E
        AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
        F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF394ACCFF394ACCFF3849
        CCFF3747CBFF2B3CC1FF34299EFF000000160000000500000001000000000000
        000400000010443EB2FF5267D7FF4155D2FF4156D1FF4255D1FF4155D1FF3C44
        B9FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
        E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3D4DCEFF3B4CCEFF3B4C
        CDFF3A4BCDFF2F3EC3FF372DA1FF000000150000000500000001000000000000
        00040000000F4540B4FF586CD8FF4559D3FF465AD3FF4458D3FF4559D3FF4457
        D2FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
        E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4051CEFF3F51D0FF3F51CFFF3D50
        CFFF3D4FCEFF3141C5FF392FA3FF000000140000000500000001000000000000
        00040000000E4742B6FF5C72DAFF475CD5FF485DD4FF475BD4FF495CD5FF485C
        D5FF495CD3FF3E44B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
        E6FFF4EBE5FF706AB4FF393EB0FF4456D0FF4356D2FF4354D2FF4153D1FF4153
        D1FF3F52D0FF3545C8FF3B31A5FF000000130000000500000000000000000000
        00030000000E4A45B9FF6178DDFF4B61D7FF4B60D6FF4B60D6FF4B5FD6FF4C60
        D6FF6074DBFF4247B5FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
        E9FFF4ECE7FF7977BFFF3C3FB0FF5E70DAFF475AD4FF4758D3FF4558D2FF4457
        D2FF4356D1FF3849CAFF3B33A8FF000000130000000500000000000000000000
        00030000000D4C47BBFF667CDEFF4D64D8FF4E64D8FF4E64D7FF4D62D7FF6174
        DCFF484CB8FF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
        EAFFF7F0EAFFFAF7F7FF7A7AC3FF3E42B0FF5C6FDAFF4A5CD5FF485CD4FF465A
        D4FF475AD3FF3A4CCCFF3E36AAFF000000120000000500000000000000000000
        00030000000C4D49BDFF6A82E0FF5067DAFF5066D9FF5066D9FF5166D9FF4C53
        BCFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
        D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4348B4FF4C5FD6FF4B5DD6FF4A5E
        D5FF4A5CD5FF3E50CEFF3E38ACFF000000110000000400000000000000000000
        00030000000C4D4BC0FF6E86E2FF536ADBFF5369DBFF5D73DCFF6F83E1FF3A3A
        A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
        BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6073DCFF5367D9FF4D61
        D7FF4C5FD7FF4155D0FF413BAFFF000000110000000400000000000000000000
        00030000000B4F4DC2FF728AE4FF5E74DEFF798CE4FF8396E6FF8396E6FF4C51
        B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF474AB2FF4649B2FF6C64
        A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4043AFFF6E81E0FF6C7FE0FF6477
        DEFF5267D9FF4457D1FF423DB1FF000000100000000400000000000000000000
        00030000000A5050C4FF8A9FE9FF879AE8FF899BE8FF889CE8FF889AE8FF8191
        E2FF4547B0FF7E75ADFFC3B1B7FF6D66ABFF484DB3FF8091E3FF7E90E3FF4549
        B0FF6B64A9FFC2B0B6FF796FAAFF393BA7FF6F7FDCFF7386E2FF7284E1FF6E82
        E1FF6C7FDFFF5366D7FF4741B4FF0000000F0000000400000000000000000000
        00020000000A6164CCFFA2B6EFFF8DA1EAFF8EA1EAFF8EA1EAFF8D9FEAFF8D9F
        EAFF8594E2FF4D51B5FF3534A2FF5358BBFF8696E6FF8899E8FF8697E8FF8292
        E4FF4E53B8FF2E2C9CFF4347AFFF7585DEFF7B8DE4FF788BE3FF7589E3FF7487
        E2FF7084E1FF6478DDFF5755BEFF0000000E0000000400000000000000000000
        0002000000096C6FD2FFA6BCF1FF93A6ECFF93A6ECFF93A6ECFF93A5ECFF92A4
        EBFF92A4EBFF91A3EBFF90A2EBFF8FA1EAFF8E9FE9FF8D9DEAFF8B9CE9FF8A9B
        E9FF8799E8FF8697E8FF8395E7FF8293E6FF8091E6FF7E90E6FF7B8DE5FF788B
        E5FF7588E3FF697CDFFF6363C5FF0000000E0000000300000000000000000000
        0002000000087075D5FFABC1F2FF99ABEDFF99ABEDFF98ABEDFF98AAEDFF97A9
        EDFF97A8ECFF96A7ECFF96A6ECFF95A5EBFF93A4EBFF92A3EBFF90A1EAFF8F9F
        EAFF8D9EEAFF8B9CE9FF899AE8FF8698E8FF8595E7FF8294E7FF8092E6FF7D90
        E6FF7A8DE5FF6E82E0FF6768C8FF0000000D0000000300000000000000000000
        000200000008757AD8FFB1C5F3FF9DB1EFFF9DB0EFFF9DB0EFFF9DAFEFFF9DAE
        EEFF9BADEEFF9BACEEFF9AABEDFF99AAEDFF98A8EDFF96A7ECFF95A6ECFF93A4
        EBFF91A3EBFF8FA0EAFF8D9FEAFF8B9DE9FF889BE9FF8799E8FF8396E8FF8194
        E7FF7F91E6FF7386E3FF6B6ECBFF0000000C0000000300000000000000000000
        0002000000077A7FDAFFBCCFF5FFA2B5F0FFA2B4F0FFA2B4F0FFA2B4F0FFA1B3
        EFFFA0B2EFFFA0B1EFFF9FB0EFFF9EAEEFFF9CADEEFF9BABEDFF99AAEDFF98A8
        EDFF96A7EDFF93A5ECFF91A3ECFF8FA1EBFF8D9FEAFF8B9DEAFF889BE9FF8598
        E8FF8396E8FF798CE4FF7074CFFF0000000B0000000300000000000000000000
        0001000000057277C8E8BECAF1FFD4E1F9FFD3E0F9FFD2DFF9FFD0DEF9FFCFDD
        F9FFCDDBF7FFCBDAF7FFC9D7F7FFC6D5F6FFC4D4F6FFC2D1F6FFC0CFF5FFBDCE
        F5FFBACBF4FFB7C9F4FFB5C6F3FFB2C3F3FFAEC1F1FFABBFF1FFA8BCF1FFA5B9
        F1FFA2B7F0FF90A0E6FF6A6EBEE9000000080000000200000000000000000000
        00010000000320223744656BAFCB8087DEFF7F87DEFF7F87DDFF7F86DDFF7F86
        DCFF7F85DCFF7E84DCFF7D84DCFF7D84DBFF7D84DBFF7C83DBFF7C82D9FF7C82
        D9FF7B82D9FF7A81D9FF7A81D8FF7A80D8FF7A80D7FF797FD7FF787FD6FF7A7F
        D6FF787ED6FF5F63A8CD1E1F3447000000050000000100000000000000000000
        0000000000010000000200000004000000050000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000080000
        0008000000080000000800000008000000080000000800000009000000090000
        0009000000080000000700000004000000020000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnCerrarClick
    end
    object dxBtnRefrescar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000030000000400000004000000040000
        0004000000030000000200000001000000010000000100000001000000020000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000003000000060000000A0000000D0000001000000012000000120000
        00100000000E0000000B000000060000000300000003000000050000000A0000
        000A000000050000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        00070000000C1109042C44240F7B723C18C07F431BD39F5421FF9F5320FF7F42
        1AD3723B17C043230E7C1109032C0000000B000000080000000F542915B64A20
        0FB90000000E0000000500000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000004000000091109
        042B623516A6A25C2BFCBB8759FFCC9E6BFFD3A572FFDFB47FFFDFB57EFFD3A4
        71FFCC9B69FFB98456FF9F643DFC442918790000001126130A5DA06E49FF9159
        37FF210F075D0000000B00000003000000010000000000000000000000000000
        000000000000000000000000000000000001000000040000000B311B0C5D9C57
        29F5C18957FFDCB17DFFDFB47EFFDDB179FFDDB078FFDCAF74FFDCAE74FFDDB0
        76FFDDB077FFE5C296FFA7704CFB160E08390402011D744024E1D9B381FFCB9F
        6CFF653118E10301011900000007000000010000000000000000000000000000
        0000000000000000000000000001000000040000000A4627127BAA6838FFD5A8
        75FFE0B57FFFDDB178FFDDB077FFDDB077FFDCB077FFDDAF77FFDDAF77FFDDB0
        76FFE0B884FFCAA27FFF553521950000001841231488B88C63FFDFB47CFFDDB1
        79FFA7734CFF371A0D870000000D000000040000000100000000000000000000
        000000000000000000000000000200000008321C0E5BAA693AFFDFB785FFDEB4
        7DFFDEB27AFFDEB279FFE0B680FFEACBA1FFF2E1C2FFF7EACFFFF7ECD3FFF6E9
        CDFFECD9BAFF92613EE308050323120B0638955F3EF6E0BC89FFDDAF76FFDCAE
        75FFDBB07AFF824A2CF611080437000000080000000200000000000000000000
        0000000000000000000100000005110A05289D5D31F4DCB98BFFE0B67FFFDFB3
        7CFFDEB37CFFE6C496FFEDD8BBFFD1B090FFB98B66FFB07B56FFB07A56FFB889
        65FFB98865FF311F145C00000016683D25BDD2AD82FFDEB47DFFDDB177FFDCB0
        76FFDDB27AFFC39566FF572C17BD0000000F0000000500000001000000000000
        0000000000000000000200000009623B1EA1C89B6FFFE3BE8BFFDFB67EFFE0B6
        7FFFE6C699FFDCBFA0FFAF7D59FA6345309A2B1E154D0000001000000010291D
        134946302170000000122C1B115CB1825DFFE3C08EFFDEB37CFFDEB37AFFDEB2
        78FFDDB177FFE0B883FF9C6743FF25130A5C0000000900000002000000000000
        00000000000100000004160D072CA96C3FFCEACFA5FFE0B981FFE0B882FFE5C0
        8FFFDCBE9FFF9E6F4EE71F160F3C0000000B0000000600000004000000040000
        00060000000A04020117895838E0E2C59BFFE2BB87FFDFB57DFFDFB57CFFDFB4
        7BFFDEB37AFFDFB47CFFD5AC7BFF744024E10302011700000006000000000000
        000000000001000000064F321D80C4976DFFEACC9DFFE1BA84FFE4C08CFFEAD3
        B3FFB07F5CFA1F160F3A00000008000000030000000100000001000000010000
        00030000000B4F342189CAA682FFEAD0A4FFE8C999FFE7C897FFE5C38FFFE1BA
        84FFDFB57DFFDFB47BFFE1BA84FFB4845BFF4225158B0000000B000000000000
        000000000002000000087E5130C2DDBF97FFE6C493FFE9CD9DFFEED7AEFFD1B0
        91FF644732990000000A00000003000000010000000000000000000000010000
        000517100A31AD7F5AFBEEDAB4FFEACE9FFFE9CD9EFFEACC9DFFE9CC9CFFE9CB
        9BFFE6C693FFE1B983FFDFB47DFFE2BC8CFF965F3DFB140B0633000000010000
        0002000000040000000A9B663EE6F6EBCAFFEDD5A9FFEDD6A9FFF1DFBBFFBE91
        6CFF281D14450000000800000004000000020000000100000000000000020000
        0007775137B9E3CFB9FFFBF6E6FFFBF6E5FFFBF6E5FFF7ECCEFFEBD0A1FFEBCF
        9FFFEED7B0FFF6EAD3FFF9F1DDFFF9EFD7FFD9C1A6FF653C23BA000000050000
        00070000000A0000000EAB744AF9F9F1D7FFEFD9AFFFEFDAAFFFF3E4C2FFB887
        60FF030201180000000D0000000A000000070000000300000001000000020000
        0007B78560FFB78560FFB68560FFB68660FFB07D55FFF8EED0FFEDD4A7FFEDD3
        A5FFF0DCB6FFAE7952FFB88661FFB88762FFB78762FFB88763FFAA7750FFA876
        4EFFA6734CFFA6704AFFBA8B64FFF5E7C8FFF1DDB3FFF1DEB3FFF5E7C8FFB887
        60FF985F3CFF965D39FF945B37FF915834FF0000000600000002000000010000
        0003000000070000000A0000000E0402021A9E6743FFF8EED2FFEED8ACFFEED7
        AAFFF3E1BFFFAD7B54FA000000150000000F0000000C0000000986664AB7E8D4
        BBFFF8EED3FFF6EBCDFFF6EACDFFF6E9CDFFF2E1B8FFF3E1B8FFF6EACCFFF6EA
        CCFFF6EACCFFF6EACDFFDCC7AFFF693F26B80000000600000001000000000000
        000100000002000000030000000824170E48A97857FFF6EBCDFFF0DBB1FFF0DB
        B1FFEEDDBDFFA0724FE70000000D0000000500000003000000021B150F2AC39C
        7AF7FAF4E2FFF6EBC8FFF3E4BCFFF4E4BDFFF4E4BCFFF4E5BDFFF3E4BDFFF4E4
        BDFFF4E5BDFFF7EED6FFA57654FA160E082D0000000400000001000000000000
        00000000000100000003000000085838239BC7A689FFF5E6C4FFF2DFB5FFF2E2
        BAFFE4CEB1FF845F43BF00000009000000020000000000000000000000045B46
        347DDDC5ACFFFBF5DFFFF6E9C3FFF5E7C1FFF5E7C1FFF5E7C1FFF5E8C1FFF5E8
        C1FFF7EDCEFFCCAD92FF4B311F7E000000060000000200000001000000010000
        000100000002000000061B110A38986542FAEEE0C4FFF3E4BDFFF3E2BAFFF4E8
        C5FFD3B496FF563F2D8000000006000000010000000000000000000000020504
        030BAA8766DEF4ECDBFFF9F2D4FFF6EAC5FFF6EAC5FFF7EBC5FFF7EBC5FFF6EC
        C8FFEFE4D0FF926645DE0403020F000000050000000300000003000000030000
        0004000000071D120B3A895634E6D7BDA0FFF6EAC6FFF5E6BFFFF4E7BFFFF5EA
        D3FFBC8F6BFC16100C2800000004000000010000000000000000000000010000
        00033A2D2250D5B799FFFDF9E7FFF8F0CEFFF7EDC8FFF7EDC8FFF8EDC8FFFBF4
        DBFFC5A080FF32231852000000083E27176D26180E450402010E0402010E2518
        0E475837219998653FF9D7BEA0FFF7ECCBFFF6EAC4FFF6E9C3FFF7EDD1FFDABF
        A4FF71553E9F0000000700000002000000000000000000000000000000000000
        0001000000048C6F54B6EEE0CEFFFBF7E0FFF9EFCCFFF8F0CCFFFAF2D2FFE7D6
        C1FF7D5B3FB70000000831211651A87650FFA87852FF9A6238FF995F38FFA777
        51FFC7A685FFF1E5CCFFF9F0CFFFF8EDC8FFF7ECC8FFF8EECDFFEFE2CEFFB58B
        67F1140F0B230000000300000001000000000000000000000000000000000000
        00000000000215110D1FC5A380F4FBF7EAFFFBF5D8FFFAF2D0FFF9F3E1FFB88F
        6DF5130E0A22090604149D734FE6F5EFD9FFFBF6DEFFFBF6E0FFFBF6E0FFFBF5
        DCFFFAF4D7FFF9F0CFFFF9F0CCFFF8F0CBFFF9F2D3FFF6EDDDFFC59E7BFC3B2E
        2256000000050000000100000000000000000000000000000000000000000000
        000000000001000000025F4C3A7BE2CDB5FFFCFAE9FFFBF8DFFFDBC3A8FF5944
        307C000000065E442F8BDAC1A5FFFBF6DAFFFBF4D2FFFAF4D1FFFAF4D1FFFAF3
        D1FFFAF3D0FFFAF3D0FFFAF2D1FFFCF7E2FFF2E6D6FFC9A17EFF554231750000
        0005000000020000000000000000000000000000000000000000000000000000
        0000000000000000000105040309B0906FDDF7F0E3FFF5EFE0FFA78462DD0503
        030B1A130D28BC9672FAFCF9EEFFFCFAE5FFFCF8E0FFFBF7D7FFFBF6D4FFFBF7
        DAFFFCF8E0FFFDFAE8FFFBF6EBFFE0CAB2FFBE9775F4382C214E000000050000
        0002000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000023C31264EDBC1A2FFD6B99BFF3A2E224F0000
        00034F3C2C6ECCA781FCDFC9AFFFEEE2D1FFF4ECDEFFFDFDF6FFFDFDF6FFF3EC
        DEFFEDE2D1FFDEC7ADFFCAA480FC785F489D130F0B1D00000003000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000002846D53A6836A50A9000000020000
        00010000000216120E1E5646366F93775BB9A28466CDC9A37DFCC9A27CFCA284
        64CE917659B95645357015110D1F000000030000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0000000000000000000100000002000000020000000300000003000000030000
        0003000000030000000200000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnRefrescarClick
    end
    object CxDateInicio: TcxBarEditItem
      Caption = 'Inicio     '
      Category = 0
      Hint = 'Inicio     '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000000000000A0000
        0010000000110000001100000011000000120000001200000012000000120000
        0012000000120000001300000013000000120000000C0000000381594CC2B47C
        69FFB37B69FFB37B68FFB37A68FFB37A68FFB27A68FFB27A68FFB37968FFB279
        68FFB27967FFB27867FFB17867FFB17866FF7F5649C30000000BB77F6EFFFBF8
        F5FFF8EEE9FFF8EEE9FFF7EFE8FFF7EEE8FFF7EEE8FFF7EEE8FFF7EDE7FFF7ED
        E6FFF6EDE6FFF6ECE6FFF6ECE6FFF6ECE5FFB47B69FF00000011B98472FFFBF8
        F6FFBF998AFFEBDAD3FFBE9788FFEBDAD3FFBD9586FFEBDAD3FFBC9484FFEBDA
        D3FF5D6DDDFFE4DDE1FF5A69DCFFF7EDE7FFB77F6EFF00000011BC8978FFFCFA
        F8FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDC
        D5FFE5DFE3FFE5DFE2FFE5DEE2FFF8EEE9FFB98472FF00000010C08E7DFFFCFA
        F9FFC6A294FFEDDED6FFC4A092FFEDDED6FFC29E8EFFEDDED6FFC19B8CFFEDDE
        D6FF6577E1FFE5E0E4FF6272E0FFF8F1EBFFBC8977FF00000010C39482FFFCFA
        FAFFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDF
        D8FFE6E2E6FFE6E2E6FFE6E2E5FFF9F2EEFFC08E7CFF0000000FC79887FFFDFB
        FAFFCCAB9DFFEEE0DBFFCAA99BFFEEE0DBFFC9A799FFEEE0DBFFC8A496FFEEE0
        DBFF6D81E5FFE8E3E8FF6A7DE4FFFAF4F0FFC49381FF0000000EC99D8CFFFDFC
        FCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2
        DCFFE8E6EAFFE8E5EAFFE8E4E9FFFAF6F2FFC69886FF0000000DCDA190FFFEFC
        FCFFD0B1A3FFEFE3DFFFCFB0A2FFEFE3DFFFCFAFA0FFEFE3DFFFCDAD9FFFEFE3
        DFFF7388E8FFE9E6EBFF7186E7FFFBF7F5FFC99D8BFF0000000DCFA594FFFEFC
        FCFFFDF9F9FFFDF9F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9
        F7FFFCF9F7FFFDF8F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C4B53C3FF8D9E
        ECFF687CE3FF6678E2FF6476E1FF6172E0FF5F70DFFF5F70DFFF5D6CDEFF5B69
        DCFF5966DBFF5664DAFF5462D9FF616DDCFF3337AAFF0000000B4C55C4FF93A4
        EEFF6C80E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6375E1FF6172E0FF5E6F
        DEFF5C6CDDFF5A69DCFF5766DAFF6472DDFF3538ABFF0000000A4D56C6FF96A7
        EFFF95A6EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8B9BEBFF8898EAFF8595
        EAFF8291E7FF7F8DE7FF7D89E5FF7987E5FF3539ACFF000000093A4093C14D55
        C5FF4B53C3FF4A51C1FF484FBFFF464DBEFF444BBBFF444BBBFF4249B9FF4046
        B7FF3E44B4FF3C41B3FF3A3EB0FF393CAEFF282B80C200000006000000040000
        0006000000060000000600000007000000070000000700000007000000070000
        0007000000070000000800000008000000070000000500000001}
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object CxDateTermino: TcxBarEditItem
      Caption = 'T'#233'rmino'
      Category = 0
      Hint = 'T'#233'rmino'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000000000000A0000
        0010000000110000001100000011000000120000001200000012000000120000
        0012000000120000001300000013000000120000000C0000000381594CC2B47C
        69FFB37B69FFB37B68FFB37A68FFB37A68FFB27A68FFB27A68FFB37968FFB279
        68FFB27967FFB27867FFB17867FFB17866FF7F5649C30000000BB77F6EFFFBF8
        F5FFF8EEE9FFF8EEE9FFF7EFE8FFF7EEE8FFF7EEE8FFF7EEE8FFF7EDE7FFF7ED
        E6FFF6EDE6FFF6ECE6FFF6ECE6FFF6ECE5FFB47B69FF00000011B98472FFFBF8
        F6FFBF998AFFEBDAD3FFBE9788FFEBDAD3FFBD9586FFEBDAD3FFBC9484FFEBDA
        D3FF5D6DDDFFE4DDE1FF5A69DCFFF7EDE7FFB77F6EFF00000011BC8978FFFCFA
        F8FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDC
        D5FFE5DFE3FFE5DFE2FFE5DEE2FFF8EEE9FFB98472FF00000010C08E7DFFFCFA
        F9FFC6A294FFEDDED6FFC4A092FFEDDED6FFC29E8EFFEDDED6FFC19B8CFFEDDE
        D6FF6577E1FFE5E0E4FF6272E0FFF8F1EBFFBC8977FF00000010C39482FFFCFA
        FAFFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDF
        D8FFE6E2E6FFE6E2E6FFE6E2E5FFF9F2EEFFC08E7CFF0000000FC79887FFFDFB
        FAFFCCAB9DFFEEE0DBFFCAA99BFFEEE0DBFFC9A799FFEEE0DBFFC8A496FFEEE0
        DBFF6D81E5FFE8E3E8FF6A7DE4FFFAF4F0FFC49381FF0000000EC99D8CFFFDFC
        FCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2
        DCFFE8E6EAFFE8E5EAFFE8E4E9FFFAF6F2FFC69886FF0000000DCDA190FFFEFC
        FCFFD0B1A3FFEFE3DFFFCFB0A2FFEFE3DFFFCFAFA0FFEFE3DFFFCDAD9FFFEFE3
        DFFF7388E8FFE9E6EBFF7186E7FFFBF7F5FFC99D8BFF0000000DCFA594FFFEFC
        FCFFFDF9F9FFFDF9F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9
        F7FFFCF9F7FFFDF8F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C4B53C3FF8D9E
        ECFF687CE3FF6678E2FF6476E1FF6172E0FF5F70DFFF5F70DFFF5D6CDEFF5B69
        DCFF5966DBFF5664DAFF5462D9FF616DDCFF3337AAFF0000000B4C55C4FF93A4
        EEFF6C80E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6375E1FF6172E0FF5E6F
        DEFF5C6CDDFF5A69DCFF5766DAFF6472DDFF3538ABFF0000000A4D56C6FF96A7
        EFFF95A6EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8B9BEBFF8898EAFF8595
        EAFF8291E7FF7F8DE7FF7D89E5FF7987E5FF3539ACFF000000093A4093C14D55
        C5FF4B53C3FF4A51C1FF484FBFFF464DBEFF444BBBFF444BBBFF4249B9FF4046
        B7FF3E44B4FF3C41B3FF3A3EB0FF393CAEFF282B80C200000006000000040000
        0006000000060000000600000007000000070000000700000007000000070000
        0007000000070000000800000008000000070000000500000001}
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBtnRegistrarInasistencia: TdxBarLargeButton
      Caption = '&Registrar Inasistencia'
      Category = 0
      Hint = 'Registrar Inasistencia'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0001000000020000000400000005000000050000000500000005000000050000
        0005000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000070000
        0007000000070000000600000005000000030000000100000001000000010000
        0003000000090000000F00000013000000140000001400000014000000150000
        0015000000150000001600000016000000160000001600000017000000170000
        0017000000180000001800000018000000180000001900000019000000190000
        001A0000001A00000019000000140000000D0000000500000001000000020000
        00092F211D57956B5DEAA47565FFA47565FFA37463FFA17363FFA17262FFA071
        62FFA17161FFA07161FFA07060FF9F7060FF9E6F60FF9E6E5FFF9E6E5EFF9D6D
        5EFF9D6D5EFF9C6C5DFF9C6C5CFF9C6C5CFF9B6B5CFF9C6B5BFF9B6A5BFF9B6A
        5BFF9B695BFF9A695AFF8C5F52EB2B1D195E0000000C00000003000000030000
        000D9F7464F6DCC4B0FFE1CCB8FFE1CCB8FFE1CCB7FFE1CCB8FFE1C9B7FFE1CC
        B7FFDEC9B4FFE1C9B7FFDEC9B4FFDEC9B4FFDEC9B4FFDDC7B1FFDDC7B1FFDEC9
        B4FFDEC8B4FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7
        B1FFDDC7B1FFDDC7B1FFD7BEA9FF946556F70000001400000005000000040000
        0010AA7B6CFFCCA390FFCA9E8BFFC99E8CFFC99D8AFFC99C8AFFC89B89FFC79B
        88FFC69887FFC69787FFC59785FFC49684FFC49683FFC49482FFC49382FFC393
        80FFC29280FFC1917EFFC1907DFFC08E7CFFC08E7BFFBF8C7AFFBE8C7AFFBE8B
        79FFBD8B79FFBD8A76FFC08F7CFF9D6C5CFF0000001800000006000000040000
        0010B08272FFEFE3D8FFFCFDF5FFFCFDF5FFFCFDF5FFFCFCF4FFFCFCF4FFFBFC
        F3FFFCFBF3FFFBFBF3FFFBFAF2FFFAFAF1FFFAF9F1FFFBF9F1FFFAF9F0FFF9F8
        EFFFF9F8EFFFF9F7EEFFF9F6EEFFF8F6EDFFF8F5ECFFF7F5ECFFF7F4EBFFF8F3
        EBFFF8F3EAFFF6F2EAFFE6D4C9FFA37262FF0000001800000006000000040000
        000FB18474FFF6F0E9FFF1E7DFFFF2E7DFFFF1E7DEFFF1E7DEFFF1E7DEFFF1E6
        DDFFF1E6DEFFF0E6DEFFF0E6DDFFF1E6DDFFF0E6DDFFF0E6DCFFF0E6DCFFF0E6
        DCFFF0E6DBFFEFE6DBFFF0E5DBFFF0E6DBFFF0E5DAFFF0E5DAFFEFE5DAFFEFE4
        DAFFEFE5DAFFEFE3D9FFF2E8E0FFA47363FF0000001700000006000000040000
        000EB28575FFF6EFE9FFF4ECE5FFF5ECE4FFF4EBE4FFF5EBE3FFF4EBE3FFF4EB
        E3FFF4EBE2FFF4EBE2FFF4EAE1FFF3EAE2FFF4EAE2FFF4EAE1FFF3EAE1FFF3EA
        E0FFF4EAE0FFF3EAE0FFF3EAE0FFF2EADFFFF3E9DFFFF3E9DFFFF3E9DFFFF2E9
        DFFFF3E9DEFFF2E8DEFFF2E8DFFFA57463FF0000001700000006000000030000
        000EB38676FFF8F2ECFFF6EEE7FFF6EFE7FFF6EEE6FFF6EEE6FFF6EEE6FFF5EE
        E6FFF5EEE5FFF5EEE5FFF5EDE4FFF5EDE4FFF5ECE4FFF4EDE3FFF5ECE3FFF4EC
        E3FFF5ECE3FFF4EBE2FFF4EBE3FFF4ECE2FFF4EBE2FFF4EBE1FFF4EBE1FFF4EA
        E1FFF4EAE1FFF3E9E0FFF4EBE2FFA67565FF0000001600000006000000030000
        000DB58878FFF9F4EEFFF7EFE8FFF6F0E8FFC19B8BFFC09A8AFFF1E6DEFFC099
        89FFBF9788FFF1E5DDFFBF9687FFBE9585FFF0E4DCFFBC9584FFBC9483FFEFE3
        DAFFBB9182FFBA9182FFEFE3D9FFB99181FFB89080FFEEE2D8FFB78F7EFFB88E
        7EFFF4EAE1FFF4EAE2FFF5EDE4FFA67566FF0000001500000005000000030000
        000CB68A7AFFFAF5EFFFF7F0E9FFF7F1E9FFC39E8DFFC29C8CFFF1E7DFFFC09B
        8AFFC09A8AFFF1E6DEFFBF9889FFBF9988FFF1E5DDFFBE9587FFBE9585FFF0E5
        DCFFBB9584FFBB9482FFEFE4DBFFBB9282FFBB9182FFEEE3D9FFB99180FFB890
        80FFF4EBE3FFF4ECE2FFF5EDE5FFA87767FF0000001400000005000000030000
        000CB88C7CFFF9F5F0FFF8F1EAFFF7F0EAFFF2E8E1FFF2E9E0FFF6EFE8FFF2EB
        E4FFEFE8E1FFEEE7E0FFEEE7DFFFEDE5DEFFECE6DEFFECE6DEFFEFE7E1FFF3EC
        E4FFF0E4DCFFF0E4DCFFEFE4DBFFF0E4DBFFEFE4DBFFEFE3DAFFEFE3DAFFEFE4
        DAFFF5ECE3FFF5ECE3FFF6EEE6FFA87869FF0000001400000005000000030000
        000BB88E7EFFFAF6F1FFF7F2EBFFF8F1EBFFC6A192FFC5A091FFF3EDE6FF6563
        B2FF393CAFFF383CAEFF373BADFF353AACFF3539ACFF3438AAFF5E5BABFFEFE8
        E1FFBF9789FFBF9788FFF1E5DDFFBE9687FFBC9684FFF0E4DBFFBC9483FFBB94
        83FFF5EDE4FFF5ECE4FFF6EEE6FFA97969FF0000001300000005000000030000
        000ABA8F80FFFAF7F2FFF8F2ECFFF8F3ECFFC7A495FFC7A393FFF3EDE6FF3C41
        B3FF7281E3FF7080E3FF6F7EE3FF6E7DE2FF6C7CE2FF6B7BE2FF3539ABFFECE6
        DFFFC09A8BFFC09A8AFFF1E6DEFFBF9988FFBF9788FFF1E5DDFFBE9685FFBE95
        85FFF5EDE5FFF5EDE5FFF6EFE8FFAA7A6BFF0000001200000005000000020000
        000ABB9181FFFAF7F2FFF8F3EDFFF8F3EDFFF4EBE4FFF3EBE4FFF3EDE7FF3F45
        B6FF7382E4FF4148B9FF444BBBFF464EBEFF4850C0FF6C7CE2FF373BAEFFEDE7
        E0FFF1E7E0FFF1E7DFFFF1E8DFFFF2E7DEFFF2E7DEFFF1E6DEFFF1E6DEFFF0E5
        DDFFF6EEE6FFF5EEE6FFF7F0E8FFAC7D6CFF0000001200000004000000020000
        0009BD9282FFFBF8F4FFF9F4EEFFF9F4EEFFC9A89AFFC9A899FFF5EFE9FF4147
        B9FF7483E4FF3B41B3FFEDE8E1FFECE7E0FF4349BAFF6E7DE2FF393DB0FFEEE8
        E1FFC49F8EFFC39E8EFFF2E8DFFFC39C8CFFC09C8CFFF1E7DEFFC09A8AFFC099
        89FFF6EEE7FFF6EFE7FFF7F1E9FFAD7E6EFF0000001100000004000000020000
        0008BE9484FFFBF8F4FFF9F5F0FFFAF5EFFFCBAA9BFFCAAA9BFFF5F0EAFF444A
        BBFF7685E4FF373AADFFEEE9E3FFEDE9E2FF3C42B4FF6F7EE3FF3B40B3FFEFE9
        E4FFC5A091FFC4A090FFF2E8E1FFC49F8EFFC29E8EFFF2E8E0FFC29C8CFFC29B
        8BFFF6EFE8FFF6EFE8FFF7F1EAFFAE7F6FFF0000001000000004000000020000
        0008BF9685FFFCF8F5FFFAF5F1FFFAF5F0FFF6EEE8FFF6EEE7FFF6F1ECFF474E
        BEFF7786E5FF3336A9FF3438AAFF3639ACFF373BADFF7080E3FF3F43B5FFF1EB
        E6FFF3EAE2FFF3E9E2FFF3E9E2FFF3EAE1FFF3E9E1FFF2E9E1FFF2E9E1FFF2E8
        E1FFF7F0E9FFF7F0E8FFF8F1EBFFAF8170FF0000000F00000004000000020000
        0007C09888FFFCFAF6FFFAF7F2FFFAF6F1FFCEAFA0FFCEAEA0FFF8F3EEFF4951
        C1FF91A6EBFF90A3EBFF8EA1EAFF8A9EE9FF889BE9FF8699E8FF4147B8FFF2ED
        E7FFC9A596FFC7A595FFF3EAE3FFC7A394FFC6A192FFF3EAE2FFC5A191FFC4A0
        90FFF7F0EAFFF7F0E9FFF8F3ECFFB08272FF0000000F00000004000000020000
        0006C19989FFFCFAF7FFFAF7F2FFFAF6F2FFD0B1A3FFD0B1A1FFF9F5F0FF7274
        C5FF4A52C2FF4951C0FF484FC0FF474FBEFF464DBDFF454BBCFF6B6BBDFFF6F1
        EBFFCAA89AFFC9A699FFF3EBE5FFC8A596FFC7A495FFF3EAE3FFC7A394FFC6A1
        92FFF8F2EBFFF7F1EBFFF8F3EEFFB18474FF0000000E00000004000000010000
        0006C39B8AFFFCFAF8FFFBF8F3FFFBF8F3FFFBF7F3FFFAF7F2FFFBF6F2FFFAF5
        F1FFF8F4EFFFF8F4EFFFF7F3EEFFF7F3EDFFF6F2ECFFF5F1EBFFF7F2EDFFF8F3
        EEFFFAF4EFFFF9F4EEFFF9F4EEFFF9F4EEFFF8F3EDFFF8F3EDFFF8F3ECFFF8F2
        ECFFF8F2ECFFF8F2ECFFF9F4EEFFB28576FF0000000D00000003000000010000
        0005C39C8CFFFCFAF9FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF7F4FFFAF7
        F3FFFAF7F2FFFBF7F2FFFAF6F2FFFAF6F1FFFAF6F1FFFAF5F1FFFAF5F0FFFAF5
        F0FFFAF5F0FFFAF5EFFFF9F5EFFFF9F4EEFFF9F4EFFFF9F4EEFFF9F4EEFFF9F3
        EDFFF8F3EDFFF8F3EDFFF9F4EFFFB48778FF0000000D00000003000000010000
        0005C49D8DFFFDFCFBFFFDFBF8FFFDFBF8FFFCFAF8FFFDFAF7FFFDFBF7FFFDF9
        F7FFFCFAF7FFFCFAF6FFFBF9F6FFFCF9F6FFFCF8F5FFFBF9F5FFFCF9F5FFFBF8
        F5FFFBF8F5FFFBF8F4FFFBF8F5FFFBF8F4FFFBF8F3FFFBF8F3FFFBF7F3FFFBF7
        F2FFFBF6F2FFFBF6F2FFFBF8F4FFB58979FF0000000C00000003000000010000
        0004444BBBFF9EADF0FF6B81E6FF6B80E6FF6A7FE5FF687CE4FF677BE4FF677A
        E3FF6578E2FF6476E2FF6375E1FF6274E1FF6172E0FF6070DFFF5E6FDFFF5D6D
        DEFF5C6BDEFF5B69DDFF5968DCFF5967DBFF5765DAFF5663DAFF5561DAFF5460
        D8FF525FD8FF515DD7FF6872DEFF3336A9FF0000000B00000003000000010000
        0004474EBDFFA0AFF1FF6D83E8FF6C82E7FF6B80E6FF8093EAFF8799EBFF7E91
        E9FF677AE4FF6679E3FF6577E3FF6376E1FF6274E1FF6173E0FF6171E0FF5F6F
        DFFF5E6EDEFF5D6CDDFF5B6BDDFF5B69DCFF717DE1FF7783E4FF6E7BE1FF5563
        D9FF5460D9FF5360D8FF6B76DFFF3639ACFF0000000B00000003000000010000
        00034951C0FFA0B2F2FF6F85E8FF6E84E7FF5F73D7FF3E3D7BFF29234EFF2B2B
        61FF596DD1FF677BE4FF667AE4FF6578E2FF6476E2FF6375E2FF6273E1FF6172
        E0FF6070DFFF5E6FDEFF5E6DDEFF505ECFFF3C3879FF29234EFF28275EFF4B57
        C8FF5663DAFF5562D9FF6D78E0FF383CAEFF0000000A00000003000000010000
        00034C54C3FFA3B4F2FF778DEAFF7086E8FF5B6FD3FF5D558CFFB7A194FF3F37
        6CFF5667CCFF697DE5FF687CE4FF677AE4FF6679E3FF6478E3FF6375E1FF6274
        E1FF6273E0FF6071DFFF5F6FDFFF4C5BC9FF5D558CFFB7A194FF3F376CFF4753
        C1FF5866DBFF5663DAFF6F7BE1FF3A3FB0FF0000000900000002000000000000
        00024B53B6ED8E9DE7FFA4B5F2FFA3B3F2FF8D9DE1FF645B91FFAA9284FF473F
        74FF8795D9FF9DADF0FF9CACF0FF9BAAEFFF9BA9EEFF9AA7EEFF98A6EEFF97A5
        EDFF96A4EDFF94A2ECFF93A1ECFF7D8AD9FF645B91FFAA9284FF473F74FF7681
        D2FF8C97E9FF8C97E8FF7680DBFF3C3FA5EE0000000600000002000000000000
        0001141631413F479ECA4F58C7FF4F58C7FF4048B4FF6A6399FFFFFEF3FF5048
        7FFF3D44ADFF4B54C2FF4A52C2FF4A52C1FF4951C0FF4950C0FF484FBFFF474F
        BEFF464EBEFF464DBDFF464CBCFF383DA9FF6A6399FFFFFEF3FF50487FFF3539
        A3FF4248B8FF4147B7FF32368FCC10112D450000000400000001000000000000
        000000000001000000010000000200000002000000088A7368FFDACEC5FF735A
        50FF0000000D0000000300000003000000040000000400000004000000040000
        00040000000500000005000000050000000B8A7368FFDACEC5FF735A50FF0000
        0010000000060000000600000005000000030000000100000000000000000000
        000000000000000000000000000000000000000000026C5B54C090796FFF6655
        4EC2000000060000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000036C5B54C090796FFF66554EC20000
        0006000000010000000100000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000030000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000003000000030000
        0001000000000000000000000000000000000000000000000000}
      OnClick = dxBtnRegistrarInasistenciaClick
    end
    object dxBtnEliminarInasistencia: TdxBarLargeButton
      Caption = 'Eli&minar Inasistencia'
      Category = 0
      Hint = 'Eliminar Inasistencia'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000006000000060000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000006000000060000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000100000002000000070000000F00000017000000170000
        0010000000070000000200000001000000000000000000000000000000000000
        0000000000000000000100000002000000070000001100000018000000180000
        0011000000080000000300000001000000000000000000000000000000000000
        0000000000010000000200000008000000150E0A2F682A1E8CEC2A1E8DEE0605
        2C6C000000160000000800000002000000010000000000000000000000000000
        00000000000100000002000000090000001706052C6E271B8AEF271A88EC0D09
        2E6B000000170000000900000002000000010000000000000000000000000000
        0000000000010000000600000014100C3370312DA6FE2A33BBFF2A34BCFF1B1B
        98FE080632780000001600000009000000020000000100000000000000000000
        00010000000200000009000000180705327A1D1D99FE262FB9FF252EB8FF2B25
        A1FE0E0A32730000001700000007000000020000000000000000000000000000
        0001000000030000000E0F0C30673631A9FE2C39C1FF2B37C0FF2B37BFFF2B37
        BEFF1C1E9BFE0806327800000016000000090000000200000001000000010000
        000200000009000000170705327A1F209DFE2733BCFF2733BDFF2732BEFF2732
        BDFF2D27A3FE0E0A2F6A00000010000000030000000100000000000000000000
        00010000000500000014362C95EB3F4AC6FF2F3BC2FF2E3BC2FF2E3AC2FF2D3A
        C2FF2D39C0FF1D1F9CFE08063278000000160000000900000003000000030000
        0009000000160706327920219DFE2A36BEFF2A35BFFF2936BFFF2A36BEFF2935
        BFFF2C35BCFF322792EC00000016000000050000000100000000000000000000
        000100000005000000143B309CF05B67D1FF3B48C8FF313DC4FF313DC3FF303D
        C3FF303DC3FF303BC2FF1E209CFE07063277000000160000000A0000000A0000
        00160806327821229DFE2D39C0FF2D39C1FF2D38C0FF2C38C0FF2C37C0FF2C37
        C0FF4753C8FF372B98F100000017000000050000000100000000000000000000
        0001000000030000000D14113C734E4DB9FF606FD6FF3D49C9FF3440C5FF3340
        C5FF333FC4FF333FC5FF333EC3FF1F219DFE070632770000001B0000001B0806
        327823249EFE303CC2FF303CC3FF303CC3FF2F3CC3FF2F3CC3FF2E3BC2FF4D5A
        CDFF4643B3FF130F3A760000000F000000040000000100000000000000000000
        00000000000100000006000000121713437C5354BDFF6674D8FF404CCCFF3643
        C7FF3643C7FF3643C7FF3542C6FF3540C5FF20229EFE0705327D0705327D2325
        9FFE343FC4FF3340C5FF3240C5FF323FC5FF333EC4FF323EC4FF5361D0FF4C4C
        B8FF1511417F0000001500000007000000010000000000000000000000000000
        0000000000010000000200000007000000121814447C5759BFFF6A7ADAFF4250
        CDFF3946C9FF3846C9FF3945C8FF3845C8FF3844C7FF21239EFE21239EFE3742
        C6FF3643C7FF3643C7FF3542C7FF3543C7FF3542C6FF5967D2FF5151BBFF1612
        427F000000150000000800000002000000010000000000000000000000000000
        000000000000000000010000000200000007000000121815457C5B5DC2FF707F
        DDFF4553CFFF3C49CAFF3C49CAFF3B48CAFF3B48C9FF3B47C9FF3A47C9FF3A47
        C9FF3947C9FF3946C9FF3846C8FF3845C8FF5F6DD5FF5556BEFF1713437E0000
        0014000000080000000200000001000000000000000000000000000000000000
        00000000000000000000000000010000000200000007000000121916457B5E61
        C4FF7484DFFF4856CFFF3F4CCCFF3E4CCCFF3D4CCCFF3D4BCCFF3E4BCBFF3D4A
        CBFF3D4ACBFF3D4ACBFF3C49CBFF6574D8FF595BC1FF1815447D000000130000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000006000000111A17
        467A6265C7FF7989E0FF4B59D1FF4250CEFF424FCEFF414FCEFF414ECDFF404D
        CEFF3F4ECDFF3F4DCCFF6A7ADBFF5D5FC3FF1915457C00000013000000070000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000080000
        00151B18487E5C5FC6FF505DD4FF4552D0FF4552D0FF4452D0FF4351CFFF4352
        CFFF4351CFFF4452CFFF5558C2FF1A1746800000001700000009000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000070000
        00140B0934733132A9FE4857D2FF4857D3FF4756D3FF4755D2FF4755D2FF4655
        D1FF4654D2FF4554D1FF292AA4FE090732750000001600000008000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000050000000E0C0A
        356D3739ACFE5D6BD9FF6775DBFF6976DDFF6B79DDFF6E7CDDFF6D7BDDFF6875
        DCFF6371DAFF5F6ED9FF5564D6FF2F30A7FE0A08336F00000010000000060000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000050000000E0D0C366B4647
        B3FD7987E1FF7987E2FF7886E1FF7885E1FF7684E0FF7583E0FF7381E0FF7280
        DFFF707DDFFF6E7CDEFF6D7BDDFF6977DCFF3A3BABFE0C09346E000000100000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000050000000D0F0D386A4B4CB6FD808E
        E3FF808EE4FF7F8DE4FF7E8CE4FF7E8BE3FF7C8AE3FFA0B0EDFFA4B4EEFF7F8C
        E4FF7683E1FF7483E0FF7280E0FF717FDFFF6E7BDDFF3F40B0FE0D0B366D0000
        000F000000060000000200000001000000000000000000000000000000000000
        00000000000000000001000000040000000C100F396A5051BAFD8694E6FF8795
        E7FF8694E6FF8593E6FF8592E6FF8491E6FFA6B7EFFF7B80D5FF7B80D5FFAABB
        F0FF8491E6FF7B89E3FF7886E2FF7684E2FF7482E1FF717FE0FF4445B4FE0F0E
        386C0000000E0000000500000001000000000000000000000000000000000000
        000000000001000000030000000A12113B685658BEFD8C9AE8FF8D9BE9FF8D9A
        E9FF8C9AE9FF8C99E8FF8A98E8FFACBDF2FF7F84D8FF201F4D79201E4D797E84
        D6FFAEBFF2FF8795E7FF7E8DE5FF7C8AE3FF7A88E3FF7785E2FF7483E1FF474A
        B8FD110F396B0000000D00000005000000010000000000000000000000000000
        00000000000200000007121138605A5CBFFD93A0EBFF93A1EBFF93A1EBFF92A0
        EBFF929FEAFF919FEAFFB1C3F3FF8288DAFF211F4E7400000010000000102120
        4E758187D9FFB1C2F3FF8B99E9FF818FE6FF7F8EE5FF7D8CE5FF7A89E4FF7886
        E2FF4B4EBCFD1210386300000009000000020000000000000000000000000000
        00000000000302020510605FBBF1A1ACECFF99A7EDFF99A7EDFF99A7EDFF98A6
        EDFF97A5ECFFB6C8F5FF848BDCFF21214F730000000C00000006000000060000
        000C21204F748389DAFFB5C5F4FF8E9CEBFF8593E7FF8291E7FF808FE7FF7D8C
        E6FF7B89E3FF615EBCF402020513000000030000000000000000000000000000
        0000000000020202030C7C7CD3F7BCCDF6FFA4B1F0FF9EACEFFF9EACEFFF9DAC
        EEFFBBCCF6FF878EDDFF232251730000000B0000000400000001000000010000
        00040000000B22214F73848BDCFFB8C8F5FF919FEBFF8796E8FF8594E9FF8391
        E7FFA6B7F0FF7775CFF70101030F000000030000000000000000000000000000
        00000000000100000006252555728C94E1FFC4D5F8FFAAB8F1FFA5B3F0FFBFD1
        F8FF8A91DFFF232352710000000A000000040000000100000000000000000000
        0001000000040000000B23225073878EDDFFBACBF6FF95A3ECFF8B9AEBFFB0C2
        F4FF868DDDFF2322537500000008000000020000000000000000000000000000
        000000000001000000030000000828285A788C94E2FFD1E4FBFFD1E4FBFF8A92
        E0FF252555730000000900000003000000010000000000000000000000000000
        000000000001000000040000000A23235172878FDFFFCDE0FAFFCCDFFAFF878F
        DEFF2626587B0000000B00000004000000010000000000000000000000000000
        0000000000000000000100000003000000072626536E8485D9F78385D9F72424
        516C000000080000000300000001000000000000000000000000000000000000
        0000000000000000000100000004000000092323506D8181D6F78080D6F72323
        52710000000A0000000400000001000000000000000000000000000000000000
        0000000000000000000000000001000000020000000500000007000000070000
        0005000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000030000000600000009000000090000
        0007000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000002000000020000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnEliminarInasistenciaClick
    end
    object dxBtnEditarInasistencia: TdxBarLargeButton
      Caption = '&Editar Inasistencia'
      Category = 0
      Hint = 'Editar Inasistencia'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        000B000000160000001A000000140000000D0000000700000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000050000
        0015452E26FF241510DA100A0788020101340000001B00000010000000080000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000060000
        00184E382ED7A07C6FFF544649FF2A2D47F716254FB3070C1A57000000180000
        000B000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000002000000050000
        0013281D198082706CFFADCAE6FF7492BFFF425D99FF2E478AFF101D3F9B0000
        001D0000000C0000000400000002000000010000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000010000
        0002000000040000000500000005000000050000000500000005000000070000
        00100504032F555974F6DBE3EFFFA2C2E2FF7896C2FF536DA2FF315194FF071A
        439C0000001F0000001000000008000000060000000500000005000000050000
        0005000000040000000300000001000000000000000000000000000000040000
        00090000000F0000001200000013000000140000001400000014000000150000
        001A00000027283C63B18B9FC7FFCED9E9FF2084DBFF51A9E2FF1552AAFF154B
        9EFF081B44A20000002D0000001F000000180000001700000016000000150000
        0014000000110000000A00000004000000010000000000000000000000093125
        2157A47A6CF0AF8373FFAF8273FFAE8273FFAE8272FFAE8272FFAD8172FFAB7E
        70FFBD9D93FFA09AA2FF4B6CABFFFFFFFFFF4DA3E5FF2389DFFF56ADE3FF1658
        ACFF174FA0FF5F6A8FFFC0ABA5FFB8988CFFA97C6CFFAA7D6DFFAA7C6CFFAA7C
        6CFFA27567F530231E590000000A0000000200000000000000000000000E9F78
        6AE7E4D3CBFFF8F1EDFFF8F1EDFFF8F1EDFFF7F1EDFFF8F1EDFFF8F1EDFFF7F0
        EBFFF4EDEAFFE9E6E5FF8C9DBDFF6990C2FFC2E5F8FF50A7E6FF2791E0FF5DB1
        E5FF1A5DAFFF1953A4FF7084ACFFE4E1DFFFF0EAE8FFF5EEE9FFF7F0EBFFF8F1
        ECFFE2D0C8FF987061E8000000100000000400000001000000000000000FB388
        78FFF8F1EDFFF5EDE7FFF5ECE6FFF5ECE7FFF5EDE7FFF5ECE7FFF6ECE7FFF4EC
        E6FFF3EAE5FFF0EAE6FFE6E3E0FF82A1C3FF4590D0FFC7E8F8FF56AEE7FF2C97
        E1FF62B5E6FF1B62B2FF1B57A6FF7286AEFFE4E1DEFFEFE9E4FFF2E9E3FFF4EB
        E5FFF8F1ECFFAC7E6EFF000000120000000500000001000000000000000FB48A
        7AFFF8F3EFFFF6EDE8FFF5EEE8FFF6EDE8FFF5EDE8FFF6EDE7FFF5EDE8FFF6ED
        E8FFF5ECE7FFF4EBE5FFF1EAE6FFE7E4E2FF84A5C6FF4895D2FFCBEBFAFF5AB4
        EBFF319DE4FF67BAE7FF1E65B6FF1D5DA9FF748AB0FFE5E2DFFFEFE9E5FFF3EB
        E5FFF7F1EDFFAD8070FF000000120000000400000001000000000000000FB68C
        7DFFFAF3F0FFF6EEE8FFF6EFE9FFF6EEE9FFF6EEE9FFF6EEE9FFF6EEE9FFF6EE
        E9FFF6EEE9FFF5EDE8FFF4ECE7FFF1EBE7FFE9E6E3FF87A8C8FF4C9AD4FFCFEE
        FBFF60B9EDFF36A5E9FF6EBEE8FF206BB9FF2061ADFF768EB4FFE8E4E2FFEDE6
        E0FFF6F1EDFFAD8173FF000000120000000400000001000000000000000EB88E
        7FFFFAF4F1FFF7EFEAFFF9F5F1FFFAF5F1FFFAF5F1FFF9F5F1FFFAF4F1FFFAF5
        F1FFF9F5F1FFF9F5F1FFF9F5F1FFF8F3EFFFF4F1EEFFEBE8E5FF88ABCAFF4F9F
        D7FFD3F0FCFF64BEEFFF3BABEBFF72C2EAFF2371BCFF2266AFFF7991B6FFE6DD
        D9FFF1EBE8FFAE8374FF000000120000000400000001000000000000000DB991
        81FFFAF5F2FFF7F0EBFF96796EFF8F6F63FF8E6F63FF8D6E62FF8D6E62FF8D6D
        61FF8C6D61FF8C6C60FF8C6C60FF8B6B5FFF907267FFF2EDE9FFECE8E7FF7F9C
        B7FF52A3D8FFD6F2FCFF6AC5F0FF42B2EBFF77C6ECFF2677C0FF256BB4FF7991
        B6FFE8E4E1FFC0A096FF000000120000000500000001000000000000000CBB93
        85FFFAF6F4FFF8F1ECFFB19B91FF907266FF907165FF8F7065FF8F6F64FF8F6F
        63FF8E6F63FF8D6E62FF8D6D61FF8D6D61FFAD948BFFF5EEEAFFF4EFECFFEFEB
        E9FF8DB2D0FF56A8DAFFD9F4FDFF89D5F6FF47BBEFFF7BCBECFF2A7DC1FF2871
        B7FF878891FFCCB8B1FF000000150000000600000001000000000000000BBC96
        87FFFAF7F4FFF8F1EEFFF4EEE9FFCAB9B2FF9A7E72FF917366FF907266FF9072
        66FF907165FF8F7064FF977A6EFFC9B7AFFFF3ECE6FFF8F1EDFFF7F0ECFFD0B3
        A6FFD7C5BDFF84A1BCFF5AADDCFFDCF6FDFF74CFF6FF4CC0F0FF80D0EEFF7877
        7BFF794A3AFF8A695FFF0000001B0000000900000003000000000000000ABE98
        89FFFBF8F5FFF9F2F0FFF8F2EFFFF9F3EFFFF5EFEAFFC1AFA7FF937468FF9274
        67FF917367FFBFADA5FFF4EEEAFFF8F3EFFFF8F2EEFFF8F2EFFFF9F2EFFFF7F1
        EDFFF6F1EEFFF1EEECFF92B8D5FF5DB0DEFFDEF8FEFF7AD6F7FF90B9C5FFD8C1
        B3FF996B59FF815141FF190D22920000000F000000060000000100000009C09B
        8CFFFBF8F6FFF8F3F1FFF9F3F0FFF9F3F0FFF9F3F0FFC2B0A9FF94776BFF9476
        6AFF937669FFC8B7AFFFF9F3F0FFF9F3F0FFF8F4F0FFF9F3EFFFF8F3EFFFC7A1
        90FFC6A08FFFD2B6A9FFDBC9C0FF88A7C0FF60B4E0FFE7F7F9FFDBC3B1FFCFB3
        9FFFDBC5B8FF584B8BFF212095FF0A0A3D8C0000000B0000000400000008C29D
        8EFFFCF9F7FFF9F4F2FFFAF5F2FFF9F4F2FFFAF5F2FFA2897EFF96796DFF9578
        6CFF95776BFFA68E84FFFAF5F3FFF9F5F1FFF9F4F1FFF9F4F1FFF9F4F1FFF9F4
        F1FFF9F4F1FFF8F3F0FFF7F4F1FFF4F2F0FFA9AFB9FFB58F7EFFFAF0E2FFDFC8
        B6FF9A97C5FF8791E3FF2B2EAAFF25259CFF0F0F45890000000600000007C39F
        91FFFCF9F8FFF9F5F3FFFAF5F3FFFAF5F2FFDFD5D0FF997C72FF977A6FFF967A
        6FFF96796EFF9C8175FFDED4CEFFFAF5F2FFFAF5F2FFFAF5F3FFFAF5F2FFC9A5
        94FFC9A494FFC9A493FFC7A292FFD3B9ABFFDECBC3FFC3A79FFFBC9788FFF6EE
        E7FF8B9FEDFF6275E1FF98A2E7FF7B85D0FF272A96FF0000000700000007C4A1
        93FFFCFAF9FFFAF6F4FFFBF6F4FFFAF6F4FFB19D93FF9C8176FF997D70FF987C
        70FF987C6FFFA0867BFFB09990FFFAF6F4FFFBF6F4FFFAF6F4FFFAF6F3FFFAF6
        F3FFFAF6F3FFFAF6F4FFFAF6F3FFF9F5F3FFF9F5F4FFF7F5F3FFB1A5BDFF6B78
        D4FFDBE7FCFF8BA0EEFFACC0F3FF4E57C3FF21235A840000000400000006C6A3
        95FFFDFBFAFFFAF7F6FFFBF7F5FFFAF7F5FFA88F84FF9C8176FF9A7E72FF997E
        72FF997E71FF997D71FFA58B80FFFAF7F5FFFAF7F5FFFAF7F5FFFAF7F5FFCBA8
        98FFCAA797FFCAA796FFCAA796FFC9A696FFCAA595FFF9F7F5FFF9F7F6FFA0A3
        D8FF7180DAFFDCE8FCFF6675D7FF262A6084000000050000000200000005C7A5
        97FFFDFBFBFFFBF8F7FFFBF8F6FFFBF8F6FFBAA79EFF9C8074FF9B8074FF9B7F
        73FF9B7F73FF9A7F73FFB19B92FFFBF8F6FFFBF8F6FFFBF7F6FFFAF7F6FFFAF8
        F6FFFBF8F6FFFBF7F6FFFBF8F6FFFBF7F6FFFBF7F6FFFBF7F5FFFBF8F7FFF8F4
        F2FFA8ACE1FF5761CEFF2C31668500000006000000020000000100000004C9A7
        99FFFDFCFBFFFBF9F8FFFCF9F8FFFCF8F7FFF5F0EFFFC3B2AAFFAF998FFF9F85
        7AFF9E8477FFBAA69EFFF0EBE8FFFBF9F7FFFBF8F8FFFBF9F7FFFBF9F7FFCDAB
        9AFFCCAB99FFCCAA9AFFCCA999FFCBA999FFCBA998FFFBF8F7FFFBF8F7FFFAF7
        F6FFFBF9F9FFCFB4A9FF0000000900000003000000000000000000000003CAA9
        9AFFFDFCFCFFFCF9F8FFFCFAF9FFFCF9F8FFFBF9F8FFFCFAF9FFFBF9F9FFFCFA
        F8FFFBF9F8FFFCF9F9FFFCF9F8FFFBF9F8FFFCFAF9FFFCF9F8FFFBF9F8FFFBFA
        F9FFFCF9F8FFFBF9F9FFFCF9F8FFFBF9F8FFFCF9F7FFFBF9F8FFFCF9F8FFFBF9
        F8FFFDFCFBFFC4A090FF0000000600000001000000000000000000000003CCAB
        9CFFFDFCFCFFFCFBFAFFFCFBF9FFFCFAFAFFFCFAFAFFFCFAFAFFFCFAF9FFFCFA
        F9FFFCFBF9FFFCFAF9FFFCFBF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFAFAFFFCFA
        F9FFFCFAF9FFFCFAF9FFFCFAF9FFFCF9F9FFFCFAF9FFFBFAF9FFFCF9F9FFFCF9
        F9FFFDFCFCFFC5A193FF0000000500000001000000000000000000000002CCAB
        9EFFFEFDFDFFFDFBFBFFFCFBFAFFFCFAFAFFFCFBFAFFFCFBFAFFFCFBFBFFFCFB
        FAFFFCFBFAFFFCFAFAFFFCFAFAFFFCFBFBFFFCFAFAFFFDFBFAFFFCFBFAFFFCFA
        FAFFFCFBFAFFFCFAFAFFFCFBFAFFFDFBFAFFFCFBFAFFFCFBFAFFFCFAFAFFFCFA
        FAFFFDFCFCFFC7A495FF0000000400000001000000000000000000000001BA9D
        90E7F1E8E5FFFEFDFDFFFDFDFDFFFDFDFDFFFEFDFDFFFDFDFDFFFEFDFDFFFEFD
        FDFFFEFDFDFFFEFDFDFFFDFDFDFFFEFDFDFFFDFDFDFFFDFDFCFFFEFDFDFFFEFD
        FCFFFDFDFCFFFDFDFDFFFEFDFDFFFEFDFCFFFEFDFDFFFDFDFCFFFDFDFDFFFEFD
        FCFFEFE6E3FFB59688E80000000300000001000000000000000000000000342D
        2940B1988DD6D3B5A8FFD3B5A8FFD3B5A8FFD3B5A7FFD3B4A7FFD3B4A7FFD2B4
        A7FFD2B4A7FFD2B4A6FFD2B4A7FFD2B4A6FFD2B4A6FFD2B3A6FFD2B3A6FFD1B3
        A5FFD1B2A5FFD1B2A5FFD1B2A5FFD0B2A4FFD0B1A4FFD0B1A4FFD0B1A3FFD0B0
        A3FFB69A8FE1332B284100000001000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnEditarInasistenciaClick
    end
    object CxCheckInasistencias: TcxBarEditItem
      Caption = '&Ver Inasistencias'
      Category = 0
      Hint = 'Ver Inasistencias'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = True
    end
    object CxCheckRetardos: TcxBarEditItem
      Caption = '&Ver Retardos'
      Category = 0
      Hint = 'Ver Retardos'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = True
    end
    object btn1: TdxBarLargeButton
      Caption = 'Configurar Tolerancias'
      Category = 0
      Hint = 'Configurar Tolerancias'
      Visible = ivAlways
    end
    object dxBtnImprimirSeleccionado: TdxBarLargeButton
      Caption = '&Imprimir retardos e inasistencias de este empleado'
      Category = 0
      Hint = 'Imprimir retardos e inasistencias de este empleado'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000030000000C000000120000001400000014000000150000
        0015000000140000000D00000003000000000000000000000000000000000000
        00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
        78FFBE8978FF876356C30000000B000000000000000000000000000000030000
        000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
        E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
        42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
        72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
        6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
        76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
        71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
        78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
        DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
        7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
        32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
        86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
        42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
        8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
        DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
        84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
        E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
        2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
        E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
        0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
        E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
        00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
        EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
        00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
        FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
        000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
        91FFCDA391FF98786BC100000004000000000000000000000000}
      OnClick = dxBtnImprimirSeleccionadoClick
    end
  end
  object dxPopup1: TdxRibbonPopupMenu
    BarManager = DxManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBtnAgregar'
      end
      item
        Visible = True
        ItemName = 'dxBtnEditar'
      end
      item
        Visible = True
        ItemName = 'dxBtnEliminar'
      end
      item
        Visible = True
        ItemName = 'dxBtnListado'
      end>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 232
    Top = 336
  end
  object cdExcepcion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 480
  end
  object cdExcepcionUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 496
  end
  object dsExcepcion: TDataSource
    Left = 600
    Top = 496
  end
  object dsExcepcionUpt: TDataSource
    DataSet = cdExcepcionUpt
    Left = 648
    Top = 488
  end
  object cxStyleReposEstilosGrid: TcxStyleRepository
    Left = 400
    Top = 328
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxstylFont: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
    end
    object cxstylFontContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
    end
    object cxstylSexo: TcxStyle
      AssignedValues = [svBitmap]
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000010000
        000300000006000000080000000B0000000D0000000E0000000F0000000F0000
        00100000000F0000000E0000000C000000090000000500000001000000030310
        2141082852920A346DBD0C3A7AD30E4797FF0E4595FF0D4594FF0D4393FF0C43
        91FF0B428FFF083471D6072D63C105214A99020D1D4900000006000000071354
        A7FF267BCDFF2683D8FF2889DEFF2C96ECFF2994ECFF2792EAFF2490E9FF238E
        E8FF228DE8FF1D7ED7FF1B76CFFF176AC0FF0D4494FF0000000D000000061453
        A1E965BCF2FF4EB1F5FF37A3F2FF36A2F1FF359FF1FF339FF0FF319CF0FF309B
        EFFF2E98EEFF2D97EDFF339BEDFF389BE8FF0F4791EE0000000C000000030C2D
        567B307AC7FF60AEE6FF74CBFAFF4BACF1FF2E7CCAFF2565B4FF225EABFF266C
        B9FF3FA0E9FF56B5F5FF4098DEFF2169BAFF0929518800000006000000000000
        00030616293C134884B32D79C9FF5094D1FF67A0D6FF72A5D4FF5E89BFFF3C68
        ABFF3471B6FF246EBFFF10427DBA051528460000000700000001000000000000
        00000000000100000003051221321A5594CC5181B4FF325994FF2C538FFF315A
        97FF164D8DCD04111F3600000007000000030000000100000000000000000000
        0000000000000000000000000007121F336B4572ACFF659FD7FF629CD6FF3968
        A5FF0B192F6F0000000800000000000000000000000000000000000000000000
        000000000000000000010000000E2B466EC379AFDAFF90CCF5FF77B4E8FF5991
        CBFF1D3A66CA0000000E00000001000000000000000000000000000000000000
        0000000000000101010315253F8A36598DF8BAE1F6FFBDE6FCFF8CC9F2FF69A5
        DBFF21447AF70D19349501010103000000000000000000000000000000000000
        000000000000010101052A4B7DE2385F95FFD5F0FBFFD1EDFBFF94CFF3FF6DA7
        DDFF24467DFF172C59E201010105000000000000000000000000000000000000
        0000000000000101010538649EFA3C6CA8FFBAD7E9FF698EB7FF325A91FF2B50
        86FF28518FFE1D3869FA01010105000000000000000000000000000000000000
        00000000000001010104386498DC539CE0FF497BB7FF5390CDFF4E8FD3FF3C76
        C1FF396CB1FF223F72FF01010105000000000000000000000000000000000000
        000000000000010101021525374D4B84C2F17FB9E7FF86BDE9FF8DC4EEFF75A8
        DAFF5683B8FF1C3359BF01010104000000000000000000000000000000000000
        00000000000000000000010101020E16202B37618DB03D6B9FD24276B3FF3054
        85D51C3251930305071200000001000000000000000000000000000000000000
        0000000000000000000000000000000000010101010301010105010101050101
        0104010101030000000100000000000000000000000000000000}
    end
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 480
  end
  object dsPersonal: TDataSource
    DataSet = cdPersonal
    Left = 704
    Top = 496
  end
  object FrxDbRetardos: TfrxDBDataset
    UserName = 'FrxDbRetardos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdExcepcion=IdExcepcion'
      'IdPersonal=IdPersonal '
      'NombreCompleto=NombreCompleto'
      'Fecha=Fecha'
      'hora=hora'
      'Tipo=Tipo'
      'Comentarios=Comentarios'
      'AplicaDescuento=AplicaDescuento'
      'monto=monto'
      'horarios=horarios'
      'montoXMinuto=montoXMinuto'
      'SalarioDiario=SalarioDiario'
      'MontoMinuto=MontoMinuto')
    DataSet = cdReporteMemoria
    BCDToCurrency = False
    Left = 544
    Top = 376
  end
  object FrxReportRetardos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42072.790320370400000000
    ReportOptions.LastChange = 42124.764307407400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = FrxReportRetardosGetValue
    OnReportPrint = 'no '
    Left = 712
    Top = 288
    Datasets = <
      item
        DataSet = FrxCdDatosEmpresa
        DataSetName = 'FrxCdDatosEmpresa'
      end
      item
        DataSet = FrxDbRetardos
        DataSetName = 'FrxDbRetardos'
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        StartNewPage = True
        object Memo2: TfrxMemoView
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE RETARDOS')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor1: TfrxMemoView
          Left = 154.960730000000000000
          Top = 33.354360000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor1'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor1"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor2: TfrxMemoView
          Left = 211.653680000000000000
          Top = 51.913420000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor2'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor2"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor3: TfrxMemoView
          Left = 211.653680000000000000
          Top = 70.811070000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor3'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor3"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor4: TfrxMemoView
          Left = 468.661720000000000000
          Top = 51.692949999999990000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor4'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor4"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor5: TfrxMemoView
          Left = 468.661720000000000000
          Top = 72.370130000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor5'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor5"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 411.968770000000000000
          Top = 51.692949999999990000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 411.968770000000000000
          Top = 71.590600000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 154.960730000000000000
          Top = 51.133889999999990000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 154.960730000000000000
          Top = 70.031540000000010000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 26.456710000000000000
          Width = 124.724490000000000000
          Height = 79.370130000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118110240000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        DataSet = FrxDbRetardos
        DataSetName = 'FrxDbRetardos'
        RowCount = 0
        object FrxDbRetardoshora: TfrxMemoView
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'hora'
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          DisplayFormat.FormatStr = 'hh:mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."hora"]')
          ParentFont = False
        end
        object FrxDbRetardosTipo: TfrxMemoView
          Left = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'Tipo'
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."Tipo"]')
          ParentFont = False
        end
        object FrxDbRetardosComentarios: TfrxMemoView
          Left = 136.063080000000000000
          Width = 302.362400000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'Comentarios'
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."Comentarios"]')
          ParentFont = False
        end
        object FrxDbRetardosAplicaDescuento: TfrxMemoView
          Left = 438.559370000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'AplicaDescuento'
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."AplicaDescuento"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 495.118430000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbRetardos."monto"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 389.291590000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 665.197280000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 21.118120000000000000
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        Condition = 'FrxDbRetardos."Fecha"'
        object FrxDbRetardosFecha: TfrxMemoView
          Top = 4.000000000000000000
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          DisplayFormat.FormatStr = 'mmmm dd, aaaa'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbRetardos."Fecha"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 15.118120000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        Condition = 'FrxDbRetardos."IdPersonal "'
        object Memo11: TfrxMemoView
          Left = 158.740260000000000000
          Width = 3.779530000000000000
          Height = 15.118110240000000000
          Visible = False
          ShowHint = False
          Color = clBtnFace
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."IdPersonal "]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 173.858380000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."NombreCompleto"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 184.212740000000000000
          Width = 321.260050000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."horarios"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 506.457020000000000000
          Width = 328.819110000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."montoXMinuto"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 16.897650000000000000
        Top = 272.126160000000000000
        Width = 740.409927000000000000
        ReprintOnNewPage = True
        object Memo4: TfrxMemoView
          Top = 0.779530000000022500
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 56.692950000000000000
          Top = 0.779530000000022500
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Movimiento')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 136.063080000000000000
          Top = 0.779530000000022500
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Comentarios')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 438.559370000000000000
          Top = 0.779530000000022500
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Aplica Desc.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 495.118430000000000000
          Top = 0.779530000000022500
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'Monto')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle2: TfrxReportTitle
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        StartNewPage = True
        object Memo17: TfrxMemoView
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE RETARDOS')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 154.960730000000000000
          Top = 33.354360000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor1'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor1"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 211.653680000000000000
          Top = 51.913420000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor2'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor2"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 211.653680000000000000
          Top = 70.811070000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor3'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor3"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 468.661720000000000000
          Top = 51.692949999999990000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor4'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor4"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 468.661720000000000000
          Top = 72.370130000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor5'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor5"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 411.968770000000000000
          Top = 51.692949999999990000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 411.968770000000000000
          Top = 71.590600000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 154.960730000000000000
          Top = 51.133890000000010000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 154.960730000000000000
          Top = 70.031540000000010000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Top = 26.456710000000000000
          Width = 124.724490000000000000
          Height = 79.370130000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object DBCross1: TfrxDBCrossView
        Left = 7.559060000000000000
        Top = 132.283464570000000000
        Width = 260.000000000000000000
        Height = 115.000000000000000000
        ShowHint = False
        CellLevels = 2
        ColumnLevels = 2
        DownThenAcross = False
        PlainCells = True
        RowLevels = 3
        ShowColumnTotal = False
        ShowRowTotal = False
        CellFields.Strings = (
          'hora'
          'monto')
        ColumnFields.Strings = (
          'Fecha'
          'Tipo')
        DataSet = FrxDbRetardos
        DataSetName = 'FrxDbRetardos'
        RowFields.Strings = (
          'NombreCompleto'
          'SalarioDiario'
          'MontoMinuto')
        Memos = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
          662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
          6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223138382E
          35353930362220546F703D223231322E3238333436343537222057696474683D
          22333422204865696768743D22313522205265737472696374696F6E733D2232
          34222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
          696F6E733D2246616C73652220446973706C6179466F726D61742E466F726D61
          745374723D2268683A6D6D20616D2F706D2220446973706C6179466F726D6174
          2E4B696E643D22666B4461746554696D652220466F6E742E436861727365743D
          22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
          2D372220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
          3D223022204672616D652E5479703D22313522204672616D652E57696474683D
          22302E352220476170583D22332220476170593D2233222048416C69676E3D22
          686152696768742220506172656E74466F6E743D2246616C7365222056416C69
          676E3D22766143656E7465722220546578743D2231323A303020616D222F3E3C
          546672784D656D6F56696577204C6566743D223232322E35353930362220546F
          703D223231322E3238333436343537222057696474683D223235222048656967
          68743D22313522205265737472696374696F6E733D223234222053686F774869
          6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
          73652220446973706C6179466F726D61742E466F726D61745374723D2225322E
          326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269
          632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
          302220466F6E742E4865696768743D222D372220466F6E742E4E616D653D2241
          7269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22
          313522204672616D652E57696474683D22302E352220476170583D2233222047
          6170593D2233222048416C69676E3D22686152696768742220506172656E7446
          6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
          78743D2224302E3030222F3E3C546672784D656D6F56696577204C6566743D22
          3231382220546F703D223435222057696474683D22313922204865696768743D
          22313522205265737472696374696F6E733D223234222053686F7748696E743D
          2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
          20466F6E742E436861727365743D22312220466F6E742E436F6C6F723D223022
          20466F6E742E4865696768743D222D372220466F6E742E4E616D653D22417269
          616C2220466F6E742E5374796C653D223022204672616D652E5479703D223135
          22204672616D652E57696474683D22302E352220476170583D22332220476170
          593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
          743D2246616C7365222056416C69676E3D22766143656E746572222054657874
          3D2230222F3E3C546672784D656D6F56696577204C6566743D22323434222054
          6F703D223839222057696474683D22333422204865696768743D223232222052
          65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
          2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
          2E5479703D2231352220476170583D22332220476170593D2233222048416C69
          676E3D2268615269676874222056416C69676E3D22766143656E746572222054
          6578743D22222F3E3C546672784D656D6F56696577204C6566743D223233342E
          35353930362220546F703D223131352E3535393036222057696474683D223338
          22204865696768743D22323222205265737472696374696F6E733D2232342220
          53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
          733D2246616C736522204672616D652E5479703D2231352220476170583D2233
          2220476170593D2233222048416C69676E3D2268615269676874222056416C69
          676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
          56696577204C6566743D223230322220546F703D223838222057696474683D22
          333822204865696768743D22323222205265737472696374696F6E733D223234
          222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
          6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
          22332220476170593D2233222048416C69676E3D226861526967687422205641
          6C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D65
          6D6F56696577204C6566743D223231332220546F703D22343422205769647468
          3D22383122204865696768743D22323222205265737472696374696F6E733D22
          3234222053686F7748696E743D2246616C73652220416C6C6F77457870726573
          73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
          583D22332220476170593D2233222048416C69676E3D22686152696768742220
          56416C69676E3D22766143656E7465722220546578743D2230222F3E3C546672
          784D656D6F56696577204C6566743D223231332220546F703D22363622205769
          6474683D22383122204865696768743D22323222205265737472696374696F6E
          733D223234222053686F7748696E743D2246616C73652220416C6C6F77457870
          72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
          476170583D22332220476170593D2233222048416C69676E3D22686152696768
          74222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
          546672784D656D6F56696577204C6566743D223232302220546F703D22383922
          2057696474683D22313922204865696768743D22313522205265737472696374
          696F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F77
          45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
          352220476170583D22332220476170593D2233222048416C69676E3D22686152
          69676874222056416C69676E3D22766143656E7465722220546578743D22222F
          3E3C546672784D656D6F56696577204C6566743D223233392220546F703D2238
          39222057696474683D22343422204865696768743D2231352220526573747269
          6374696F6E733D223234222053686F7748696E743D2246616C73652220416C6C
          6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
          2231352220476170583D22332220476170593D2233222048416C69676E3D2268
          615269676874222056416C69676E3D22766143656E7465722220546578743D22
          222F3E3C546672784D656D6F56696577204C6566743D223231332220546F703D
          22313332222057696474683D22383122204865696768743D2232322220526573
          7472696374696F6E733D223234222053686F7748696E743D2246616C73652220
          416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222048416C69676E
          3D2268615269676874222056416C69676E3D22766143656E7465722220546578
          743D2230222F3E3C546672784D656D6F56696577204C6566743D223231332220
          546F703D22313534222057696474683D22383122204865696768743D22323222
          205265737472696374696F6E733D223234222053686F7748696E743D2246616C
          73652220416C6C6F7745787072657373696F6E733D2246616C73652220467261
          6D652E5479703D2231352220476170583D22332220476170593D223322204841
          6C69676E3D2268615269676874222056416C69676E3D22766143656E74657222
          20546578743D2230222F3E3C546672784D656D6F56696577204C6566743D2230
          2220546F703D2230222057696474683D223022204865696768743D2230222052
          65737472696374696F6E733D2238222053686F7748696E743D2246616C736522
          20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
          5479703D2231352220476170583D22332220476170593D2233222048416C6967
          6E3D2268615269676874222056416C69676E3D22766143656E74657222205465
          78743D22222F3E3C546672784D656D6F56696577204C6566743D22302220546F
          703D2230222057696474683D223022204865696768743D223022205265737472
          696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
          6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
          2231352220476170583D22332220476170593D2233222048416C69676E3D2268
          615269676874222056416C69676E3D22766143656E7465722220546578743D22
          222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D2230
          222057696474683D223022204865696768743D22302220526573747269637469
          6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
          7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
          20476170583D22332220476170593D2233222048416C69676E3D226861526967
          6874222056416C69676E3D22766143656E7465722220546578743D22222F3E3C
          546672784D656D6F56696577204C6566743D22302220546F703D223022205769
          6474683D223022204865696768743D223022205265737472696374696F6E733D
          2238222053686F7748696E743D2246616C73652220416C6C6F77457870726573
          73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
          583D22332220476170593D2233222048416C69676E3D22686152696768742220
          56416C69676E3D22766143656E7465722220546578743D22222F3E3C54667278
          4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
          223022204865696768743D223022205265737472696374696F6E733D22382220
          53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
          733D2246616C736522204672616D652E5479703D2231352220476170583D2233
          2220476170593D2233222048416C69676E3D2268615269676874222056416C69
          676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
          56696577204C6566743D22302220546F703D2230222057696474683D22302220
          4865696768743D223022205265737472696374696F6E733D2238222053686F77
          48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
          616C736522204672616D652E5479703D2231352220476170583D223322204761
          70593D2233222048416C69676E3D2268615269676874222056416C69676E3D22
          766143656E7465722220546578743D22222F3E3C546672784D656D6F56696577
          204C6566743D22302220546F703D2230222057696474683D2230222048656967
          68743D223022205265737472696374696F6E733D2238222053686F7748696E74
          3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
          22204672616D652E5479703D2231352220476170583D22332220476170593D22
          33222048416C69676E3D2268615269676874222056416C69676E3D2276614365
          6E7465722220546578743D22222F3E3C546672784D656D6F56696577204C6566
          743D22302220546F703D2230222057696474683D223022204865696768743D22
          3022205265737472696374696F6E733D2238222053686F7748696E743D224661
          6C73652220416C6C6F7745787072657373696F6E733D2246616C736522204672
          616D652E5479703D2231352220476170583D22332220476170593D2233222048
          416C69676E3D2268615269676874222056416C69676E3D22766143656E746572
          2220546578743D22222F3E3C546672784D656D6F56696577204C6566743D2230
          2220546F703D2230222057696474683D223022204865696768743D2230222052
          65737472696374696F6E733D2238222053686F7748696E743D2246616C736522
          20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
          5479703D2231352220476170583D22332220476170593D2233222048416C6967
          6E3D2268615269676874222056416C69676E3D22766143656E74657222205465
          78743D22222F3E3C546672784D656D6F56696577204C6566743D22302220546F
          703D2230222057696474683D223022204865696768743D223022205265737472
          696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
          6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
          2231352220476170583D22332220476170593D2233222048416C69676E3D2268
          615269676874222056416C69676E3D22766143656E7465722220546578743D22
          222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D2230
          222057696474683D223022204865696768743D22302220526573747269637469
          6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
          7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
          20476170583D22332220476170593D2233222048416C69676E3D226861526967
          6874222056416C69676E3D22766143656E7465722220546578743D22222F3E3C
          546672784D656D6F56696577204C6566743D22302220546F703D223022205769
          6474683D223022204865696768743D223022205265737472696374696F6E733D
          2238222053686F7748696E743D2246616C73652220416C6C6F77457870726573
          73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
          583D22332220476170593D2233222048416C69676E3D22686152696768742220
          56416C69676E3D22766143656E7465722220546578743D22222F3E3C2F63656C
          6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C546672784D656D
          6F56696577204C6566743D223138382E35353930362220546F703D223139372E
          3238333436343537222057696474683D22333422204865696768743D22313522
          205265737472696374696F6E733D2238222053686F7748696E743D2246616C73
          652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
          2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
          2E4865696768743D222D372220466F6E742E4E616D653D22417269616C222046
          6F6E742E5374796C653D223022204672616D652E5479703D2231352220467261
          6D652E57696474683D22302E352220476170583D22332220476170593D223322
          20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
          6E7465722220546578743D22686F7261222F3E3C546672784D656D6F56696577
          204C6566743D223232322E35353930362220546F703D223139372E3238333436
          343537222057696474683D22323522204865696768743D223135222052657374
          72696374696F6E733D2238222053686F7748696E743D2246616C73652220416C
          6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
          7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
          68743D222D372220466F6E742E4E616D653D22417269616C2220466F6E742E53
          74796C653D223022204672616D652E5479703D22313522204672616D652E5769
          6474683D22302E352220476170583D22332220476170593D2233222050617265
          6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
          20546578743D226D6F6E746F222F3E3C546672784D656D6F56696577204C6566
          743D223232302220546F703D223637222057696474683D223139222048656967
          68743D22323222205265737472696374696F6E733D2238222053686F7748696E
          743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
          652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
          302220466F6E742E4865696768743D222D372220466F6E742E4E616D653D2241
          7269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22
          313522204672616D652E57696474683D22302E352220476170583D2233222047
          6170593D22332220506172656E74466F6E743D2246616C7365222056416C6967
          6E3D22766143656E7465722220546578743D22686F7261222F3E3C546672784D
          656D6F56696577204C6566743D223233392220546F703D223637222057696474
          683D22343422204865696768743D22323222205265737472696374696F6E733D
          2238222053686F7748696E743D2246616C73652220416C6C6F77457870726573
          73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
          583D22332220476170593D2233222056416C69676E3D22766143656E74657222
          20546578743D226D6F6E746F222F3E3C546672784D656D6F56696577204C6566
          743D223131382220546F703D22313332222057696474683D2234342220486569
          6768743D22323222205265737472696374696F6E733D2238222053686F774869
          6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
          736522204672616D652E5479703D2231352220476170583D2233222047617059
          3D2233222056416C69676E3D22766143656E7465722220546578743D22686F72
          61222F3E3C546672784D656D6F56696577204C6566743D223131382220546F70
          3D22313534222057696474683D22343422204865696768743D22323222205265
          737472696374696F6E733D2238222053686F7748696E743D2246616C73652220
          416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222056416C69676E
          3D22766143656E7465722220546578743D226D6F6E746F222F3E3C546672784D
          656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
          3022204865696768743D223022205265737472696374696F6E733D2238222053
          686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
          3D2246616C736522204672616D652E5479703D2231352220476170583D223322
          20476170593D2233222056416C69676E3D22766143656E746572222054657874
          3D22686F7261222F3E3C546672784D656D6F56696577204C6566743D22302220
          546F703D2230222057696474683D223022204865696768743D22302220526573
          7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
          6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
          703D2231352220476170583D22332220476170593D2233222056416C69676E3D
          22766143656E7465722220546578743D226D6F6E746F222F3E3C2F63656C6C68
          65616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D
          6F56696577204C6566743D223138382E35353930362220546F703D223136372E
          3238333436343537222057696474683D22353922204865696768743D22313522
          205265737472696374696F6E733D223234222053686F7748696E743D2246616C
          73652220416C6C6F7745787072657373696F6E733D2246616C73652220436F6C
          6F723D222D31363737373230312220446973706C6179466F726D61742E466F72
          6D61745374723D226464206D6D6D20616161612220446973706C6179466F726D
          61742E4B696E643D22666B4461746554696D652220466F6E742E436861727365
          743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
          3D222D372220466F6E742E4E616D653D22417269616C2220466F6E742E537479
          6C653D223122204672616D652E5479703D22313522204672616D652E57696474
          683D22302E352220476170583D22332220476170593D2233222048416C69676E
          3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
          416C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D
          656D6F56696577204C6566743D223138382E35353930362220546F703D223138
          322E3238333436343537222057696474683D22353922204865696768743D2231
          3522205265737472696374696F6E733D223234222053686F7748696E743D2246
          616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222043
          6F6C6F723D222D31363737373230312220466F6E742E436861727365743D2231
          2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D37
          2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
          3122204672616D652E5479703D22313522204672616D652E57696474683D2230
          2E352220476170583D22332220476170593D2233222048416C69676E3D226861
          43656E7465722220506172656E74466F6E743D2246616C7365222056416C6967
          6E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E6D65
          6D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F56
          696577204C6566743D223231332220546F703D223232222057696474683D2238
          3122204865696768743D22323222205265737472696374696F6E733D22382220
          56697369626C653D2246616C7365222053686F7748696E743D2246616C736522
          20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
          6861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48
          65696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F
          6E742E5374796C653D223122204672616D652E5479703D223135222047617058
          3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
          506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
          7465722220546578743D224772616E6420546F74616C222F3E3C546672784D65
          6D6F56696577204C6566743D223233342E35353930362220546F703D2237312E
          3535393036222057696474683D22333822204865696768743D22343422205265
          737472696374696F6E733D2238222056697369626C653D2246616C7365222053
          686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
          3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
          6F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E
          4E616D653D22417269616C2220466F6E742E5374796C653D223122204672616D
          652E5479703D2231352220476170583D22332220476170593D2233222048416C
          69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
          222056416C69676E3D22766143656E7465722220546578743D22546F74616C22
          2F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65726D656D6F
          733E3C546672784D656D6F56696577204C6566743D2232372E35353930362220
          546F703D223135322E3238333436343537222057696474683D22313631222048
          65696768743D22313522205265737472696374696F6E733D2238222053686F77
          48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
          616C73652220436F6C6F723D222D31363737373230312220466F6E742E436861
          727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
          6768743D222D372220466F6E742E4E616D653D22417269616C2220466F6E742E
          5374796C653D223122204672616D652E5479703D22313522204672616D652E57
          696474683D22302E352220476170583D22332220476170593D2233222048416C
          69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
          222056416C69676E3D22766143656E7465722220546578743D22526567697374
          726F206465207265746172646F73206520696E6173697374656E636961732E22
          2F3E3C546672784D656D6F56696577204C6566743D223138382E353539303622
          20546F703D223135322E3238333436343537222057696474683D223539222048
          65696768743D22313522205265737472696374696F6E733D2238222053686F77
          48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
          616C73652220436F6C6F723D222D31363737373230312220466F6E742E436861
          727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
          6768743D222D372220466F6E742E4E616D653D22417269616C2220466F6E742E
          5374796C653D223122204672616D652E5479703D22313522204672616D652E57
          696474683D22302E352220476170583D22332220476170593D2233222048416C
          69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
          222056416C69676E3D22766143656E7465722220546578743D2246656368612C
          205469706F222F3E3C546672784D656D6F56696577204C6566743D2231383322
          20546F703D223135222057696474683D22323522204865696768743D22313522
          205265737472696374696F6E733D2238222056697369626C653D2246616C7365
          222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
          6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
          742E436F6C6F723D22302220466F6E742E4865696768743D222D372220466F6E
          742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
          616D652E5479703D22313522204672616D652E57696474683D22302E35222047
          6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
          722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
          43656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C
          6566743D2232372E35353930362220546F703D223136372E3238333436343537
          222057696474683D22363222204865696768743D223435222052657374726963
          74696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77
          45787072657373696F6E733D2246616C73652220436F6C6F723D222D31363737
          373230312220466F6E742E436861727365743D22312220466F6E742E436F6C6F
          723D22302220466F6E742E4865696768743D222D372220466F6E742E4E616D65
          3D22417269616C2220466F6E742E5374796C653D223122204672616D652E5479
          703D22313522204672616D652E57696474683D22302E352220476170583D2233
          2220476170593D2233222048416C69676E3D22686143656E7465722220506172
          656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
          2220546578743D224E6F6D627265436F6D706C65746F222F3E3C546672784D65
          6D6F56696577204C6566743D2238392E35353930362220546F703D223136372E
          3238333436343537222057696474683D22343922204865696768743D22343522
          205265737472696374696F6E733D2238222053686F7748696E743D2246616C73
          652220416C6C6F7745787072657373696F6E733D2246616C73652220436F6C6F
          723D222D31363737373230312220466F6E742E436861727365743D2231222046
          6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D37222046
          6F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22312220
          4672616D652E5479703D22313522204672616D652E57696474683D22302E3522
          20476170583D22332220476170593D2233222048416C69676E3D22686143656E
          7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
          766143656E7465722220546578743D2253616C6172696F2044696172696F222F
          3E3C546672784D656D6F56696577204C6566743D223133382E35353930362220
          546F703D223136372E3238333436343537222057696474683D22353022204865
          696768743D22343522205265737472696374696F6E733D2238222053686F7748
          696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
          6C73652220436F6C6F723D222D31363737373230312220466F6E742E43686172
          7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
          68743D222D372220466F6E742E4E616D653D22417269616C2220466F6E742E53
          74796C653D223122204672616D652E5479703D22313522204672616D652E5769
          6474683D22302E352220476170583D22332220476170593D2233222048416C69
          676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
          2056416C69676E3D22766143656E7465722220546578743D224D6F6E746F204D
          696E75746F222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E
          3C546672784D656D6F56696577204C6566743D2232372E35353930362220546F
          703D223231322E3238333436343537222057696474683D223632222048656967
          68743D22313522205265737472696374696F6E733D223234222053686F774869
          6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
          73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
          22302220466F6E742E4865696768743D222D372220466F6E742E4E616D653D22
          417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D
          22313522204672616D652E57696474683D22302E352220476170583D22332220
          476170593D2233222048416C69676E3D22686143656E7465722220506172656E
          74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
          546578743D22222F3E3C546672784D656D6F56696577204C6566743D2238392E
          35353930362220546F703D223231322E3238333436343537222057696474683D
          22343922204865696768743D22313522205265737472696374696F6E733D2232
          34222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
          696F6E733D2246616C73652220446973706C6179466F726D61742E466F726D61
          745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D
          22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E
          742E436F6C6F723D22302220466F6E742E4865696768743D222D372220466F6E
          742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
          616D652E5479703D22313522204672616D652E57696474683D22302E35222047
          6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
          722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
          43656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C
          6566743D223133382E35353930362220546F703D223231322E32383334363435
          37222057696474683D22353022204865696768743D2231352220526573747269
          6374696F6E733D223234222053686F7748696E743D2246616C73652220416C6C
          6F7745787072657373696F6E733D2246616C73652220446973706C6179466F72
          6D61742E466F726D61745374723D2225322E346D2220446973706C6179466F72
          6D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365
          743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
          3D222D372220466F6E742E4E616D653D22417269616C2220466F6E742E537479
          6C653D223022204672616D652E5479703D22313522204672616D652E57696474
          683D22302E352220476170583D22332220476170593D2233222048416C69676E
          3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
          416C69676E3D22766143656E7465722220546578743D22222F3E3C2F726F776D
          656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F566965
          77204C6566743D22302220546F703D22313130222057696474683D2231313822
          204865696768743D22363622205265737472696374696F6E733D223822205669
          7369626C653D2246616C7365222053686F7748696E743D2246616C7365222041
          6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
          727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
          6768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E74
          2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
          332220476170593D2233222048416C69676E3D22686143656E74657222205061
          72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
          722220546578743D224772616E6420546F74616C222F3E3C546672784D656D6F
          56696577204C6566743D223131382220546F703D223838222057696474683D22
          343022204865696768743D22343422205265737472696374696F6E733D223822
          2056697369626C653D2246616C7365222053686F7748696E743D2246616C7365
          2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
          436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
          4865696768743D222D31332220466F6E742E4E616D653D22417269616C222046
          6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
          583D22332220476170593D2233222048416C69676E3D22686143656E74657222
          20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
          6E7465722220546578743D22546F74616C222F3E3C546672784D656D6F566965
          77204C6566743D2238352220546F703D223637222057696474683D2231303022
          204865696768743D22343422205265737472696374696F6E733D223822205669
          7369626C653D2246616C7365222053686F7748696E743D2246616C7365222041
          6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
          727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
          6768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E74
          2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
          332220476170593D2233222048416C69676E3D22686143656E74657222205061
          72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
          722220546578743D22546F74616C222F3E3C2F726F77746F74616C6D656D6F73
          3E3C63656C6C66756E6374696F6E733E3C6974656D20302F3E3C6974656D2030
          2F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C69
          74656D20302F3E3C6974656D20302F3E3C2F636F6C756D6E736F72743E3C726F
          77736F72743E3C6974656D20302F3E3C6974656D20302F3E3C6974656D20302F
          3E3C2F726F77736F72743E3C2F63726F73733E}
      end
    end
  end
  object dxTip1: TdxBarScreenTipRepository
    Left = 776
    Top = 288
    object DxsTipMuestra: TdxScreenTip
      Header.Text = 'Evento'
      Description.Text = 'Aqui se muestra mensaje de Texto'
      Footer.Text = 'Tipo de Evento'
      Width = 250
    end
  end
  object dxTipRepos1: TdxScreenTipRepository
    Left = 56
    Top = 240
    object DxsTipTipRepos1ScreenTip1: TdxScreenTip
      Header.Text = 'DxsTipTipRepos1ScreenTip1'
    end
  end
  object cdFiltraExcepciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 496
  end
  object FrxDbFiltraExcepciones: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 552
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
    ReportOptions.CreateDate = 42072.790320370400000000
    ReportOptions.LastChange = 42119.503916620370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 896
    Top = 232
    Datasets = <
      item
        DataSet = FrxCdDatosEmpresa
        DataSetName = 'FrxCdDatosEmpresa'
      end
      item
        DataSet = FrxDbRetardos
        DataSetName = 'FrxDbRetardos'
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        StartNewPage = True
        object Memo2: TfrxMemoView
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE RETARDOS')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor1: TfrxMemoView
          Left = 154.960730000000000000
          Top = 33.354360000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor1'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor1"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor2: TfrxMemoView
          Left = 211.653680000000000000
          Top = 51.913420000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor2'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor2"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor3: TfrxMemoView
          Left = 211.653680000000000000
          Top = 70.811070000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor3'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor3"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor4: TfrxMemoView
          Left = 468.661720000000000000
          Top = 51.692949999999990000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor4'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor4"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor5: TfrxMemoView
          Left = 468.661720000000000000
          Top = 72.370130000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor5'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor5"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 411.968770000000000000
          Top = 51.692949999999990000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 411.968770000000000000
          Top = 71.590600000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 154.960730000000000000
          Top = 51.133889999999990000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 154.960730000000000000
          Top = 70.031540000000010000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 26.456710000000000000
          Width = 124.724490000000000000
          Height = 79.370130000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118110240000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        DataSet = FrxDbRetardos
        DataSetName = 'FrxDbRetardos'
        RowCount = 0
        object FrxDbRetardoshora: TfrxMemoView
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'hora'
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          DisplayFormat.FormatStr = 'hh:mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."hora"]')
          ParentFont = False
        end
        object FrxDbRetardosTipo: TfrxMemoView
          Left = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'Tipo'
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."Tipo"]')
          ParentFont = False
        end
        object FrxDbRetardosComentarios: TfrxMemoView
          Left = 136.063080000000000000
          Width = 302.362400000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'Comentarios'
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."Comentarios"]')
          ParentFont = False
        end
        object FrxDbRetardosAplicaDescuento: TfrxMemoView
          Left = 438.559370000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'AplicaDescuento'
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."AplicaDescuento"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 495.118430000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbRetardos."monto"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 389.291590000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 665.197280000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 21.118120000000000000
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        Condition = 'FrxDbRetardos."Fecha"'
        object FrxDbRetardosFecha: TfrxMemoView
          Top = 4.000000000000000000
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          DisplayFormat.FormatStr = 'mmmm dd, aaaa'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbRetardos."Fecha"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 15.118120000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        Condition = 'FrxDbRetardos."IdPersonal "'
        object Memo11: TfrxMemoView
          Left = 158.740260000000000000
          Width = 3.779530000000000000
          Height = 15.118110240000000000
          Visible = False
          ShowHint = False
          Color = clBtnFace
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."IdPersonal "]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 173.858380000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."NombreCompleto"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 184.212740000000000000
          Width = 321.260050000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."horarios"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 506.457020000000000000
          Width = 328.819110000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxDbRetardos
          DataSetName = 'FrxDbRetardos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxDbRetardos."montoXMinuto"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 16.897650000000000000
        Top = 272.126160000000000000
        Width = 740.409927000000000000
        ReprintOnNewPage = True
        object Memo4: TfrxMemoView
          Top = 0.779530000000022500
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 56.692950000000000000
          Top = 0.779530000000022500
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Movimiento')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 136.063080000000000000
          Top = 0.779530000000022500
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Comentarios')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 438.559370000000000000
          Top = 0.779530000000022500
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Aplica Desc.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 495.118430000000000000
          Top = 0.779530000000022500
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 14128702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'Monto')
          ParentFont = False
        end
      end
    end
  end
  object cdDatosEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 480
  end
  object FrxCdDatosEmpresa: TfrxDBDataset
    UserName = 'FrxCdDatosEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor1=valor1'
      'valor2=valor2'
      'valor3=valor3'
      'valor4=valor4'
      'valor5=valor5'
      'valor6=valor6')
    DataSet = cdDatosEmpresa
    BCDToCurrency = False
    Left = 1184
    Top = 200
  end
  object cdInasistencias: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 496
  end
  object cdInasistenciasUPDATE: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 904
    Top = 384
  end
  object dsInasistenciasUPDATE: TDataSource
    DataSet = cdInasistenciasUPDATE
    Left = 904
    Top = 432
  end
  object cdTipoInasistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1016
    Top = 408
  end
  object dsTipoInasistencia: TDataSource
    DataSet = cdTipoInasistencia
    Left = 1016
    Top = 456
  end
  object cdReporteMemoria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 336
  end
  object dxPopupPersonal: TdxRibbonPopupMenu
    BarManager = DxManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBtnImprimirSeleccionado'
      end>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 272
    Top = 384
  end
end
