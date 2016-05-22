object FrmNominas: TFrmNominas
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de N'#243'minas'
  ClientHeight = 363
  ClientWidth = 544
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 544
    Height = 92
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 16
      Top = 13
      Width = 64
      Height = 13
      Caption = 'Tipo N'#243'mina:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lblTipoNomina: TJvLabel
      Left = 272
      Top = 13
      Width = 81
      Height = 13
      Caption = 'lblTipoNomina'
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
    object lblLeyendaTipo: TJvLabel
      Left = 86
      Top = 41
      Width = 73
      Height = 13
      Caption = 'lblLeyendaTipo'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel
      Left = 37
      Top = 62
      Width = 43
      Height = 13
      Caption = 'Guardia:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object cbTipos: TComboBox
      Left = 86
      Top = 11
      Width = 171
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbTiposChange
    end
    object cbGuardia: TComboBox
      Left = 86
      Top = 60
      Width = 250
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbGuardiaChange
    end
  end
  object DBGridNominas: TNextDBGrid
    Left = 0
    Top = 121
    Width = 544
    Height = 242
    Align = alClient
    Options = [goHeader, goSelectFullRow]
    TabOrder = 1
    TabStop = True
    OnDblClick = DBGridNominasDblClick
    DataSource = dsNomina
    ExplicitHeight = 233
    object NxDBTextColumn1: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'N'#243'mina'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      FieldName = 'Titulo'
    end
    object NxDBDateColumn1: TNxDBDateColumn
      DefaultValue = '26/05/2013'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Inicio'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 1
      SortType = stDate
      FieldName = 'FechaNomina'
      HideWhenEmpty = False
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxDBDateColumn2: TNxDBDateColumn
      DefaultValue = '26/05/2013'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Termino'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 2
      SortType = stDate
      FieldName = 'FechaTerminoNomina'
      HideWhenEmpty = False
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxDBNumberColumn1: TNxDBNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'D'#237'as'
      ParentFont = False
      Position = 3
      SortType = stNumeric
      FieldName = 'Dias'
      Precision = 0
      Increment = 1.000000000000000000
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 544
    Height = 29
    Caption = 'ToolBar1'
    Images = ClientModule1.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object Btn_Agregar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Agregar un nuevo Salario Proyectado'
      Caption = 'Btn_Agregar'
      ImageIndex = 3
      OnClick = Btn_AgregarClick
    end
    object Btn_Editar: TToolButton
      Left = 23
      Top = 0
      Hint = 'Editar Salario Proyectado'
      Caption = 'Btn_Editar'
      ImageIndex = 0
      OnClick = Btn_AgregarClick
    end
    object Btn_Quitar: TToolButton
      Left = 46
      Top = 0
      Hint = 'Eliminar Salario Proyectado'
      Caption = 'Btn_Quitar'
      ImageIndex = 4
      OnClick = Btn_QuitarClick
    end
    object ToolButton4: TToolButton
      Left = 69
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 15
      Style = tbsSeparator
    end
    object Btn_Refresh: TToolButton
      Left = 77
      Top = 0
      Hint = 'Recargar el cat'#195#161'logo de Salarios Proyectados'
      Caption = 'Refresh'
      ImageIndex = 10
    end
    object ToolButton1: TToolButton
      Left = 100
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 15
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 108
      Top = 0
      Caption = 'ToolButton6'
      ImageIndex = 11
    end
  end
  object Panel_Datos: TPanel
    Left = 25
    Top = 139
    Width = 502
    Height = 154
    TabOrder = 3
    object JvLabel2: TJvLabel
      Left = 19
      Top = 7
      Width = 32
      Height = 13
      Caption = 'Titulo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 25
      Top = 90
      Width = 26
      Height = 13
      Caption = 'D'#237'as:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel
      Left = 20
      Top = 63
      Width = 31
      Height = 13
      Caption = 'Inicio:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel5: TJvLabel
      Left = 168
      Top = 63
      Width = 44
      Height = 13
      Caption = 'Termino:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel6: TJvLabel
      Left = 4
      Top = 34
      Width = 47
      Height = 13
      Caption = 'Periodos:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel8: TJvLabel
      Left = 4
      Top = 113
      Width = 107
      Height = 13
      Caption = 'Aplicaci'#243'n Conceptos:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel9: TJvLabel
      Left = 207
      Top = 113
      Width = 287
      Height = 13
      Caption = 'Sirve para determina el periodo de los conceptos de n'#243'mina'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel10: TJvLabel
      Left = 4
      Top = 134
      Width = 112
      Height = 13
      Caption = 'Aplicaci'#243'n Tablas ISPT:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel11: TJvLabel
      Left = 207
      Top = 134
      Width = 255
      Height = 13
      Caption = 'Sirve para determina el periodo de las tablas de ISPT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object eDias: TMoneyEdit
      Left = 57
      Top = 88
      Width = 51
      Height = 21
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
      Enabled = False
      TabOrder = 3
      Version = '1.1.1.0'
      OnChange = PeriodoChange
    end
    object eTitulo: TEdit
      Left = 57
      Top = 5
      Width = 432
      Height = 21
      TabOrder = 0
      Text = 'eTitulo'
    end
    object eInicio: TJvDatePickerEdit
      Left = 57
      Top = 61
      Width = 97
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 1
      OnChange = PeriodoChange
    end
    object eTermino: TJvDatePickerEdit
      Left = 216
      Top = 61
      Width = 97
      Height = 21
      AllowNoDate = True
      Checked = True
      Enabled = False
      TabOrder = 2
      OnChange = eTerminoChange
    end
    object cbPeriodos: TDBLookupComboBox
      Left = 57
      Top = 32
      Width = 281
      Height = 21
      DataField = 'IdPeriodosGuardia'
      DataSource = dsNominaUpdate
      KeyField = 'IdPeriodosGuardia'
      ListField = 'LeyendaFecha'
      ListSource = dsPeriodos
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 328
      Top = 63
      Width = 169
      Height = 17
      Caption = 'Permitir modificaci'#243'n de Fechas'
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 126
      Top = 88
      Width = 250
      Height = 17
      Caption = 'Tipo de n'#243'mina ajustado a '
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object Aplicacion_Conceptos: TJvDatePickerEdit
      Left = 114
      Top = 111
      Width = 87
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 7
    end
    object Aplicacion_ISPT: TJvDatePickerEdit
      Left = 114
      Top = 132
      Width = 87
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 8
    end
  end
  object Panel_Botones: TPanel
    Left = 23
    Top = 295
    Width = 504
    Height = 41
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 4
    object Btn_AgregarLinea: TAdvGlowButton
      Left = 200
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
      Caption = '&Agregar'
      ImageIndex = 33
      Images = ClientModule1.ImagelistMenu
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = Btn_AgregarLineaClick
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
    object Btn_AceptarLinea: TAdvGlowButton
      Left = 300
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
      Caption = '&Aceptar'
      ImageIndex = 58
      Images = ClientModule1.ImagelistMenu
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = Btn_AgregarLineaClick
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
    object Btn_CerrarLinea: TAdvGlowButton
      Left = 400
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
      Caption = '&Cerrar'
      ImageIndex = 50
      Images = ClientModule1.ImagelistMenu
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
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
  end
  object cdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdTipoNominaAfterOpen
    AfterScroll = cdTipoNominaAfterScroll
    AfterRefresh = cdTipoNominaAfterOpen
    Left = 24
    Top = 304
  end
  object cdNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 304
  end
  object dsTipoNomina: TDataSource
    DataSet = cdTipoNomina
    Left = 192
    Top = 304
  end
  object dsNomina: TDataSource
    DataSet = cdNomina
    Left = 384
    Top = 304
  end
  object cdPeriodos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdPeriodosAfterScroll
    Left = 432
    Top = 8
  end
  object dsPeriodos: TDataSource
    DataSet = cdPeriodos
    Left = 496
    Top = 8
  end
  object dsNominaUpdate: TDataSource
    Left = 112
    Top = 304
  end
  object cdGuardia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 8
  end
end
