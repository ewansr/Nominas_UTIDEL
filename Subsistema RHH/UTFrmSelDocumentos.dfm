object FrmSelDocumentos: TFrmSelDocumentos
  Left = 0
  Top = 0
  Caption = 'Selecci'#243'n de Documentos'
  ClientHeight = 322
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ctvDocumentos: TJvCheckTreeView
    Left = 0
    Top = 41
    Width = 616
    Height = 240
    Align = alClient
    Indent = 19
    ReadOnly = True
    TabOrder = 0
    LineColor = clScrollBar
    Checkboxes = True
    CheckBoxOptions.Style = cbsNone
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 41
    Align = alTop
    TabOrder = 1
    object JvLabel1: TJvLabel
      Left = 8
      Top = 14
      Width = 181
      Height = 13
      Caption = 'Seleccione documentos a este grupo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 281
    Width = 616
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 2
    object Panel3: TPanel
      Left = 7
      Top = 5
      Width = 185
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnAgregar: TAdvGlowButton
        Left = 0
        Top = 0
        Width = 121
        Height = 31
        Align = alLeft
        Caption = 'A&gregar nuevo Documento'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        TabStop = True
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
    object btnAceptar: TAdvGlowButton
      Left = 409
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Aceptar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      TabStop = True
      OnClick = btnAceptarClick
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
    object btnCancelar: TAdvGlowButton
      Left = 509
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      TabStop = True
      OnClick = btnCancelarClick
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
  object CxGridDocumentos: TcxGrid
    Left = 191
    Top = 47
    Width = 417
    Height = 224
    TabOrder = 3
    object CxDbGridDocumentos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAllDocuments
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object CxColumnCheck: TcxGridDBColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
      end
      object CxColumnNombreDoc: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'NombreDocumento'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 131
      end
      object CxColumnOpcional: TcxGridDBColumn
        Caption = 'Obligatorio'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Si'
          'No')
        Width = 114
      end
    end
    object cxLevel1: TcxGridLevel
      GridView = CxDbGridDocumentos
    end
  end
  object dsGrupo: TDataSource
    Left = 184
    Top = 272
  end
  object dsDoctosxGrupo: TDataSource
    Left = 240
    Top = 264
  end
  object cdAllDocuments: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 88
  end
  object dsAllDocuments: TDataSource
    DataSet = cdAllDocuments
    Left = 432
    Top = 136
  end
end
