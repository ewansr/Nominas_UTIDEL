object FrmComparaRhNomina: TFrmComparaRhNomina
  Left = 0
  Top = 0
  Caption = 'Analizador de guardias'
  ClientHeight = 424
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object groupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'INFORMACION DE LA GUARDIA'
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    DesignSize = (
      804
      58)
    Height = 65
    Width = 804
    object lbl1: TcxLabel
      Left = 3
      Top = 25
      Caption = 'Guardia:'
    end
    object cbb1: TcxExtLookupComboBox
      Left = 54
      Top = 24
      Properties.View = cxDbGridGuardias
      Properties.KeyFieldNames = 'IdPeriodosGuardia'
      Properties.ListFieldItem = grdColumDbGridGuardiasColumn1
      Properties.OnChange = cbb1PropertiesChange
      TabOrder = 1
      Width = 336
    end
    object btn1: TcxButton
      Left = 726
      Top = 27
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Analizar'
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object groupBox2: TcxGroupBox
    Left = 338
    Top = 65
    Align = alRight
    Caption = 'N O M I N A S'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    ExplicitLeft = -14
    ExplicitTop = 71
    Height = 359
    Width = 466
    object cxDBGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 460
      Height = 334
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      ExplicitLeft = 4
      object cxDbGridNominas: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = True
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
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount] registros'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsNomina
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        Styles.OnGetContentStyle = cxDbGridNominasStylesGetContentStyle
        object grdColumDbGridNominasColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonalImss'
          Width = 92
        end
        object grdColumDbGridNominasColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'NombreCompleto'
          Width = 139
        end
        object grdColumDbGridNominasColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'TituloDepartamento'
          Width = 155
        end
        object grdColumDbGridNominasColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'FechaMovimiento'
          Width = 104
        end
        object grdColumDbGridNominasColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'SalarioDiario'
          Width = 111
        end
        object grdColumDbGridNominasColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'SalarioIntegrado'
          Width = 128
        end
        object grdColumDbGridNominasColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
        end
      end
      object CxGridNivelGrid1Level1: TcxGridLevel
        GridView = cxDbGridNominas
      end
    end
  end
  object groupBox3: TcxGroupBox
    Left = 0
    Top = 65
    Align = alClient
    Caption = 'R E C U R S O S    H U M A N O S'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 2
    ExplicitLeft = 488
    ExplicitTop = 71
    Height = 359
    Width = 336
    object cxDBGrid3: TcxGrid
      Left = 3
      Top = 15
      Width = 330
      Height = 334
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      object cxDbGridRH: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount] registros'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsRh
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        Styles.OnGetContentStyle = cxDbGridRHStylesGetContentStyle
        object grdColumDbGridRHColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'NombreCompleto'
          Width = 129
        end
        object grdColumDbGridRHColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'codigopersonal'
          Width = 135
        end
        object grdColumDbGridRHColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'dFechaSubida'
          Width = 114
        end
        object grdColumDbGridRHColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'sIdPlataforma'
          Width = 152
        end
        object grdColumDbGridRHColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
        end
      end
      object CxGridNivel1: TcxGridLevel
        GridView = cxDbGridRH
      end
    end
  end
  object cxspltr1: TcxSplitter
    Left = 336
    Top = 65
    Width = 2
    Height = 359
    AlignSplitter = salRight
    Control = groupBox1
  end
  object pnl1: TPanel
    Left = 168
    Top = 184
    Width = 505
    Height = 49
    TabOrder = 4
    Visible = False
    object lbl2: TcxLabel
      Left = 8
      Top = 8
      Caption = 'Analizando Registros...'
      Transparent = True
    end
  end
  object cxGridRepos1: TcxGridViewRepository
    Left = 416
    Top = 24
    object cxDbGridGuardias: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsGuardias
      DataController.KeyFieldNames = 'IdPeriodosGuardia'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object grdColumDbGridGuardiasColumn1: TcxGridDBColumn
        Caption = 'N'#243'mina'
        DataBinding.FieldName = 'Titulo'
        Width = 200
      end
    end
  end
  object dsGuardias: TDataSource
    DataSet = cdGuardias
    Left = 544
    Top = 24
  end
  object dsRh: TDataSource
    DataSet = cdRh
    Left = 760
    Top = 280
  end
  object dsNomina: TDataSource
    DataSet = cdNomina
    Left = 328
    Top = 256
  end
  object cdGuardias: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 24
  end
  object cdRh: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 280
  end
  object cdNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 256
  end
  object style1: TcxStyleRepository
    Left = 472
    Top = 16
    PixelsPerInch = 96
    object cxstylRed: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxstylGreen: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clGreen
    end
    object cxstylNomal: TcxStyle
    end
    object cxstyl1: TcxStyle
    end
  end
end
