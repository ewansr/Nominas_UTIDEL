object FrmSeleccionSalMultiple: TFrmSeleccionSalMultiple
  Left = 0
  Top = 0
  Caption = 'Selecci'#243'n de Salarios M'#250'ltiples'
  ClientHeight = 319
  ClientWidth = 602
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
  object Splitter1: TSplitter
    Left = 0
    Top = 141
    Width = 602
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -1
    ExplicitTop = 226
    ExplicitWidth = 376
  end
  object Panel1: TPanel
    Left = 0
    Top = 278
    Width = 602
    Height = 41
    Align = alBottom
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 0
    object Btn_Aceptar: TAdvGlowButton
      AlignWithMargins = True
      Left = 386
      Top = 8
      Width = 100
      Height = 25
      Align = alRight
      Caption = '&Seleccionar'
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
      ExplicitLeft = 395
      ExplicitTop = 5
      ExplicitHeight = 31
    end
    object Btn_Cancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 492
      Top = 8
      Width = 100
      Height = 25
      Align = alRight
      Caption = '&Cancelar'
      ModalResult = 2
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
      ExplicitLeft = 495
      ExplicitTop = 5
      ExplicitHeight = 31
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 144
    Width = 602
    Height = 134
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object GridSalario: TNextDBGrid
      Left = 0
      Top = 29
      Width = 602
      Height = 105
      Align = alClient
      TabOrder = 0
      TabStop = True
      OnEnter = GridSalarioEnter
      OnSelectCell = GridSalarioSelectCell
      DataSource = dsSalariosIndep
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo Salario'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'TituloSalario'
      end
      object NxDBNumberColumn2: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Salario Diario'
        ParentFont = False
        Position = 1
        SortType = stNumeric
        FieldName = 'Salario'
        Precision = 0
        Increment = 1.000000000000000000
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 602
      Height = 29
      Align = alTop
      TabOrder = 1
      object JvLabel1: TJvLabel
        Left = 8
        Top = 11
        Width = 121
        Height = 13
        Caption = 'Salarios Independientes:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object PnlSeleccionado: TPanel
        Left = 134
        Top = 1
        Width = 467
        Height = 27
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 141
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 2
    object GridRango: TNextDBGrid
      Left = 1
      Top = 30
      Width = 600
      Height = 110
      Align = alClient
      TabOrder = 0
      TabStop = True
      OnEnter = GridRangoEnter
      OnSelectCell = GridRangoSelectCell
      DataSource = dsRangoSalarios
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 200
        FieldName = 'Titulo'
      end
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Importe'
        ParentFont = False
        Position = 1
        SortType = stNumeric
        FieldName = 'Importe'
        FormatMask = '#,###,###,##0.00'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object nxdbtxtclmnAplicacion: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Aplicaci'#243'n'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        FieldName = 'FechaAplicacion'
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 600
      Height = 29
      Align = alTop
      Alignment = taLeftJustify
      Caption = '  Rangos de Salarios:'
      TabOrder = 1
    end
  end
  object dsRangoSalarios: TDataSource
    Left = 272
    Top = 72
  end
  object dsSalariosIndep: TDataSource
    Left = 184
    Top = 168
  end
end
