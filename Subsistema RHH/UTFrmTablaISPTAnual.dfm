﻿object FrmTablaISPTAnual: TFrmTablaISPTAnual
  Left = 0
  Top = 0
  Caption = 'Tabla de  I.S.P.T. Anual'
  ClientHeight = 303
  ClientWidth = 691
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 280
    Width = 691
    Height = 23
    Align = alBottom
    Padding.Left = 4
    Padding.Top = 6
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 0
    object Memo1: TMemo
      Left = 5
      Top = 7
      Width = 508
      Height = 11
      Align = alLeft
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'P'
        '.'
        'S'
        '.'
        'E'
        '.'
        'L'
        '.'
        'I'
        '. '
        '= '
        'P'
        'o'
        'r'
        'c'
        'e'
        'n'
        't'
        'a'
        'j'
        'e '
        'S'
        'o'
        'b'
        'r'
        'e '
        'e'
        'l '
        'E'
        'x'
        'c'
        'e'
        'd'
        'e'
        'n'
        't'
        'e '
        'd'
        'e'
        'l '
        'L'
        #237
        'm'
        'i'
        't'
        'e '
        'I'
        'n'
        'f'
        'e'
        'r'
        'i'
        'o'
        'r')
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object tsPeriodos: TAdvTabSet
    Left = 0
    Top = 259
    Width = 691
    Height = 21
    Version = '1.7.1.3'
    Align = alBottom
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    AdvTabs = <>
    FreeOnClose = False
    SelectedColorTo = clHotLight
    GradientDirection = gdVertical
    TabMargin.LeftMargin = 2
    TabMargin.TopMargin = 2
    TabMargin.RightMargin = 0
    TabOverlap = 0
    TabPosition = pBottom
    ShowScroller = ssAuto
    OnChange = tsPeriodosChange
  end
  object NextDBGrid1: TNextDBGrid
    Left = 0
    Top = 82
    Width = 691
    Height = 177
    Align = alClient
    Options = [goGrid, goHeader, goSelectFullRow]
    ReadOnly = True
    TabOrder = 2
    TabStop = True
    OnCellDblClick = NextDBGrid1CellDblClick
    DataSource = dsTablaISPT
    ExplicitTop = 29
    ExplicitHeight = 230
    object LimiteInferior: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Limite Inferior'
      Header.Alignment = taRightJustify
      ParentFont = False
      Position = 0
      SortType = stNumeric
      Width = 110
      FieldName = 'LimiteInferior'
      FormatMask = '##,###,###,##0.00'
      Precision = 2
      Increment = 1.000000000000000000
    end
    object NxDBNumberColumn1: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Limite Superior'
      Header.Alignment = taRightJustify
      ParentFont = False
      Position = 1
      SortType = stNumeric
      Width = 110
      FieldName = 'LimiteSuperior'
      FormatMask = '##,###,###,##0.00'
      Precision = 2
      Increment = 1.000000000000000000
    end
    object NxDBNumberColumn2: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Cuota Fija'
      Header.Alignment = taRightJustify
      ParentFont = False
      Position = 2
      SortType = stNumeric
      Width = 110
      FieldName = 'cuotafija'
      FormatMask = '##,###,###,##0.00'
      Precision = 2
      Increment = 1.000000000000000000
    end
    object NxDBNumberColumn3: TNxDBNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'PSELI'
      Header.Alignment = taRightJustify
      ParentFont = False
      Position = 3
      SortType = stNumeric
      FieldName = 'pseli'
      FormatMask = '##,###,###,##0.00'
      Precision = 0
      Increment = 1.000000000000000000
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 691
    Height = 29
    Caption = 'ToolBar1'
    Images = ClientModule1.ImagelistMenu
    TabOrder = 3
    Visible = False
    object Btn_Agregar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Agregar una nueva linea a la tabla'
      Caption = 'Btn_Agregar'
      ImageIndex = 39
      OnClick = Btn_AgregarClick
    end
    object Btn_Editar: TToolButton
      Left = 23
      Top = 0
      Caption = 'Btn_Editar'
      ImageIndex = 38
      OnClick = Btn_EditarClick
    end
    object Btn_Quitar: TToolButton
      Left = 46
      Top = 0
      Caption = 'Btn_Quitar'
      ImageIndex = 40
      OnClick = Btn_QuitarClick
    end
    object Btn_Refresh: TToolButton
      Left = 69
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = Btn_RefreshClick
    end
    object ToolButton1: TToolButton
      Left = 92
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 14
      Style = tbsSeparator
    end
    object Btn_NuevaTabla: TToolButton
      Left = 100
      Top = 0
      Caption = 'Btn_NuevaTabla'
      ImageIndex = 31
      OnClick = Btn_AgregarClick
    end
    object ToolButton5: TToolButton
      Left = 123
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 14
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 131
      Top = 0
      Caption = 'ToolButton6'
      ImageIndex = 13
      Visible = False
    end
  end
  object Panel_BotonesLinea: TPanel
    Left = 360
    Top = 136
    Width = 323
    Height = 41
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 4
    Visible = False
    object Btn_AgregarLinea: TAdvGlowButton
      Left = 19
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
      Left = 119
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
      Caption = '&Aceptar'
      ImageIndex = 58
      Images = ClientModule1.ImagelistMenu
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
      Left = 219
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
      OnClick = Btn_CerrarLineaClick
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
  object Panel_DatosLinea: TPanel
    Left = 360
    Top = 16
    Width = 323
    Height = 118
    TabOrder = 5
    Visible = False
    object JvLabel2: TJvLabel
      Left = 28
      Top = 35
      Width = 72
      Height = 13
      Caption = 'Limite Inferior:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 45
      Top = 61
      Width = 55
      Height = 13
      Caption = 'Cuota Fija:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel1: TJvLabel
      Left = 67
      Top = 90
      Width = 33
      Height = 13
      Caption = 'PSELI:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object eLimiteInferior: TMoneyEdit
      Left = 106
      Top = 34
      Width = 119
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
      TabOrder = 0
      Version = '1.1.1.0'
    end
    object eCuotaFija: TMoneyEdit
      Left = 106
      Top = 59
      Width = 87
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
      TabOrder = 1
      Version = '1.1.1.0'
    end
    object eAñoAplicacion: TAdvEdit
      Left = 106
      Top = 7
      Width = 121
      Height = 21
      EditAlign = eaRight
      EditType = etNumeric
      LabelCaption = 'A'#241'o Aplicaci'#243'n:'
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      TabOrder = 2
      Text = '0'
      ValidChars = '0123456789'
      Visible = True
      Version = '2.9.0.0'
    end
    object epseli: TMoneyEdit
      Left = 106
      Top = 86
      Width = 87
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
      TabOrder = 3
      Version = '1.1.1.0'
    end
  end
  object dsTablaISPT: TDataSource
    Left = 240
    Top = 136
  end
  object DxBManagerMain: TdxBarManager
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
    ImageOptions.LargeImages = Form2.cxImageResIconosTodos24
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 512
    Top = 112
    DockControlHeights = (
      0
      0
      53
      0)
    object DxBarMain: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MainTool'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 906
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBLbuttonAgregar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnNuevaTabla'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonEditar'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonEliminar'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonActualizar'
        end
        item
          Visible = True
          ItemName = 'DxBLbuttonSalir'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object DxBLbuttonAgregar: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = Btn_AgregarClick
      AutoGrayScale = False
    end
    object DxBLbuttonEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Enabled = False
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 299
      OnClick = Btn_EditarClick
      AutoGrayScale = False
    end
    object DxBLbuttonEliminar: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Enabled = False
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeImageIndex = 315
      OnClick = Btn_QuitarClick
      AutoGrayScale = False
    end
    object DxBLbuttonActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 643
      OnClick = Btn_RefreshClick
      AutoGrayScale = False
    end
    object DxBLbuttonSalir: TdxBarLargeButton
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      LargeImageIndex = 722
      OnClick = DxBLbuttonSalirClick
      AutoGrayScale = False
    end
    object DxBarBtnNuevaTabla: TdxBarLargeButton
      Caption = '&Nueva Tabla'
      Category = 0
      Hint = 'Nueva Tabla'
      Visible = ivAlways
      LargeImageIndex = 364
      OnClick = Btn_AgregarClick
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 377
    end
  end
end
