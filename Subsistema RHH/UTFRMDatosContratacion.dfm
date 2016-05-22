object FrmDatosContratacion: TFrmDatosContratacion
  Left = 0
  Top = 0
  Caption = 'Datos de Contrataci'#243'n'
  ClientHeight = 497
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 59
    Width = 697
    Height = 270
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    RootLevelOptions.DetailTabsPosition = dtpTop
    object CxGridDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = CxGridDatosCellClick
      DataController.DataSource = dsPersonalImss
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupRowHeight = 30
      Styles.Background = cxstyl1
      object CxColumnFechaMovto: TcxGridDBColumn
        Caption = 'Movimiento'
        DataBinding.FieldName = 'FechaMovimiento'
        Width = 98
      end
      object CxColumnTipoMovimiento: TcxGridDBColumn
        Caption = 'Tipo Movimiento'
        DataBinding.FieldName = 'TipoMovimiento'
        Width = 110
      end
      object CxColumnJornada: TcxGridDBColumn
        DataBinding.FieldName = 'Jornada'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 50
      end
      object CxColumnSalarioDiario: TcxGridDBColumn
        Caption = 'Salario Diario'
        DataBinding.FieldName = 'SalarioDiario'
        Width = 80
      end
      object CxColumnSalarioIntegrado: TcxGridDBColumn
        Caption = 'S.D. Integrado'
        DataBinding.FieldName = 'SalarioIntegrado'
        Width = 80
      end
      object CxColumnOrganizacion: TcxGridDBColumn
        Caption = 'Organizaci'#243'n'
        DataBinding.FieldName = 'NombreOrganizacion'
        Width = 120
      end
      object CxColumnDepartamento: TcxGridDBColumn
        Caption = 'Departamento'
        DataBinding.FieldName = 'TituloDepartamento'
        Width = 120
      end
      object CxColumnPeriodoGuardia: TcxGridDBColumn
        Caption = 'Periodo de Guardia'
        DataBinding.FieldName = 'Guardia'
        Visible = False
        GroupIndex = 1
        Width = 130
      end
      object CxColumnCargo: TcxGridDBColumn
        Caption = 'Puesto'
        DataBinding.FieldName = 'TituloCargo'
        Width = 120
      end
      object CxColumnTipoNomina: TcxGridDBColumn
        Caption = 'Tipo N'#243'mina'
        DataBinding.FieldName = 'TituloNomina'
        Visible = False
        GroupIndex = 0
      end
    end
    object cxGridChartDatos: TcxGridDBChartView
      DataController.DataSource = dsPersonalImss
      DiagramColumn.Active = True
      Legend.Border = lbNone
      Styles.Background = cxstyl1
      Title.Text = 'Gr'#225'fica de salarios'
      ToolBox.CustomizeButton = True
      ToolBox.DiagramSelector = True
      object CxDataGroupsueldos: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'NombreCompleto'
      end
      object CxSerieDatos: TcxGridDBChartSeries
        DataBinding.FieldName = 'SalarioDiario'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Registros Hist'#243'ricos de Contrataci'#243'n'
      GridView = CxGridDatos
      Options.DetailTabsPosition = dtpTop
    end
    object CxLevel2: TcxGridLevel
      Caption = 'Gr'#225'fica de Salarios'
      GridView = cxGridChartDatos
    end
  end
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 332
    Align = alBottom
    Caption = 'Detalle de Contrataci'#243'n'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    Height = 162
    Width = 691
    object dxDateFechaReal: TcxDBDateEdit
      Left = 106
      Top = 40
      DataBinding.DataField = 'FechaReal'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Width = 217
    end
    object cbbTipoMovto: TcxComboBox
      Left = 106
      Top = 61
      Enabled = False
      Properties.Items.Strings = (
        'Alta'
        'Baja'
        'Modificaci'#243'n'
        'Reingreso'
        'Incapacidad'
        'Movimiento')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Width = 217
    end
    object dxDateFechaMovimiento: TcxDBDateEdit
      Left = 106
      Top = 19
      DataBinding.DataField = 'FechaMovimiento'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Width = 217
    end
    object cbbJornada: TcxDBComboBox
      Left = 106
      Top = 82
      DataBinding.DataField = 'Jornada'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 3
      Width = 217
    end
    object editSalarioIntegrado: TcxDBTextEdit
      Left = 106
      Top = 124
      DataBinding.DataField = 'SalarioIntegrado'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 4
      Width = 217
    end
    object editSalarioDiario: TcxDBTextEdit
      Left = 106
      Top = 103
      DataBinding.DataField = 'SalarioDiario'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 5
      Width = 217
    end
    object lbl2: TcxLabel
      Left = 8
      Top = 20
      Caption = 'Fecha Movimiento:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl3: TcxLabel
      Left = 8
      Top = 41
      Caption = 'Fecha Real:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl4: TcxLabel
      Left = 8
      Top = 62
      Caption = 'Tipo Movimiento:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl5: TcxLabel
      Left = 8
      Top = 83
      Caption = 'Jornada:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl6: TcxLabel
      Left = 8
      Top = 102
      Caption = 'Salario Diario:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl7: TcxLabel
      Left = 8
      Top = 125
      Caption = 'Salario Integrado'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cbbDepartamento: TcxDBLookupComboBox
      Left = 444
      Top = 40
      DataBinding.DataField = 'IdDepartamento'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'IdDepartamento'
      Properties.ListColumns = <
        item
          FieldName = 'TituloDepartamento'
        end>
      Properties.ListSource = dsDepartamentos
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 12
      Width = 217
    end
    object cbbCargo: TcxDBLookupComboBox
      Left = 444
      Top = 61
      DataBinding.DataField = 'IdCargo'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'IdCargo'
      Properties.ListColumns = <
        item
          FieldName = 'TituloCargo'
        end>
      Properties.ListSource = dsCargos
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 13
      Width = 217
    end
    object cbbPeriodosGuardia: TcxDBLookupComboBox
      Left = 444
      Top = 82
      DataBinding.DataField = 'IdPeriodosGuardia'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'IdPeriodosGuardia'
      Properties.ListColumns = <
        item
          FieldName = 'LeyendaFecha'
        end>
      Properties.ListSource = dsPeriodosGuardia
      Properties.OnChange = cbbPeriodosGuardiaPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 14
      Width = 217
    end
    object cbbOrganizacion: TcxDBLookupComboBox
      Left = 444
      Top = 19
      DataBinding.DataField = 'IdOrganizacion'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'IdOrganizacion'
      Properties.ListColumns = <
        item
          FieldName = 'NombreOrganizacion'
        end>
      Properties.ListSource = dsOrganizacion
      Properties.OnChange = cbbOrganizacionPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 15
      Width = 217
    end
    object lbl8: TcxLabel
      Left = 360
      Top = 83
      Caption = 'Periodo Guardia:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl9: TcxLabel
      Left = 361
      Top = 41
      Caption = 'Departamento:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl10: TcxLabel
      Left = 360
      Top = 62
      Caption = 'Puesto:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl11: TcxLabel
      Left = 360
      Top = 20
      Caption = 'Organizaci'#243'n:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxLbl1: TcxLabel
      Left = 363
      Top = 105
      Caption = 'Reg. Patronal:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxCbbRegPat: TcxDBLookupComboBox
      Left = 444
      Top = 103
      DataBinding.DataField = 'registroPatronal'
      DataBinding.DataSource = dsPersonalImssUpt
      Enabled = False
      Properties.KeyFieldNames = 'RegPatImss'
      Properties.ListColumns = <
        item
          Caption = 'Organizacion'
          FieldName = 'NombreOrganizacion'
        end
        item
          Caption = 'Registro Patronal'
          FieldName = 'RegPatImss'
        end>
      Properties.ListSource = dsOrganizacion
      TabOrder = 21
      Width = 217
    end
    object cxlbl2: TcxLabel
      Left = 363
      Top = 127
      Caption = 'Cobra Festivos:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxCbbCobraFestivos: TcxComboBox
      Left = 444
      Top = 124
      Enabled = False
      Properties.Items.Strings = (
        'Si'
        'No')
      TabOrder = 23
      Text = 'cxCbbCobraFestivos'
      Width = 217
    end
  end
  object cxGBDatosSalario: TcxGroupBox
    Left = 176
    Top = 176
    Caption = 'Agregar modificaci'#243'n de Salario'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 6
    Visible = False
    Height = 145
    Width = 271
    object CxDbTxtSD: TcxDBTextEdit
      Left = 99
      Top = 46
      DataBinding.DataField = 'SalarioDiario'
      DataBinding.DataSource = dsTPimss
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Width = 169
    end
    object CxDbTxtSDI: TcxDBTextEdit
      Left = 99
      Top = 68
      DataBinding.DataField = 'SalarioIntegrado'
      DataBinding.DataSource = dsTPimss
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Width = 169
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 48
      Caption = 'Salario Diario:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 7
      Top = 70
      Caption = 'Salario Integrado:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 7
      Top = 27
      Caption = 'Fecha Movto:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxDbDateMovto: TcxDBDateEdit
      Left = 99
      Top = 25
      DataBinding.DataField = 'FechaMovimiento'
      DataBinding.DataSource = dsTPimss
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 5
      Width = 169
    end
    object CxBtnGuardar: TcxButton
      Left = 109
      Top = 95
      Width = 75
      Height = 25
      Caption = '&Guardar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'MoneyTwins'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = Form2.CxImageModal
      TabOrder = 6
      OnClick = CxBtnGuardarClick
    end
    object CxBtnCancel: TcxButton
      Left = 190
      Top = 96
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'MoneyTwins'
      ModalResult = 2
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = Form2.CxImageModal
      TabOrder = 7
      OnClick = CxBtnCancelClick
    end
  end
  object dxbrmngr1: TdxBarManager
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
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 648
    Top = 16
    DockControlHeights = (
      0
      0
      59
      0)
    object dxbrmngr1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 256
      FloatTop = 180
      FloatClientWidth = 62
      FloatClientHeight = 92
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnAgregarMSD'
        end
        item
          Visible = True
          ItemName = 'dxBtnSave'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnEditar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnEliminar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnCancel'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnActualizar'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBtnSave: TdxBarLargeButton
      Caption = '&Guardar Cambios'
      Category = 0
      Enabled = False
      Hint = 'Guardar Cambios'
      Visible = ivAlways
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000010000000200000003000000030000000300000003000000030000
        0003000000030000000300000003000000030000000300000003000000030000
        0003000000030000000300000003000000020000000000000000000000000000
        0002000000080000001000000014000000140000001400000014000000140000
        0014000000140000001500000015000000150000001500000015000000150000
        00160000001600000016000000130000000C0000000400000000000000010000
        00071E151163573E33FD593D33FF583C32FF5A3F37FFC48B5BFFBE8353FFBB7D
        4DFFB8794AFFB67545FFB37141FFB06C3CFFAD6938FFAB6535FFA86232FF6D43
        2EFF4F342CFF4F342CFF4E342DFE2519158B0000000C00000002000000010000
        000B3D2B24B0816458FF75554AFF74544AFF62483FFFE8C491FFE4BC85FFE3B8
        80FFE3B67CFFE1B379FFE0B176FFDFAF73FFDEAC70FFDDAB6EFFDDA96BFF815E
        44FF6B4C42FF6B4C42FF6B4D43FF4E342BFC0000001200000003000000010000
        000C402C25B186685CFF78584DFF78594DFF674D43FFE2C192FFDEB986FFDBB4
        7DFFDBB17AFFDAAF77FFD9AD74FFD9AA71FFD7A86EFFD7A66BFFD6A569FF815F
        45FF6C4E44FF6D4E44FF6D4F45FF51362EFF0000001400000003000000010000
        000C433028B18C6E63FF7D5D51FF7C5C50FF6C5247FFFAF4F1FFF9F2EFFFF7F1
        ECFFF7F0EBFFF6EFE9FFF5EEE9FFF5EEE8FFF4ECE7FFF3ECE6FFF4EBE5FF8D79
        72FF6F5046FF6E5046FF705247FF523830FF0000001400000003000000010000
        000B45332AB1927567FF826254FF816255FF6F564BFFFAF6F3FFF1E6E0FFEBDE
        D5FFE8D7CFFFE6D5CDFFE5D3CAFFE3D0C8FFE2CEC4FFE0CCC3FFF4ECE6FF917C
        74FF715349FF705249FF72544AFF533A31FF0000001300000003000000010000
        000A48362DB0987B6DFF866659FF866758FF745B4FFFFBF7F5FFF2E7E1FFECDF
        D8FFE9DAD1FFE7D6CEFFE5D4CBFFE4D1C9FFE2CFC6FFE1CDC4FFF5ECE7FF937F
        77FF73554CFF72544BFF74574DFF553C33FF0000001200000003000000000000
        000A4C3930B09E8275FF8B6C5DFF8B6C5DFF796053FFFBF8F6FFE4D1C7FFD8BC
        AEFFD2B5A6FFCCA999FFC8A392FFC59E8EFFC19888FFBD9283FFF5EEE8FF9682
        7AFF75594EFF74584DFF775A51FF573D35FF0000001200000003000000000000
        000A4F3B32B0A38A7AFF907162FF8F7163FF7D6356FFFCF9F8FFFBF8F5FFFAF7
        F4FFFAF6F3FFF9F4F1FFF8F2EFFFF8F2EEFFF7F1EDFFF6F0ECFFF6EFEAFF9985
        7DFF775C51FF765A50FF7A5F54FF5A4138FF0000001100000003000000000000
        0009523E35AFA99081FF957766FF947767FF846B5CFFAB988FFFAB988EFFAA98
        8EFFA9978EFFA6948AFFA18F86FFA08E85FF9E8D84FF9E8C84FF9D8B82FF7F68
        5EFF7A5F54FF795E52FF7D6357FF5D433AFF0000001000000002000000000000
        0009564438AFB09687FF997C6BFF9A7E6BFF9A7D6CFF997D6BFF997E6BFF997E
        6CFF987E6DFF977C6BFF82675BFF7F665AFF7F6659FF7F655AFF7F6559FF7E63
        57FF7C6255FF7B6155FF7F675BFF5E463CFF0000001000000002000000000000
        00085A473AAFB49C8EFF9E8170FF9E826FFF9E8270FF9E8271FF9E8371FF9E83
        71FF9D8271FF9D8371FF927868FF83695DFF82695DFF82685CFF81685BFF8066
        5AFF806559FF7E6358FF84695FFF61483FFF0000000F00000002000000000000
        00085D493CAFBAA293FFA38673FFA58C78FFA8907DFFA98F7EFFA88F7DFFA88F
        7DFFA88F7DFFA68E7DFFA58B7BFF8F776AFF8A7166FF8A7164FF887064FF866D
        63FF846C5FFF80665AFF866D61FF634A40FF0000000E00000002000000000000
        0008604C41AEBFA898FFA68A78FFAD9381FF6E5449FF543931FF5C413AFF654B
        43FF624940FF60473DFF5E453CFF5C443AFF5B433AFF5A4238FF584037FF6048
        3FFF887164FF83695DFF897165FF654C42FF0000000E00000002000000000000
        0007635043AEC3AE9EFFAA8F7BFFB09783FF563A33FF5D4740FF70564CFFE9DB
        D1FFDDC6B7FFDCC5B5FFDBC4B4FFCCB5A5FFB8A295FFBCA79BFFC8B4A7FF8670
        67FF8A7267FF846B5FFF8C7569FF675045FF0000000D00000001000000000000
        0006665245AEC7B3A2FFAD937EFFB39A86FF583C34FF5E4942FF72584FFFEEE1
        D8FFE0CCBEFFE0CBBCFFDFCABAFFB19B8FFF61483FFF694E44FF977F73FF8974
        6AFF8C7468FF866D61FF8F776BFF695147FF0000000C00000001000000000000
        0006685347ADCAB6A7FFB29681FFB69C89FF593C35FF5F4A43FF745A51FFF2E7
        DFFFE5D3C5FFE3D2C3FFE3D0C1FFB29F92FF584039FF5E433BFF9B8378FF8D79
        6FFF8E7469FF877065FF917A6FFF6B5348FF0000000C00000001000000000000
        00066A5548ADCEBBABFFB49A84FFB99F8BFF593D35FF604B44FF765D53FFF5EC
        E6FFE9D9CCFFE8D8CAFFE7D7C9FFB4A397FF523A33FF563C35FF9E877CFF917D
        73FF8F776AFF8A7166FF947D71FF6C554AFF0000000B00000001000000000000
        00056C594AADD0BDAFFFB79C87FFBAA18DFF5B3E37FF604B45FF785F56FFF7F1
        ECFFEDDFD2FFECDED0FFEBDDCFFFB5A59BFF4B3832FF4C3932FF8B7A73FF9481
        78FF8F776BFF8B7267FF967F74FF6D564BFF0000000A00000001000000000000
        00046B5948A8D2BFB0FFD3C1B2FFD5C4B4FF5B3F37FF614C45FF7A6057FFF9F4
        F0FFF9F5F0FFF9F4EFFFF8F3EEFFF8F2EDFFF7F1EBFFF7F1EBFFF6EFEAFF9684
        7DFFB4A399FFB29F96FFB09C94FF6E564BFC0000000800000001000000000000
        0002241E193C6D5A4CAA705C4EAC705E4FAC56453BAC4D3C33AD534039AD7062
        5CAD6F605AAD6D5F59AD6C5D55AD6A5B53AD685851AD66554FAD64534DAD4F3E
        39AD4D3E36AD4C3E36AD4A3A34AB2E2520700000000400000001000000000000
        0000000000020000000400000004000000040000000400000005000000050000
        0005000000050000000500000005000000050000000600000006000000060000
        0006000000060000000600000005000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000300000005000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000070000000600000004000000010000000100000000000000000000
        0001000000060000000E000000160000001A0000001B0000001B0000001B0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001C0000001C0000001C0000001C0000001C0000001D0000001D0000
        001D0000001C0000001800000010000000070000000100000000000000010000
        00030000000E2D1F198E583E33FD593D34FF583C32FF583C32FF5A3F37FFC58D
        5DFFC18656FFBD8151FFBB7D4DFFB97A4BFFB77748FFB57444FFB37141FFB06D
        3DFFAF6B3AFFAC6837FFAB6535FFA96333FFA76030FF50342DFF4F342CFF4F34
        2CFF4F342DFF4E342DFD2519158B000000100000000400000001000000010000
        0005000000145C3F36FD806357FF745449FF73534AFF735349FF61473EFFE8C5
        94FFE5BE89FFE3B981FFE3B87FFFE3B67DFFE2B57AFFE1B278FFE0B175FFDFAF
        73FFDEAD71FFDEAC6FFFDDAB6DFFDDAA6CFFDDA86AFF523731FF6B4C42FF6B4C
        42FF6B4C42FF6B4D43FF4E342BFB000000170000000600000001000000010000
        0006000000175F4337FF83655AFF77574CFF76574BFF76574BFF654B41FFEAC8
        98FFE6C08CFFE5BC85FFE3B981FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B0
        75FFDFAF72FFDEAC70FFDEAC6FFFDDAA6CFFDCA96BFF553932FF6B4C43FF6C4D
        42FF6B4C42FF6D4F45FF50362DFF0000001B0000000700000001000000010000
        000600000017624539FF87695DFF79594EFF795A4EFF795A4EFF684E44FFE1C2
        96FFDCB988FFDBB684FFD7B17BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A8
        70FFD4A66EFFD4A56BFFD3A369FFD3A267FFD3A166FF583D35FF6D4F44FF6D4E
        45FF6C4D44FF6E5047FF51362FFF0000001B0000000700000001000000010000
        00060000001766483CFF8C6E63FF7D5D51FF7D5D50FF7C5C50FF6C5247FFFAF5
        F2FFF9F3F0FFF9F2EFFFF7F1ECFFF7F0EBFFF6F0EAFFF6EEE9FFF5EEE9FFF5EE
        E8FFF4EDE7FFF4ECE7FFF3ECE6FFF4EBE5FFF3EBE4FF5A3F38FF6F5046FF6E50
        46FF6E4F45FF715348FF523830FF0000001A0000000700000001000000010000
        000500000016684B3EFF917366FF816153FF816153FF7F6154FF6E554AFFFAF7
        F3FFF9F4F0FFF9F3EFFFF8F3EDFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EE
        E9FFF5EDE8FFF5EDE7FFF4ECE7FFF4EBE6FFF4EBE5FF5E4339FF705248FF7052
        48FF6F5147FF72554BFF523A31FF000000190000000600000001000000010000
        0005000000156C4F42FF95786AFF846456FF836557FF836456FF72584DFFFAF7
        F5FFFAF5F2FFD5B8A9FFD2B4A6FFCCA899FFC9A492FFC6A090FFC39C8BFFC097
        87FFBE9283FFBA8F7FFFB88C7BFFF4EDE6FFF4ECE6FF60463DFF72544BFF7053
        4BFF705248FF75574DFF543A32FF000000190000000600000001000000010000
        0005000000156F5346FF997D6FFF87675AFF876859FF876859FF755C50FFFBF8
        F6FFFAF6F2FFFAF5F1FFF9F5F1FFF9F3EFFFF7F2EDFFF7F1EDFFF6F0EBFFF6EF
        EAFFF5EFEAFFF5EEE9FFF5EDE8FFF5ECE8FFF4EDE6FF634940FF73564CFF7355
        4CFF72544BFF775A4FFF563D34FF000000180000000600000001000000000000
        000500000014735649FF9E8275FF8B6B5CFF8A6D5EFF8B6C5DFF796053FFFCF9
        F7FFFAF7F3FFD9BEB1FFD8BCAEFFD5BAABFFCDAC9DFFCBA797FFC8A392FFC6A0
        8FFFC39B8BFFC09787FFBD9283FFF5EEE8FFF4EDE8FF664C43FF75594EFF7458
        4DFF74574CFF795C53FF573D35FF000000180000000600000001000000000000
        00050000001376594BFFA28878FF8E7061FF8F7061FF8E7062FF7C6155FFFCF9
        F8FFFBF7F4FFFAF7F4FFF9F6F3FFF9F5F2FFF9F4F1FFF8F2EEFFF7F1EDFFF7F0
        ECFFF6F0ECFFF6F0EBFFF5EFEAFFF6EEE9FFF4EEE8FF694F46FF775B50FF7759
        4FFF75594EFF7B6056FF594037FF000000170000000600000001000000000000
        0005000000137B5D4EFFA68D7FFF937464FF937464FF917465FF7F6659FFFCFB
        F9FFFCF9F8FFFCF9F8FFFCF9F7FFFBF9F6FFFCF8F5FFF9F6F3FFF9F5F2FFF9F5
        F1FFF9F4F1FFF8F4F0FFF7F2EFFFF7F2EDFFF7F1EDFF6C5248FF785E52FF775D
        51FF775A50FF7F6359FF5C4239FF000000160000000600000001000000000000
        0005000000127E6152FFAB9182FF967767FF957A67FF957968FF876D5EFF8268
        5BFF82695AFF82685AFF81685AFF80675AFF7F6759FF7A6155FF755D51FF745B
        50FF735B50FF725A4FFF72594FFF71594EFF70574CFF72594EFF7B6055FF7A60
        54FF795E52FF81675BFF5D433AFF000000160000000500000001000000000000
        000400000012836654FFB09687FF997B6BFF9A7D6BFF9A7E6BFF9A7D6CFF997D
        6BFF997E6CFF997E6BFF997E6CFF987E6DFF997E6CFF967B6BFF82675BFF7F66
        5AFF806659FF7F6659FF7F655AFF7F6559FF7F6458FF7D6257FF7C6255FF7C61
        55FF7A6054FF826A5EFF5E463CFF000000150000000500000001000000000000
        000400000011866958FFB39B8CFF9D816FFF9D7F6EFF9D816EFF9D816FFF9D81
        70FF9D826FFF9D8270FF9D8270FF9C8170FF9B8170FF9C826FFF8D7364FF8369
        5CFF82695DFF82685CFF81675CFF81675BFF7F6659FF7F6559FF7F6458FF7D63
        58FF7D6257FF866D61FF61483EFF000000140000000500000001000000000000
        0004000000108A6C5BFFB79F91FFA08471FFA08471FFA08571FFA08573FFA085
        73FFA08574FFA08673FFA18673FFA08574FFA08673FF9F8574FF9C8271FF836A
        60FF836B60FF836A5FFF836A5DFF83695DFF82695DFF81685BFF81675AFF7F65
        59FF7F6359FF886E64FF624940FF000000140000000500000000000000000000
        0004000000108D705EFFBBA494FFA48774FFA48874FFAA927FFFAC9582FFAD94
        83FFAD9482FFAC9382FFAC9482FFAC9483FFAB9381FFAA9282FFAA9080FF9880
        71FF8E766BFF8D756AFF8D7568FF8C7468FF897167FF887065FF866E61FF8167
        5CFF806659FF8B7267FF634A40FF000000130000000500000000000000000000
        00040000000F907462FFBFA898FFA68A77FFA78B79FFB09785FF6E5449FF5439
        31FF543831FF60463EFF644A42FF634A40FF61483FFF5F473CFF5E453CFF5C44
        3BFF5B4339FF5A4139FF594137FF583F36FF563E36FF654D43FF887164FF836A
        5DFF82685CFF8D766AFF654C42FF000000120000000500000000000000000000
        00040000000E957764FFC2AD9DFFA98D7BFFAA8F7BFFB29986FF563A33FF5944
        3DFF644E47FF75594EFFE8DAD0FFDCC5B5FFDBC4B5FFDBC4B3FFDAC3B3FFDAC3
        B2FFD9C2B1FFE3D2C6FFE2D1C5FFE2D0C3FFE1CFC2FF573F37FF8A7266FF856C
        5EFF836A5EFF8F796EFF664F44FF000000120000000400000000000000000000
        00030000000E977A67FFC5B0A0FFAC907CFFAD927DFFB39C88FF573B34FF5A45
        3EFF654F48FF775B50FFEBDFD5FFDEC9BBFFDEC9B9FFDDC8B8FFDDC7B7FFDCC6
        B6FF584139FF705448FF705347FF6F5246FFE4D3C7FF594138FF8B7368FF856D
        62FF856B5FFF937B70FF685146FF000000110000000400000000000000000000
        00030000000D9B7D6AFFC8B4A3FFAE947FFFAF9480FFB79E8BFF583C34FF5B46
        3FFF655049FF795D53FFEFE4DBFFE1CEC0FFE1CDBFFFE1CDBDFFE0CBBBFFDFCA
        BBFF554038FF61473FFF654B42FF715548FFE7D8CDFF5B433AFF8C7468FF876F
        62FF876D60FF957E72FF695147FF000000100000000400000000000000000000
        00030000000C9C7F6BFFCAB6A7FFB29681FFB29782FFB89F8CFF593C35FF5B46
        40FF66514AFF7B5F55FFF2E8E0FFE5D3C5FFE4D3C4FFE3D1C2FFE3D0C1FFE2CF
        C0FF523E36FF5B413AFF5E433BFF73564BFFEBDDD4FF5E463CFF8E7469FF8871
        65FF866E64FF968075FF6B5348FF000000100000000400000000000000000000
        00030000000C9E826CFFCDBAAAFFB39983FFB49984FFBBA18DFF593D35FF5C47
        40FF68524BFF7D6157FFF4ECE5FFE8D8CAFFE8D7C9FFE7D6C8FFE6D5C7FFE6D4
        C6FF4E3C34FF553B34FF583E36FF75584DFFEEE2D9FF60483EFF8F766AFF8A72
        66FF896F65FF998377FF6C544AFF0000000F0000000400000000000000000000
        00030000000BA2836EFFCFBCACFFB69B86FFB59B86FFBBA28FFF5A3E36FF5C47
        41FF68524BFF7E6459FFF6F0EAFFEBDCCFFFEADCCEFFEADBCDFFE9DACCFFE8D9
        CBFF4B3A33FF523731FF533832FF765A4FFFF1E6DEFF624A41FF8E786AFF8A73
        67FF897165FF9B8579FF6D564BFF0000000E0000000400000000000000000000
        00030000000AA3876FFFD1BEB0FFB89D89FFB89E87FFBDA390FF5B3E37FF5C48
        42FF69524CFF80665CFFF8F3EEFFEEE1D4FFEDE0D3FFEDDFD2FFECDED1FFEBDD
        D0FF473832FF493832FF493932FF493832FFF3EBE4FF654D43FF90766CFF8D73
        68FF8A7166FF9E877DFF6D564BFF0000000D0000000300000000000000000000
        000200000008A1866EF9D2BFB0FFD3C0B2FFD3C2B1FFD6C5B6FF5B3E37FF5D48
        42FF69534CFF82675DFFF9F5F1FFF9F5F0FFF9F4EFFFF9F4EFFFF8F3EEFFF8F2
        EDFFF7F2ECFFF7F1EBFFF7F1EBFFF6F0EAFFF6EEE9FF664F46FFB4A399FFB3A0
        97FFB19D95FFB09C93FF6E564CFC0000000B0000000300000000000000000000
        00010000000552443984A48873FCA88C75FFA98D76FFA88F78FF836859FF765B
        4DFF765A4DFF80655BFFA9948BFFA89289FFA59087FFA48E85FFA28C82FFA08A
        80FF9E877EFF9C847BFF998278FF987F76FF947C73FF695148FF745F52FF745E
        51FF725B50FF6F584DFC453730A5000000070000000200000000000000000000
        0000000000020000000500000007000000090000000900000009000000090000
        000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
        000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
        000B0000000B0000000A00000007000000030000000100000000000000000000
        0000000000000000000100000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000030000000300000003000000030000000300000003000000030000
        0003000000030000000200000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnSaveClick
      AutoGrayScale = False
    end
    object DxBarBtnEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Enabled = False
      Hint = 'Editar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        000B000000160000001A000000140000000D0000000700000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000002000000060000
        0016452E26FF241510DA100A0788020101350000001C00000011000000090000
        0004000000020000000100000001000000010000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000002000000040000000600000007000000080000000D0000
        001E4E382FD8A07C6FFF544649FF292C47F716254FB5070C1A5C0000001E0000
        00120000000B0000000800000008000000080000000800000008000000070000
        0005000000020000000100000000000000000000000000000000000000000000
        000000000002000000070000000F00000017000000190000001B0000001F0000
        002B281D188D82706CFFADCAE6FF7492BFFF425D99FF2E478AFF101D3FA50000
        003600000027000000200000001E0000001D0000001E0000001D0000001A0000
        0012000000080000000200000000000000000000000000000000000000000000
        0001000000040000000F78564AC1A57765FFA67666FFA57564FFA47363FFAE88
        7CFFB49D96FF5C5F7AFFDBE3EFFFA2C2E2FF7896C2FF536DA2FF315194FF5962
        88FFB9A49CFFAF8D81FF9D6C5CFF9D6E5DFF9E6D5CFF9E6C5BFF9E6C5BFF704C
        41C3000000130000000400000001000000000000000000000000000000000000
        00010000000500000015A87968FFF9F4F0FFF9F4F0FFF9F3EFFFF8F2EDFFF2EC
        E7FFE6E4E2FF7C8EB5FF8B9FC7FFCED9E9FF2084DBFF51A9E2FF1552AAFF154B
        9EFF6C7EA5FFE1DDDAFFEDE7E2FFF2E8E2FFF4EBE3FFF4EBE4FFF4EAE3FF9E6D
        5CFF000000190000000700000001000000000000000000000000000000000000
        00010000000600000016AA7B6AFFF9F4F1FFF3E9E2FFF3E9E1FFF2E8E0FFF0E5
        DEFFEBE4DFFFB9BEC8FF4B6CABFFFFFFFFFF4DA3E5FF2389DFFF56ADE3FF1658
        ACFF174FA0FF6D7FA5FFE1DAD7FFEBE3DDFFEEE2D9FFF1E4DBFFF5EBE5FF9E6F
        5EFF0000001B0000000700000001000000000000000000000000000000000000
        00010000000500000016AC7D6DFFFAF5F2FFF3EAE2FFF3EAE2FFF4E9E2FFF3E8
        E0FFEFE6E0FFE7E3DFFF8B9BBAFF6990C2FFC2E5F8FF50A7E6FF2791E0FF5DB1
        E5FF1A5DAFFF1953A4FF6F82A8FFE2DBD8FFEBE3DDFFEFE2D9FFF4EBE4FFA170
        60FF0000001B0000000700000001000000000000000000000000000000000000
        00010000000500000015AE8071FFFAF6F3FFF4EAE3FFF4EAE3FFF3EAE2FFF2E8
        E1FFF1E7E0FFF0E7E3FFE5E1DDFF81A1C1FF4590D0FFC7E8F8FF56AEE7FF2C97
        E1FF62B5E6FF1B62B2FF1B57A6FF7185ACFFE4DEDAFFECE4DEFFF2EAE4FFA272
        62FF0000001A0000000700000001000000000000000000000000000000000000
        00000000000500000014B08373FFFAF7F4FFF4EBE4FFF4EAE4FFF4EAE3FFF4EA
        E3FFF2E9E2FFF2E8E1FFEFE7E3FFE6E3DFFF83A4C5FF4895D2FFCBEBFAFF5AB4
        EBFF319DE4FF67BAE7FF1E65B6FF1D5DA9FF7389AEFFE4E0DBFFEFE9E5FFA473
        63FF0000001A0000000600000001000000000000000000000000000000000000
        00000000000500000013B18475FFFBF7F5FFF4ECE5FFF6EBE4FFF6EBE4FFF4EB
        E4FFF4EBE3FFF3EAE2FFF2E8E1FFEFE8E3FFE8E4E0FF86A7C7FF4C9AD4FFCFEE
        FBFF60B9EDFF36A5E9FF6EBEE8FF206BB9FF2061ADFF758CB2FFE8E5E2FFB794
        88FF0000001A0000000700000001000000000000000000000000000000000000
        00000000000400000012B38677FFFCF8F5FFF6ECE6FFF6ECE6FFF6ECE5FFF4EB
        E5FFF4EBE5FFF4EBE4FFF4EBE4FFF2E9E2FFF1E9E4FFE9E6E2FF88AAC9FF4F9F
        D7FFD3F0FCFF64BEEFFF3BABEBFF72C2EAFF2371BCFF2266AFFF7992B7FFC5AF
        A7FF0000001F0000000800000002000000000000000000000000000000000000
        00000000000400000011B58A7AFFFCF8F7FFF7EDE8FFF6ECE6FFF4EDE6FFF4EC
        E6FFF4ECE6FFF6ECE5FFF4ECE4FFF4EBE4FFF2E9E2FFF1EAE4FFEBE7E4FF8BAE
        CCFF52A3D8FFD6F2FCFF6AC5F0FF42B2EBFF77C6ECFF2677C0FF256BB4FF6B7C
        9EFF000000260000000D00000003000000010000000000000000000000000000
        00000000000400000010B78A7BFFFCF9F7FFF7EDE8FFF7EDE9FFF6EDE8FFF6ED
        E6FFF6EDE6FFF6ECE6FFF6ECE5FFF6ECE5FFF6ECE4FFF2E9E2FFF2EBE6FFEDE9
        E6FF8DB1CEFF56A8DAFFD9F4FDFF89D5F6FF47BBEFFF7BCBECFF2A7DC1FF2871
        B7FF191C26990000001400000007000000020000000000000000000000000000
        0000000000040000000FB98D7EFFFCFAF8FFF7EFE9FFF7EFE9FFF7EFE9FFF7EF
        E8FFF6EDE8FFF6EDE8FFF6EDE6FFF6EDE6FFF4ECE6FFF6ECE6FFF3EBE4FFF3EC
        E7FFEEE9E7FF8FB4D0FF5AADDCFFDCF6FDFF74CFF6FF4CC0F0FF80D0EEFF7877
        7BFF794A3AFF29110B900000000F000000060000000200000000000000000000
        0000000000040000000EBB9080FFFCFAF8FFF7F0EAFFF7F0E9FFF6EFE9FFF7EF
        E9FFF7EFE8FFF7EFE9FFF6EDE8FFF7EDE8FFF7EDE6FFF6EDE6FFF6EDE6FFF5EB
        E4FFF3EDE7FFF0EBE8FF91B7D3FF5DB0DEFFDEF8FEFF7AD6F7FF90B9C5FFD8C1
        B3FF996B59FF815141FF190D228D0000000C0000000500000001000000000000
        0000000000030000000DBD9283FFFDFBF9FFF8F1EBFFF8F0EBFFF7F0EBFFF7F0
        EAFFF7F0EAFFF7F0E9FFF7EFE9FFF6EFE9FFF7EDE8FFF6EDE8FFF6EDE8FFF6ED
        E8FFF5EBE5FFF5EEE9FFF1EDE9FF93B9D5FF60B4E0FFE7F7F9FFDBC3B1FFCFB3
        9FFFDBC5B8FF584B8BFF212095FF0A0A3E8B0000000B00000004000000000000
        0000000000030000000DBE9585FFFBF8F7FFF8F2ECFFF8F1EBFFF7F1EBFFF7F1
        EBFFF7F0EBFFF8F0EAFFF7F0EAFFF7EFEAFFF7EFEAFFF7EDE9FFF6EFE8FFF6EF
        E8FFF6EDE8FFF6ECE7FFF5EEE9FFF2EEEBFFA9AEB7FFB58F7EFFFAF0E2FFDFC8
        B6FF9A97C5FF8791E3FF2B2EAAFF25259CFF0F0F458900000006000000000000
        0000000000030000000CC09687FFF8F5F2FFF6EFE9FFF8F2ECFFF8F1ECFFF8F1
        ECFFF7F1ECFFF7F0EBFFF8F1EAFFF8F0EAFFF7F0EAFFF7F0E9FFF7F0E9FFF6EF
        E9FFF6EDE9FFF7EDE9FFF6EEE8FFF6EFECFFF4EFEDFFC2A59DFFBC9788FFF6EE
        E7FF8B9FEDFF6275E1FF98A2E7FF7B85D0FF272A96FF00000007000000000000
        0000000000030000000BC39889FFF6EFEDFFF4EBE6FFF6EFEAFFF8F2EDFFF8F2
        EDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1EBFFF8F0EBFFF8F0EAFFF7EFEAFFF7F0
        EAFFF7EFEAFFF7F0E9FFF7EFE9FFF5ECE8FFF7EFECFFF5F0EEFFB1A5BDFF6B78
        D4FFDBE7FCFF8BA0EEFFACC0F3FF4E57C3FF21235A8400000004000000000000
        0000000000020000000AC49A8AFFF1E9E6FFF0E6E2FFF4EBE7FFF5EEEBFFF7F1
        ECFFF7F1ECFFF8F2EDFFF7F0EBFFF8F1EDFFF7F1ECFFF8F1ECFFF7F0EBFFF7F0
        EAFFF7F0EBFFF7EFEAFFF7EFEAFFF7EFEAFFF7EFE9FFF6F1ECFFF9F7F6FF928B
        BDFF7180DAFFDCE8FCFF6675D7FF262A60830000000500000002000000000000
        00000000000200000009C69C8CFFE8DDD8FFE8DBD4FFECDFDBFFEFE4E0FFF1E8
        E3FFF4EBE8FFF6EDE9FFF7F1ECFFF8F2EFFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1
        ECFFF8F1EBFFF8F1EBFFF7F0EBFFF7F0EBFFF7EFEAFFF7EFEAFFFBF8F6FFDAC5
        BDFF2B3166885761CEFF2C316681000000040000000200000001000000000000
        00000000000200000008C79E8DFFD9C4BCFFD9C4B9FFDCC6BEFFDECBC4FFE1CF
        C8FFE6D5D0FFEDE0DAFFF4EBE6FFF8F2EDFFF7F1EEFFF9F2EFFFF8F2EFFFF8F2
        EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFF7F1EAFFFCF8F5FFCCAB
        9FFF0000000F0000000500000002000000010000000000000000000000000000
        00000000000100000006C8A08FFFCDB1A7FFA37363FFA47363FFA47464FFA475
        64FFA57766FFB38B7CFFEEE3DDFFF7EEECFFF9F3EFFFF9F3EFFFF9F2EFFFF9F3
        EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1ECFFF8F1ECFFFCF9F7FFBE93
        84FF0000000D0000000300000000000000000000000000000000000000000000
        00000000000100000004563E3683D5B9AEFFFCF9F7FFFEFCFAFFFFFDFCFFFFFE
        FEFFFFFFFFFFAB7E6DFFEADDD7FFF5EEEAFFF9F3F1FFF9F4F0FFF9F3F0FFF9F3
        F0FFF9F3EFFFF9F3EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFFCF9F7FFC096
        87FF0000000C0000000300000000000000000000000000000000000000000000
        000000000000000000020000000559413983D7BAB0FFFCF6F3FFFDF9F7FFFEFB
        FAFFFFFEFEFFB08574FFEADDD6FFF5EEEAFFFAF6F1FFF9F4F1FFF9F4F1FFF9F4
        F1FFF9F4F0FFF9F3EFFFF9F3EFFFF8F3EFFFF9F2EFFFF9F2EFFFFDFAF8FFC298
        88FF0000000B0000000300000000000000000000000000000000000000000000
        0000000000000000000100000002000000055B433B83D8BCB3FFFBF6F3FFFDF9
        F6FFFFFEFEFFB68C7DFFE9DBD5FFF4EBE7FFF7F3F0FFFAF6F2FFF9F4F2FFF9F4
        F1FFF9F4F1FFFAF4F1FFF9F3F0FFF9F3F0FFF9F3F0FFF8F2EFFFFDFAF9FFC499
        89FF0000000A0000000300000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000045D453E83DBC0B5FFFBF6
        F3FFFFFEFEFFBC9584FFE8DCD5FFF0E8E4FFF5EFEBFFF8F3F0FFFAF6F2FFFAF6
        F2FFF9F6F1FFF9F6F1FFF9F4F1FFF9F4F1FFF9F4F0FFF9F4F0FFFDFAF9FFC59B
        8BFF000000090000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000045F484082DDC2
        B8FFFFFEFEFFC19B8BFFE7DAD3FFEEE3DFFFF3EBE6FFF5F0ECFFF8F4F0FFFAF7
        F3FFFAF7F3FFFAF6F2FFF9F4F2FFFAF4F1FFF9F4F1FFFAF4F0FFFDFBFAFFC79D
        8EFF000000080000000200000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000003614B
        4382E2CAC2FFDECAC3FFE8DAD6FFEEE4E0FFF2EBE9FFF6F1EFFFFAF7F6FFFFFE
        FEFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFDFFC89F
        8FFF000000070000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0003634D4681CEA596FFCEA695FFCDA595FFCDA595FFCDA495FFCDA495FFCDA3
        94FFCDA394FFCDA394FFCBA293FFCBA293FFCBA291FFCBA191FFCAA191FF9677
        6ABF000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000020000000300000003000000040000000400000004000000040000
        0004000000050000000500000005000000050000000500000005000000050000
        0004000000020000000000000000000000000000000000000000}
      OnClick = DxBarBtnEditarClick
      AutoGrayScale = False
    end
    object DxBarBtnCancel: TdxBarLargeButton
      Caption = '&Cancelar Cambios'
      Category = 0
      Enabled = False
      Hint = 'Cancelar Cambios'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000050000000600000007000000080000
        0007000000060000000500000003000000020000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0002000000050000000A00000010000000160000001A0000001C0000001E0000
        001C0000001A00000016000000100000000B0000000600000002000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000050000
        000C000000150704022A311D0E6E633C1DB77A4924D8895125ED965929FF8850
        25ED784520D862391ABA2F1B0D6F0704022B000000160000000D000000060000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000300000008000000120F09
        05355E3B1EAC995D30F8AD7745FFC18F5CFFCF9E6BFFD5A773FFDBAE7AFFD5A6
        72FFCD9D69FFBF8C59FFAA7141FF945729FB5A3418AD0E080438000000140000
        0009000000030000000100000000000000000000000000000000000000000000
        00000000000000000000000000010000000300000009000000163521116F9760
        32F3B78352FFD7AA75FFDBAC76FFD8A770FFD7A369FFD6A167FFD4A065FFD5A1
        67FFD6A268FFD7A56DFFDAAA74FFD5A772FFB37C4AFF8F5428F6311D0D710000
        00180000000A0000000300000001000000000000000000000000000000000000
        0000000000000000000100000002000000090000001856371E9BA97140FFD3A5
        73FFDBAD77FFD7A56BFFD19B60FFC88E50FFC08445FFBC7F40FFBB7B3CFFBC7D
        3FFFBF8242FFC68B4EFFCF985CFFD6A267FFD9AA72FFD6A76FFF9D6233FF4F2E
        159E0000001A0000000A00000002000000010000000000000000000000000000
        00000000000100000001000000070000001554371F96B17B4AFFD9AD7AFFD9A8
        71FFD4A167FFC48A4CFFC38A52FFDBB999FFEDDDCDFFF8F1EBFFFEFEFEFFF7EF
        E8FFECDBCBFFDAB896FFC1874EFFC28648FFD29C61FFD7A56BFFD6A773FFA56B
        3BFF4B2D14980000001800000008000000020000000100000000000000000000
        00000000000100000005000000103725156CAE7847FFD9AE7DFFDBA973FFD19E
        64FFC08448FFDEBFA1FFF9F4F2FFFBF8F6FFFBF9F7FFFCF9F8FFFCFAFAFFFBF8
        F6FFF9F6F4FFFAF6F4FFF7F2EFFFDCBD9EFFBC7F43FFCF985DFFD8A46BFFD7A8
        73FF9F6434FF311D0E7000000012000000050000000100000000000000000000
        0001000000020000000A0C08052B9E6D3FF1D7AC7CFFDCAC76FFD39F67FFC288
        50FFEBDBCDFFF6F0EEFFF6F0EDFFF7F3F0FFF8F5F4FFFAF6F6FFFAF7F6FFF9F5
        F2FFF8F3F0FFF7F1EDFFF5EEEAFFF5EEECFFEAD9CAFFBE834AFFCF995EFFD9A6
        6DFFD1A370FF8F5629F10B0603300000000B0000000200000001000000000000
        000100000004000000115D40269CC59666FFDDB07BFFD8A972FFC08649FFE9D8
        C9FFF1EAE5FFBDADA4FFD9CEC9FFF5F0EEFFF7F2F0FFF8F3F1FFF8F3F2FFF6F1
        EEFFF6F0ECFFF4EEEAFFF3ECE7FFF1E9E3FFF0E7E2FFE8D6C5FFBC7E41FFD09E
        66FFDAAA72FFB98553FF5231179F000000140000000500000001000000000000
        00010000000808060323AB7849F8DDB282FFDEB17CFFC68E53FFDBBB9DFFEEE3
        DFFFEEE4DFFF473C37FF82746CFFD8CDC8FFF5EEEBFFF6EFEDFFF5EFEDFFF4EE
        EAFFF4EDE8FFF3EBE6FFF2E9E4FFEFE6E0FFEDE2DCFFEDE1DCFFD8B799FFC186
        4AFFDAAA71FFD8A975FF975B2EF8070402280000000900000001000000010000
        00020000000C3F2C1B6FC19262FFE0B480FFD9AB75FFC38D56FFEDE0DAFFEADE
        D8FFEDE1DBFFB9AEA9FF4E423DFF85776FFFD8CCC5FFF3ECE8FFF3ECE8FFF2E9
        E5FFF2E9E3FFF0E7E2FFEFE5E0FFEDE2DCFFECDFD8FFEADCD5FFEBDFD8FFBF85
        4DFFD5A269FFDCAC73FFB27D4CFF362110730000000F00000003000000010000
        00040000000F745232B2D1A777FFE0B582FFCF9C65FFD4B08FFFE6D7D1FFE9DB
        D4FFEADED8FFECE1DBFFBBAFAAFF544943FF877972FFD7CAC3FFF1E8E3FFEFE5
        E0FFEFE5DFFFEEE3DDFFEDE1DAFFEBDFD8FFE9DCD6FFE8D9D3FFE6D6D0FFD1AC
        88FFCA935AFFDCAD75FFC79665FF643D1EB60000001300000005000000010000
        000400000012966C42DCDBB282FFE1B784FFC68F57FFDFC6B3FFE5D5CDFFE7D8
        D0FFE8DAD4FFEADDD7FFEBDFD9FFBBB0ABFF5A4E48FF80726CFFBDB0AAFFDAD0
        CCFFE7DCD6FFEADED7FFE9DCD6FFE8D9D3FFE7D8D1FFE6D6CEFFE3D3CAFFDCC2
        ADFFC0844AFFDDAF77FFD5A672FF825127DD0000001700000005000000010000
        000500000013A47141F8C89866FFCA9A68FFB27741FFC4AD9EFFC5B1A5FFC7B4
        AAFFCAB8AEFFCDBCB2FFD0BFB7FFD6C8C0FFAFA49EFF4A403BFF463B35FF685B
        54FFA7958AFFB19D92FFB39F94FFB6A197FFB8A499FFBAA69BFFBCA89DFFBDA7
        99FFBA7B3FFFDEB17AFFDAAC76FF955D2EF60000001800000006000000010000
        0005B07640FFAE743EFFAD723BFFAD6F39FFAC6D35FFAB6B32FFAA692FFFAA67
        2CFFA9652AFFA96427FFA86225FFA86123FFB58B68FF5D514AFFB29674FF584E
        4CFF2D3FBAFF293BBCFF2435B7FF202FB2FF1C29ADFF1724A9FF141FA5FFDCC9
        BDFFB57639FFDFB37DFFDFB37CFF9F6433FF0000001900000006000000000000
        0004B27D49FFEBCCA3FFEBC99CFFE9C496FFE8C090FFE6BB88FFE6B782FFE4B3
        7DFFE3B077FFE3B27AFFC89460FFAC8868FFD9CDC5FFAA9E97FF70635AFFAC9F
        98FFEDE2DCFFEDE1DCFFEDE1DCFFEBDFD9FFE2D1C8FFDFCDC2FFDDCAC0FFD5BC
        ADFFB97A40FFE1B67FFFE1B681FF9F6534FF0000001700000006000000000000
        0004B47F4AFFEDCFA7FFDDA96EFFDDA568FFDBA163FFDA9D5EFFD99A5AFFD897
        56FFDFA86EFFC99865FFAA8465FFD6CBC3FFEBE1DCFFEEE4DFFFEDE3DEFFEFE4
        DFFFEFE4DFFFEFE4DEFFEEE3DDFFEEE3DEFFE9DBD4FFDDC9BFFFDBC5BBFFCEAE
        99FFBF834AFFE2B982FFE0B480FF986133F30000001400000005000000000000
        0003B6804DFFEFD1A9FFDFAC72FFDEA96DFFDDA468FFDBA163FFDA9E5FFFDEA6
        6CFFD4A069FFA67040FFC6B7AEFFEAE0DCFFF0E8E2FFF0E8E2FFF0E8E2FFF0E8
        E2FFF1E7E3FFF1E7E2FFF0E7E2FFF0E6E1FFEFE5E0FFDBC6BCFFD7C1B5FFC297
        75FFCC9760FFE3BB85FFD9AE7DFF89572EDB0000001000000004000000000000
        0002B7834DFFF2D8B4FFE3B47EFFE0AC72FFDEA96EFFDDA569FFDCA366FFDDA4
        69FFDFB17CFFB5773FFFB1927AFFE1D7D2FFF0E9E4FFF2ECE7FFF2EBE7FFF2EC
        E7FFF2EBE6FFF3EBE7FFF3EBE7FFF3EBE7FFF1E8E3FFD9C2B7FFCFB6A8FFB67C
        47FFDBAE7AFFE5BB88FFCEA171FF6A4425B00000000B00000002000000000000
        0001B8844FFFF6E0BCFFEDC899FFE9C18EFFE4B67FFFE0AC71FFDEA96DFFDEA7
        6AFFE0AD75FFD7A875FFB1743BFFB49680FFDED5D1FFF0EAE6FFF4EFEBFFF5F0
        ECFFF5F0ECFFF5F0ECFFF6F0ECFFF6EFECFFECE0DBFFD2BAADFFBA8F6DFFC189
        51FFE7C08CFFE6C08CFFBD8C5AFF3A2615680000000700000001000000000000
        0000B98651FFF7E2BFFFEFCD9EFFEDCA99FFEBC694FFE9C18EFFE5B77FFFE0AD
        73FFE0AC71FFE2B27BFFD9AC7BFFB4763EFFAB835EFFCDBEB5FFE4DCD8FFEFE9
        E6FFF3EEEBFFF6F2EFFFF5F0EDFFF0EAE6FFD1BCB0FFBB9981FFB6793FFFE2B8
        85FFE7C08DFFE5BF90FFA36E3EF7060402170000000400000001000000000000
        0000BA8752FFF8E4C2FFF1D2A5FFF4DAB3FFF1D0A3FFECC897FFECC493FFE9C0
        8DFFE4B780FFE2B178FFE4B883FFE3BA8BFFC48D59FFAE723DFFAD815CFFBBA1
        8CFFCAB8A9FFD8D1CCFFCEBBADFFB89880FFAF7F57FFB2753FFFDFB583FFE9C2
        8FFFEAC493FFC89B6BFF593C2291000000080000000200000001000000000000
        0000BC8853FFF9E6C5FFF7DFBAFFDAB78DFFEBD1ACFFF1D2A4FFEECA9AFFECC8
        97FFECC694FFE9C18EFFE7BA83FFE6BC87FFEBC698FFE1BB8DFFCD9B69FFBE85
        50FFB77D46FFB1733AFFB87D46FFBE854FFFCD9C69FFE8C394FFE9C492FFE9C5
        92FFE1BC90FFA26F3EEF0C08051C000000030000000100000000000000000000
        0000BD8A54FFFAE8C8FFDBB88EFF7B5937AAC29360FFF3DCB8FFF2D3A7FFF0CF
        A0FFEECC9DFFEECB9BFFEDC999FFEAC290FFEAC08DFFEBC594FFEDCA9EFFEECE
        A2FFEFD0A4FFEED0A4FFEECEA0FFEDCC9DFFECC999FFEBC595FFEBC795FFE9C8
        9CFFB78250FF3A27175D00000005000000010000000000000000000000000000
        0000BE8B56FFDCB98FFF5E44297F000000035E452B82CA9E6EFFF3DCB9FFF3D8
        ADFFF2D3A5FFF1D1A4FFF1D0A2FFF0D0A1FFEECC9CFFEDC896FFEDC897FFEDC8
        97FFEDC897FFEDC897FFEDC897FFEDC897FFEDC897FFEECB9CFFEACBA0FFC090
        5EFF593F25850000000600000001000000000000000000000000000000000000
        0000BF8C56FF5E452A7E0000000000000001000000035F472D82C79A67FFEED6
        B1FFF7DFBAFFF4D8ACFFF3D6A9FFF2D5A7FFF2D3A6FFF0CFA1FFEECB9BFFEECC
        9BFFEECC9BFFEECB9BFFEFCC9BFFEECD9DFFF1D3A8FFE7C79CFFC08E5CFF5D42
        2987000000050000000200000000000000000000000000000000000000000000
        00005E462B7E000000000000000000000000000000010000000240312057B689
        5AEED9B486FFF4DCB9FFF7E1BBFFF6DCB3FFF5D9AFFFF4D7ABFFF2D2A5FFF0D0
        A1FFF2D1A4FFF2D3A8FFF3D6ADFFEFD1A8FFD3AA7BFFB28253F13E2D1C590000
        0004000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010C09
        06126D54368FC09460F6D4AD7EFFE4C49AFFEFD2ABFFF3D9B2FFF7DFBBFFF1D5
        AFFFEBCCA3FFE1BD91FFD0A677FFBB8D5CF66A5033910B080514000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010907050E40312154826442A7A07A52CDAF875AE2C79866FFAF86
        5AE29E7A50CE806240A73F3020540907050F0000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000002000000020000
        0002000000020000000100000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnCancelClick
      AutoGrayScale = False
    end
    object DxBarBtnAgregarMSD: TdxBarLargeButton
      Caption = '&Modificaci'#243'n de Salario'
      Category = 0
      Hint = 'Modificaci'#243'n de Salario'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000600000007000000070000
        0006000000050000000400000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000060000000B0000001000000015000000180000001A0000001A0000
        001800000016000000110000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E000000171E11094D4C2B1795744223D17A4425D996542DFF96542DFF7A44
        25D9744223D14C2A17961E11094F000000190000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B00000015321C
        0F6B824928E19F6137FFB47B4BFFC4915CFFC99560FFD3A36BFFD3A46BFFC895
        60FFC5905CFFB47B4CFFA06238FF814929E2321C0F6D000000180000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000D120A0636754325CFA76A
        3EFFC7935EFFD5A56CFFD4A46DFFD4A56CFFD4A56CFFD4A56CFFD4A56CFFD5A5
        6CFFD4A56CFFD5A56DFFD4A66DFFC7945FFFA76A3FFF764426D1120A063A0000
        0010000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000E26160C5590552FF0BE8956FFD6A6
        6EFFD5A56DFFD5A56DFFD5A66DFFD6A76EFFD5A76EFFD5A76EFFD5A76FFFD6A7
        6FFFD6A76EFFD5A76EFFD5A66EFFD5A66DFFD6A66FFFBE8957FF91542FF12616
        0C5A000000120000000600000001000000000000000000000000000000000000
        000000000000000000040000000C26160C539B5F38FAC79560FFD5A76EFFD6A6
        6EFFD5A76FFFD6A770FFD6A870FFD6A871FFD6A871FFD6A871FFD7A871FFD7A9
        71FFD6A870FFD6A870FFD6A871FFD6A86FFFD6A76FFFD5A86FFFC79562FF9A5F
        38FA26160D590000001000000005000000010000000000000000000000000000
        00000000000200000009160D0738925934EECA9A64FFD6A870FFD6A76FFFD6A8
        70FFD7A972FFD7A972FFD7AA73FFDAB17BFFE0BC8DFFE1BE91FFE1BF91FFE0BD
        8EFFDAB07BFFD8AB73FFD7AA73FFD7A972FFD7A971FFD7A870FFD6A970FFCA9A
        65FF925934EF160D073E0000000C000000030000000100000000000000000000
        00010000000500000010774829CBC08C5CFFD8A972FFD6A872FFD8A972FFD8AA
        74FFD8AB74FFD8AB75FFD8AC75FFCEA478FFA46E45FF9E653DFF9E653DFFA46E
        45FFD0A97EFFDAAE79FFD8AC76FFD8AC75FFD8AA74FFD8AB73FFD7AA72FFD7AA
        73FFC08D5DFF7A492AD000000016000000070000000100000000000000000000
        00020000000A34201365AB734AFFD8AD76FFD7AA73FFD8AB74FFD8AB75FFD9AC
        76FFDAAD77FFDAAD78FFDAAF79FFA46D44FFD9C3B4FFF8F2EDFFF9F3EFFFE1CF
        C1FFA67047FFDDB683FFDAAF78FFDAAD78FFDAAD77FFD9AC76FFD8AB75FFD8AA
        74FFD9AD78FFAC744BFF341F126B0000000E0000000300000001000000010000
        00040000000F875332DDCC9B6AFFD8AB76FFD8AB75FFD9AC77FFD9AF78FFDAB0
        79FFDAB07AFFDBB17BFFDBB17CFF9C633AFFECDFD8FFF1E6DDFFF2E6DDFFF9F4
        F0FF9E673EFFE0BA88FFDCB27CFFDBB17BFFDAB07AFFDAB079FFDAAF78FFD9AD
        77FFD9AC77FFCC9C6BFF885432DF000000160000000700000001000000020000
        000727190F4EAF7852FFDAB17BFFD8AC76FFDAAD78FFDBB079FFDBB17BFFDBB2
        7CFFDCB27FFFDCB37FFFDCB480FF9C633AFFEADDD4FFF2E7E0FFF2E8DFFFF8F3
        EEFF9F6840FFE1BC8CFFDEB480FFDCB380FFDCB37EFFDCB27CFFDBB17BFFDAB0
        79FFD9AD77FFDBB17DFFAF7952FF2A1A10570000000B00000002000000020000
        000956362192C5976EFFDBAF7BFFDAB079FFDBB07BFFDBB27CFFDEB886FFE5C4
        98FFE6C69CFFE7C79CFFE7C79CFF9C633AFFEBDED6FFF3EAE2FFF3E9E2FFF9F4
        F0FFA06A42FFE9CEA5FFE7C89DFFE6C79CFFE5C599FFE0B988FFDCB37FFFDCB1
        7EFFDBB17AFFDBB27EFFC5986FFF563722980000000E00000003000000020000
        000B7B4F32C6D1A77AFFDBB17CFFDBB27BFFDCB27FFFDEB480FFD0AA7EFFA46E
        44FF9E673EFFA06A42FFA26D45FFA57049FFF4ECE5FFF5ECE5FFF5ECE5FFF9F5
        F1FFA26C44FFA26E46FFA36F48FFA47049FFAC7B54FFD6B28BFFDFB785FFDCB4
        80FFDCB27FFFDCB37EFFD2A97BFF7C5032CA0000001100000004000000030000
        000C99633EECD8B281FFDBB27DFFDCB37FFFDEB482FFDFB683FFA46E45FFD4BC
        AEFFF9F5F1FFF9F5F2FFFAF6F3FFFAF6F3FFF6EEE8FFF6EEE8FFF5EEE8FFF5ED
        E7FFFAF6F2FFFAF5F2FFF9F5F1FFFAF5F2FFE1CFC3FFA57047FFE3BE8EFFDFB6
        83FFDEB481FFDCB580FFDAB483FF99643FED0000001300000005000000030000
        000CA46D46FADEBA8AFFDEB480FFDEB581FFDFB784FFE0B887FF9C633AFFE6D9
        D3FFF5EDE7FFF5EEE8FFF7EFE9FFF7EFEBFFF7F1EBFFF7F1EBFFF6F1ECFFF7F0
        EBFFF6EFE9FFF6EEE8FFF5EDE7FFF5EBE5FFFAF6F3FF9E653DFFE4C192FFE0B8
        86FFDFB784FFDEB582FFDFBD8CFFA56E47FA0000001300000005000000030000
        000BA67049FAE4C297FFDEB582FFE0B785FFE0B987FFE3C08FFF9C633AFFDFCF
        C7FFF2EAE4FFF6F0EBFFF7F1EDFFF8F2EEFFF9F3EEFFF9F3EEFFF8F2EEFFF8F2
        EDFFF7F1EDFFF7F0EBFFF6EFE9FFF5EDE7FFF5EFEBFF9E653DFFE6C698FFE2BB
        89FFE0B987FFDFB784FFE4C398FFA7714AFA0000001200000005000000020000
        000A9E6B45ECE3C69DFFDFB986FFE2BD8CFFE6CB9EFFE8D1A6FFA36E45FFBE9E
        8CFFCCB6AEFFCFBAB1FFD1BDB5FFD4C1BAFFEDE3DEFFF9F5F2FFFAF5F1FFF9F4
        F0FFE5D7D1FFDDCDC5FFDDCCC4FFDDCEC6FFCFB5A7FFA57047FFE9D0A5FFE6C6
        97FFE2BD8BFFE0BA8AFFE4C69FFF9E6D47ED0000001100000004000000020000
        0008835A3BC5DEC19FFFE6C79AFFE9D1A5FFE9D2A8FFEAD5AAFFD7B990FFAD7C
        53FF9C633AFF9C633AFF9C633AFF9C633AFFECE4E0FFFAF8F4FFFAF7F4FFFCFB
        F9FF9C633AFF9C633AFF9C633AFF9C633AFFAD7B52FFD8B78EFFEACFA3FFE8CC
        9EFFE6C89BFFE4C394FFDFC2A1FF835A3CC80000000E00000003000000010000
        00065D422C8FD8BB9DFFEBD7AFFFEAD3AAFFEBD6ACFFEBD7AEFFECD9AFFFEDDA
        B0FFEDDAB2FFEEDBB4FFEEDCB4FF9C633AFFECE4E1FFFBFAF8FFFCF9F7FFFDFB
        FAFFA7754EFFF0DDB7FFEDD8B0FFEDD7AEFFECD5ABFFEBD2A7FFEAD1A5FFE9CE
        A2FFE8CC9FFFE9CCA2FFD7B898FF5D422D940000000B00000003000000010000
        00042D221848C6A07DFFF2E3C5FFEBD6AEFFECD9AFFFECDAB2FFEDDBB3FFEEDC
        B4FFEFDDB6FFEFDDB7FFF0DFB8FF9C633AFFECE5E1FFFCFCFAFFFCFBF9FFFDFC
        FBFFA57049FFF1DFBBFFEFDBB4FFEED9B1FFEDD7AFFFECD6ABFFEBD3A9FFEAD1
        A5FFE9CEA3FFF0DDBBFFC49B77FF2D20174E0000000700000002000000000000
        000200000007A07A5ADAE9D9BFFFEDDCB5FFEDDCB4FFEDDDB5FFEEDEB8FFEFDF
        B9FFF0E0BAFFF0E1BBFFF1E2BBFF9C633AFFE5D9D5FFF9F6F6FFFDFCFBFFF5F2
        F0FFA26C45FFF2E2BEFFF1DEB7FFEFDCB5FFEEDBB3FFEDD8B0FFECD5ADFFEBD4
        A9FFEBD3A9FFE8D4BAFF9C7453DC0000000E0000000400000001000000000000
        0001000000043E31245BCBA885FFF5ECD1FFEEDDB7FFEEDFB8FFEFE0BBFFF0E2
        BCFFF1E3BDFFF1E4BFFFF2E4BFFFA46F47FFC0A392FFCFBAB4FFCFBBB5FFC3A6
        97FFA7744DFFF3E5C1FFF2E1BBFFF1DFB8FFEFDCB6FFEFDBB3FFEDD9B0FFECD6
        ACFFF4E6CAFFC9A27EFF3E2E2161000000080000000200000000000000000000
        00000000000200000006947457C6E4D1B6FFF2E7C9FFEFE2BCFFF1E3BEFFF1E4
        BFFFF2E5C1FFF2E6C2FFF3E6C3FFDEC6A1FFAF7F57FF9C633AFF9C633AFFAF7F
        58FFDEC7A2FFF3E5C1FFF2E3BDFFF2E1BBFFF0DFB8FFEFDDB6FFEEDAB3FFF2E2
        C2FFE3CDB1FF926F51C80000000C000000040000000100000000000000000000
        0000000000010000000319140F28B6936FECEFE3CCFFF5EACDFFF1E5C1FFF2E7
        C2FFF2E8C3FFF3E8C4FFF3E9C5FFF4E9C5FFF4EAC7FFF4EAC7FFF4E9C6FFF5E9
        C6FFF4E8C5FFF3E6C2FFF3E6C1FFF3E4BEFFF1E1BCFFF0DFB9FFF4E5C6FFEFE1
        CAFFB28D6AED19130E2D00000006000000020000000000000000000000000000
        000000000000000000010000000431271E46C6A27EF9EFE3CBFFF8F1D8FFF3E8
        C4FFF3E9C5FFF4EAC7FFF4EAC8FFF4EBC8FFF5EBC9FFF5ECC9FFF5EBC9FFF5EB
        C8FFF4EAC7FFF4E8C5FFF3E7C4FFF3E5C0FFF2E3BEFFF7EDD3FFEEE0C8FFC39D
        78FA30251B4A0000000700000002000000000000000000000000000000000000
        00000000000000000000000000010000000432281F45BB9876EEE6D5BAFFFBF7
        E3FFF7F0D3FFF4EBC8FFF5ECCBFFF5EDCBFFF6EDCBFFF5EDCCFFF5EDCBFFF5EC
        CBFFF5EBC9FFF5EAC7FFF4E8C5FFF6EDCFFFFBF5E1FFE6D2B7FFB99471EE3127
        1D4A000000070000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000010000000318130F239E8163C8D8BA
        98FFF1E5CFFFFCF9E7FFFBF6E0FFF8F2D8FFF8F3D6FFF6EFCDFFF6EFCDFFF8F2
        D6FFF8F1D6FFFBF5DEFFFCF8E6FFF1E5CEFFD7B896FF9C7E5FCA17130E280000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000054136
        2956AE916EDAD4B591FFE5D1B4FFF1E6CFFFF4EAD5FFFCF9E8FFFDF9E8FFF5EA
        D5FFF1E5CEFFE4CFB1FFD3B38EFFAD8E6CDA4336295B00000007000000040000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        000300000004251E1832665642829F8465C5A78C6BCECFAC85FCCFAC85FCA68A
        6ACF9F8366C666544184251E1734000000060000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000040000000500000005000000050000
        0005000000040000000400000003000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnAgregarMSDClick
      AutoGrayScale = False
    end
    object DxBarBtnActualizar: TdxBarLargeButton
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
      OnClick = DxBarBtnActualizarClick
      AutoGrayScale = False
    end
    object DxBarBtnEliminar: TdxBarLargeButton
      Caption = 'Eliminar'
      Category = 0
      Enabled = False
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000A00000010000000090000000200000000000000000000
        00020000000A000000120000000C000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00020000000F0F0742921D0F7EEF0603347A0000000E00000002000000020000
        000F0804347C1D0F7EF00F084194000000120000000200000000000000000000
        0000000000010000000200000004000000060000000700000007000000070000
        0007000000070000000800000008000000080000000800000008000000080000
        0010120B47953233AFFF3648CCFF1D1EA5FF0603357E00000017000000170804
        35801F20A5FF3747CCFF2D2FAEFF120B46950000000B00000000000000000000
        0000000000020000000800000011000000180000001B0000001C0000001D0000
        001D0000001D0000001D0000001D0000001E0000001E0000001E0000001F0000
        002A281D8DF3596CD8FF3B51D3FF3A4FD2FF1E22A6FF0602358D0602358E2022
        A6FF3A50D3FF3A50D3FF4C5FD4FF291D8CF10000001000000000000000000000
        000100000004000000117E5E52C1AF8271FFAE8172FFAE8171FFAE8070FFAD80
        70FFAD7F70FFAC7F6FFFAC7E6EFFAB7E6DFFAB7D6DFFAB7D6CFFAE8271FFE1D4
        CFFF9389B4FF4D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
        D7FF415AD7FF5B72DEFF484AB8FF130F3C7A0000000900000000000000000000
        00010000000600000016B08374FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7F5FFFBF7
        F4FFFAF7F4FFFBF6F3FFFBF6F3FFFAF5F2FFFAF5F1FFFAF4F1FFF9F4F1FFFAF7
        F4FFF3F2F1FFA19DC9FF585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
        DBFF6983E3FF5356C0FF16123F7C0000000D0000000200000000000000000000
        00010000000600000018B18576FFFDFCFBFFF6EEE8FFF6EEE8FFF6EEE8FFF6ED
        E7FFF6EDE7FFF5EDE6FFF5ECE6FFF6ECE6FFF5ECE5FFF5EBE5FFF5ECE5FFF4EC
        E5FFF7F1ECFFF2F0EEFFA19DC9FF5D63C7FF6783E5FF5774E2FF5774E2FF5774
        E2FF565CC6FF1916438A00000015000000030000000000000000000000000000
        00020000000600000018B38777FFFEFCFBFFF6EEE9FFF7EFE8FFF6EFE9FFF6EE
        E8FFF6EDE8FFF6EDE7FFF6EDE7FFF6EDE7FFF5ECE6FFF5EDE6FFF5ECE6FFF5EC
        E6FFF7F1ECFFF3F1EFFF9A97C5FF4A50BEFF7492EBFF6383E7FF6483E7FF6383
        E7FF3840B6FF0B093A8800000013000000030000000000000000000000000000
        00010000000500000016B58B7CFFFEFDFCFFF8F0EBFFF7EFEAFFF7EFEAFFF7EF
        EAFFF7EFEAFFF7EFE9FFF6EEE9FFF6EEE8FFF6EEE8FFF6EEE8FFF6EDE7FFF7F2
        EEFFF6F3F2FFA4A1CEFF555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
        EEFF7796EDFF414ABCFF0E0C3C770000000B0000000100000000000000000000
        00010000000500000015B68C7EFFFEFDFCFFF7F1ECFFF7F1EBFFFAF4F0FFFAF4
        F0FFF9F3EFFFF8F4EFFFF8F3EFFFF9F3EFFFF8F3EEFFF8F2EEFFF8F2EEFFF9F7
        F6FFABAAD7FF636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
        F8FF83A3F2FF83A1F1FF5058C4FF121140720000000600000000000000000000
        00000000000500000014B78E80FFFEFDFDFFF8F1EDFFF8F1ECFFBE9382FFBE93
        82FFBE9382FFBE9381FFBE9282FFBE9381FFBE9281FFBE9282FFBE9583FFE6DA
        D4FF6667D1FFAFC6F6FF8EADF4FFABC4F8FF6F76D0FFA6A4D2FFB1B0DBFF868E
        E1FFB5CCF9FF8DACF4FFA1B8F4FF5758C3EF0000000900000000000000000000
        00000000000500000013B88F82FFFEFDFDFFF8F2EEFFF8F1EDFFFAF5F2FFFAF5
        F1FFFAF5F1FFFAF5F1FFFAF5F0FFF9F4F0FFF9F4EFFFF9F4EFFFF8F3EFFFFAF8
        F7FFA9AAE2FF95A0EAFFC0D3F9FF7880D7FFAFAEDAFFF7F5F3FFF6F3F2FFB8B8
        E3FF8B93E6FFC1D3F9FF949EE9FF303168870000000500000000000000000000
        00000000000400000012BB9184FFFEFEFDFFF8F3EEFFF8F2EEFFC09584FFC095
        85FFC09485FFBF9584FFC09584FFC09583FFC09484FFBF9483FFC09585FFD7BD
        B3FFEBE0DCFFA7A3D8FF7073DBFFADA7D1FFEAE0DCFFF8F2EEFFF8F2EEFFF9F7
        F7FFAFAAD3FF5E62CBEE31326886000000080000000100000000000000000000
        00000000000400000011BB9485FFFEFEFDFFF9F4F0FFF9F3EFFFFBF6F2FFFBF6
        F2FFFBF5F2FFFAF5F2FFFAF5F2FFFAF5F1FFFAF5F1FFF9F5F1FFFAF4F0FFF9F4
        F0FFFBF8F6FFFBFAF8FFF9F7F6FFFBFAF8FFF9F6F3FFF7EEE9FFF6EEE8FFFBF8
        F6FFE4D7D2FF0000001C0000000A000000020000000000000000000000000000
        00000000000400000010BC9788FFFEFEFDFFF9F3F0FFF9F4EFFFC19887FFC197
        87FFC19787FFC19786FFC09787FFC19786FFC19786FFC19686FFC09686FFC096
        86FFC09686FFC19786FFC29786FFC19786FFB78A7AFFF6F0EAFFF7F0EAFFFBF7
        F4FFB58B7BFF0000001600000006000000010000000000000000000000000000
        0000000000040000000FBF988AFFFEFEFEFFFAF5F1FFF9F4F1FFFBF7F4FFFBF7
        F3FFFBF7F3FFFBF6F3FFFBF6F3FFFAF5F2FFFBF6F2FFFBF5F2FFFAF5F2FFFAF5
        F1FFFAF5F1FFF9F5F1FFF9F4F1FFFAF4F1FFFAF5F1FFF7F0EBFFF8F0EBFFFBF8
        F5FFB58A7AFF0000001500000005000000010000000000000000000000000000
        0000000000040000000EC0998BFFFEFEFEFFFAF5F2FFFAF5F1FFC39A8AFFC29A
        89FFC39A8AFFC29A89FFC39989FFC39989FFC29A89FFC29989FFC29889FFC398
        89FFC29988FFC29987FFC29888FFC29888FFB98E7BFFF7F0ECFFF8F0EBFFFBF8
        F6FFB58C7DFF0000001500000005000000010000000000000000000000000000
        0000000000030000000EC19C8DFFFFFEFEFFFBF6F3FFFAF6F2FFFBF8F5FFFBF8
        F5FFFBF8F5FFFBF7F5FFFBF7F4FFFBF7F4FFFBF6F3FFFBF6F4FFFAF6F3FFFBF6
        F3FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFF8F1EDFFF8F1ECFFFBF9
        F7FFB78E7FFF0000001400000005000000010000000000000000000000000000
        0000000000030000000CC49F90FFFFFEFEFFFBF7F5FFFBF7F4FFC59D8DFFC49D
        8CFFC59C8CFFC49C8CFFC49D8CFFC49C8CFFC49C8BFFC49C8BFFC49B8BFFC39B
        8BFFC39B8BFFC49C8BFFC49B8BFFC49B8BFFBA907FFFF8F2EEFFF8F2EEFFFAF7
        F5FFB99283FF0000001200000004000000000000000000000000000000000000
        0000000000030000000BC4A192FFFFFFFEFFFBF7F5FFFBF8F5FFFCF9F8FFFBF9
        F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F5FFFBF8F5FFFBF8F5FFFBF8F5FFFBF8
        F5FFFBF7F5FFFBF8F4FFFBF7F4FFFBF6F4FFFBF6F3FFF9F3EFFFF7F1ECFFF9F4
        F3FFBB9284FF0000001100000004000000000000000000000000000000000000
        0000000000020000000AC6A294FFFFFFFEFFFCF8F6FFFBF8F5FFC7A190FFC7A0
        90FFC7A08FFFC6A090FFC69F90FFC79F8FFFC79F8FFFC79F8FFFC69E8FFFC69F
        8FFFC69F8EFFC69E8EFFC69E8EFFC69E8EFFBD9281FFF7F2EDFFF6EFEAFFF7F2
        EFFFBD9486FF0000001000000004000000000000000000000000000000000000
        00000000000200000009C8A495FFFFFFFFFFFCF9F6FFFBF9F6FFFDFBF8FFFCFA
        F8FFFCFAF8FFFCFAF8FFFCFAF8FFFBF9F7FFFCF9F7FFFCF9F7FFFCF9F6FFFBF8
        F6FFFBF8F5FFFBF8F6FFFBF8F5FFFBF7F4FFF9F5F2FFF5EFEAFFF3EAE6FFF3ED
        EAFFBD9888FF0000000F00000004000000000000000000000000000000000000
        00000000000200000008C8A597FFFFFFFFFFFCFAF8FFFCFAF7FFC9A394FFC9A3
        93FFC8A393FFC9A393FFC8A293FFC8A393FFC9A292FFC8A292FFC8A291FFC8A1
        92FFC7A192FFC7A291FFC8A191FFC7A191FFBF9685FFEFE4DFFFECE0DBFFECE1
        DDFFBF988AFF0000000E00000004000000000000000000000000000000000000
        00000000000200000008C9A698FFFFFFFFFFFCFAF9FFFCFAF8FFFDFBFAFFFDFB
        F9FFFDFBF9FFFDFBF9FFFCFBF8FFFCFAF8FFFDFAF8FFFCFAF8FFFBF8F7FFFBF8
        F6FFF6EFEAFFEFE3DEFFE7D9D2FFE2D3CBFFE1CFC8FFDFCCC4FFDCC8BFFFDCC9
        C2FFC19A8CFF0000000D00000003000000000000000000000000000000000000
        00000000000200000007CBA899FFFFFFFFFFFDFAF9FFFDFAF9FFCBA696FFCBA6
        96FFCAA696FFCBA696FFCBA696FFCAA596FFCAA596FFCAA595FFCAA595FFC29A
        89FFF0E7E1FFB89284FFAC7F6FFFAB7E6DFFAB7D6DFFAB7C6CFFAA7C6CFFD1B8
        AFFFC29D8DFF0000000A00000003000000000000000000000000000000000000
        00000000000100000006CBA99BFFFFFFFFFFFDFBFAFFFDFAFAFFFDFBFBFFFDFB
        FBFFFEFBFAFFFDFCFAFFFDFBFAFFFDFBF9FFFDFBF9FFFDFBF9FFFCFBF8FFFAF6
        F4FFEDE0DCFFB18676FFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFD1B7
        AEFF533C35860000000600000002000000000000000000000000000000000000
        00000000000100000005CBAA9DFFFFFFFFFFFDFBFAFFFDFBFAFFCCA999FFCCA9
        99FFCCA999FFCCA999FFCCA899FFCCA899FFCCA899FFCCA899FFCCA799FFC49D
        8DFFECE0DBFFB68D7DFFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFD4BAB0FF553F
        3886000000080000000300000001000000000000000000000000000000000000
        00000000000100000005CCAB9DFFFFFFFFFFFEFCFBFFFEFCFAFFFEFBFAFFFDFB
        FBFFFDFCFAFFFDFBFAFFFDFBF9FFFDFAF9FFFCFAF8FFFCFAF9FFFAF7F5FFF6F1
        EDFFEDE2DCFFBC9485FFFFFEFEFFFDF9F6FFFBF6F3FFD6BCB4FF58433B860000
        0008000000030000000100000000000000000000000000000000000000000000
        00000000000100000004CDAC9FFFFFFFFFFFFDFCFCFFFDFDFCFFFDFCFBFFFDFC
        FBFFFDFCFAFFFDFCFAFFFEFBFAFFFDFBF9FFFDFBF9FFFAF8F7FFF9F5F3FFF5EE
        ECFFECE2DDFFC19C8CFFFFFEFEFFFBF6F3FFD9C1B7FF5B463F85000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000100000003CEAD9FFFFFFFFFFFFEFCFCFFFEFDFCFFFEFDFCFFFDFC
        FCFFFDFDFCFFFEFCFBFFFEFCFBFFFDFCFAFFFBF8F7FFF9F6F4FFF7F2EFFFF3EC
        E8FFEDE2DDFFC6A293FFFFFEFEFFDBC3BAFF5D49428400000006000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000002CEADA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
        E9FFEEE3E0FFE5D4CEFFE0CCC4FF5F4D45830000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001998076BECEAEA0FFCEADA0FFCEAE9FFFCEADA0FFCEAD
        9FFFCDAC9FFFCEACA0FFCDAC9FFFCDAC9FFFCCAC9EFFCCAB9EFFCCAA9DFFCCAB
        9CFFCBAA9CFFCBAA9CFF614F4882000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnEliminarClick
      AutoGrayScale = False
    end
    object DxBarBtn1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object DxBarBtn2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 96
    Top = 160
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle1: TcxStyle
    end
  end
  object CdPersonalImss: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = CdPersonalImssAfterScroll
    Left = 72
    Top = 272
  end
  object dsPersonalImss: TDataSource
    DataSet = CdPersonalImss
    Left = 128
    Top = 272
  end
  object CdPersonalImssUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 216
  end
  object dsPersonalImssUpt: TDataSource
    DataSet = CdPersonalImssUpt
    Left = 128
    Top = 216
  end
  object CdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = CdOrganizacionAfterScroll
    Left = 504
    Top = 208
  end
  object dsOrganizacion: TDataSource
    DataSet = CdOrganizacion
    Left = 536
    Top = 208
  end
  object CdDepartamentos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 160
  end
  object dsDepartamentos: TDataSource
    DataSet = CdDepartamentos
    Left = 536
    Top = 160
  end
  object CdCargos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 208
  end
  object dsCargos: TDataSource
    DataSet = CdCargos
    Left = 656
    Top = 208
  end
  object CdPeriodosGuardia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 160
  end
  object dsPeriodosGuardia: TDataSource
    DataSet = CdPeriodosGuardia
    Left = 656
    Top = 160
  end
  object dsTPimss: TDataSource
    Left = 200
    Top = 280
  end
end
