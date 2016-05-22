object FrmInasistencia: TFrmInasistencia
  Left = 0
  Top = 0
  Caption = 'FrmInasistencia'
  ClientHeight = 364
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 656
    Height = 25
    Caption = 'ToolBar1'
    Images = ClientModule1.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
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
      OnClick = Btn_EditarClick
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
      OnClick = Btn_RefreshClick
    end
    object ToolButton1: TToolButton
      Left = 100
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 15
      Style = tbsSeparator
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 656
    Height = 298
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 650
      Top = 0
      Width = 6
      Height = 298
      Align = alRight
      ExplicitLeft = 688
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 657
      Height = 292
      DataSource = dsInasistencia
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 323
    Width = 656
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object pnl_BotonesLinea: TPanel
    Left = 344
    Top = 233
    Width = 313
    Height = 41
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 3
    Visible = False
    object btnAgregarLinea: TAdvGlowButton
      Left = 9
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
      OnClick = btnAgregarLineaClick
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
      ExplicitLeft = 3
    end
    object btnAceptarLinea: TAdvGlowButton
      Left = 109
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
      ExplicitLeft = 103
    end
    object btnBtn_CerrarLinea: TAdvGlowButton
      Left = 209
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
      OnClick = btnBtn_CerrarLineaClick
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
  object pnl_agregar: TPanel
    Left = 344
    Top = 31
    Width = 313
    Height = 162
    TabOrder = 4
    Visible = False
    object JvLabel1: TJvLabel
      Left = 58
      Top = 15
      Width = 82
      Height = 14
      Caption = 'Id del Personal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 13
      Top = 37
      Width = 127
      Height = 14
      Caption = 'Id del Tipo Inasistencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 56
      Top = 62
      Width = 84
      Height = 14
      Caption = 'Fecha de Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel
      Left = 39
      Top = 87
      Width = 101
      Height = 14
      Caption = 'Fecha de Termino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel5: TJvLabel
      Left = 81
      Top = 114
      Width = 59
      Height = 14
      Caption = 'Referencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel6: TJvLabel
      Left = 38
      Top = 137
      Width = 102
      Height = 14
      Caption = 'Diferencia de Dias '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object finicio: TDBDateEdit
      Left = 154
      Top = 60
      Width = 145
      Height = 21
      Hint = 'Ingrese una fecha de nacimiento.'
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'Inicio'
      DataSource = dsInasistencia
      DefaultToday = True
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = finicioChange
    end
    object ftermino: TDBDateEdit
      Left = 154
      Top = 85
      Width = 145
      Height = 21
      Hint = 'Ingrese una fecha de nacimiento.'
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'Termino'
      DataSource = dsInasistencia
      DefaultToday = True
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnChange = fterminoChange
    end
    object referencia: TDBEdit
      Left = 154
      Top = 110
      Width = 145
      Height = 21
      DataField = 'Referencia'
      DataSource = dsInasistencia
      TabOrder = 2
    end
    object dias: TDBEdit
      Left = 154
      Top = 135
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object cbPersonal: TDBComboBox
      Left = 154
      Top = 8
      Width = 145
      Height = 21
      DataField = 'idpersonal'
      DataSource = dsInasistencia
      TabOrder = 4
    end
    object cbTipo: TDBComboBox
      Left = 155
      Top = 35
      Width = 145
      Height = 21
      DataField = 'IdTipoInasistencia'
      DataSource = dsInasistencia
      TabOrder = 5
    end
  end
  object cdInasistencia: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 553
    Top = 280
  end
  object dsInasistencia: TDataSource
    DataSet = cdInasistencia
    Left = 624
    Top = 280
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 455
    Top = 280
  end
  object cdTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 501
    Top = 280
  end
end
