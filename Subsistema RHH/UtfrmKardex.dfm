object frmKardex: TfrmKardex
  Left = 0
  Top = 0
  Caption = 'Monitor de Registros'
  ClientHeight = 411
  ClientWidth = 560
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
  object cxDBGrid1: TcxGrid
    Left = 0
    Top = 53
    Width = 560
    Height = 358
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    ExplicitTop = 0
    ExplicitHeight = 411
    object cxDbGridKardex: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsKardex
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object grdColumDbGridGrid1DBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
      end
      object grdColumDbGridGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Modulo'
        Width = 112
      end
      object grdColumDbGridGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Acci'#243'n'
        DataBinding.FieldName = 'Accion'
        Width = 100
      end
      object grdColumDbGridGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'Descripcion'
        Width = 278
      end
      object grdColumDbGridGrid1DBTableView1Column5: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        Visible = False
        GroupIndex = 0
        Width = 100
      end
    end
    object CxGridNivelGrid1Level1: TcxGridLevel
      GridView = cxDbGridKardex
    end
  end
  object pnlProgress: TPanel
    Tag = 99
    Left = 152
    Top = 256
    Width = 280
    Height = 41
    TabOrder = 5
    Visible = False
    object lblProgress: TLabel
      Left = 120
      Top = 1
      Width = 43
      Height = 13
      Caption = 'Progreso'
    end
    object pbProgress: TProgressBar
      Left = 12
      Top = 20
      Width = 257
      Height = 16
      TabOrder = 0
    end
  end
  object cdKardex: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 136
  end
  object dsKardex: TDataSource
    DataSet = cdKardex
    Left = 400
    Top = 136
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
    ImageOptions.LargeImages = Form2.cxImageResIconosTodos24
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 480
    Top = 96
    DockControlHeights = (
      0
      0
      53
      0)
    object Paneldxbrmngr1Bar1: TdxBar
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 594
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'AdvSmoothButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object AdvSmoothButton1: TdxBarLargeButton
      Caption = 'Exportar'
      Category = 0
      Hint = 'Exportar'
      Visible = ivAlways
      LargeImageIndex = 433
      OnClick = AdvSmoothButton1Click
      AutoGrayScale = False
    end
  end
end
