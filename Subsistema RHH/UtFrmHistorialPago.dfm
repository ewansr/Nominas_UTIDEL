object FrmHistorialPago: TFrmHistorialPago
  Left = 0
  Top = 0
  Caption = 'Historial de N'#243'minas'
  ClientHeight = 387
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 41
    Width = 708
    object cxDateEdit1: TcxDateEdit
      Left = 560
      Top = 14
      TabOrder = 0
      Width = 145
    end
  end
  object Panel2: TcxGroupBox
    Left = 0
    Top = 41
    Align = alClient
    Caption = '< TODOS LAS NOMINAS >'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    Height = 346
    Width = 708
    object cxDBGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 702
      Height = 321
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      object cxDbGridHistorialPago: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsHistorialPago
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        object grdColumDbGridHistorialPagoColumn1: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'UltimoProceso'
        end
        object grdColumDbGridHistorialPagoColumn2: TcxGridDBColumn
          Caption = 'N'#243'mina'
          DataBinding.FieldName = 'TituloNomina'
        end
        object grdColumDbGridHistorialPagoColumn3: TcxGridDBColumn
          Caption = 'Tipo N'#243'mina'
          DataBinding.FieldName = 'TipoNomina'
        end
        object grdColumDbGridHistorialPagoColumn4: TcxGridDBColumn
          Caption = 'Nombre Empleado'
          DataBinding.FieldName = 'NombreCompleto'
        end
        object grdColumDbGridHistorialPagoColumn5: TcxGridDBColumn
          Caption = 'Importe'
          DataBinding.FieldName = 'importe'
          PropertiesClassName = 'TcxTextEditProperties'
        end
      end
      object CxGridNivelGrid1Level1: TcxGridLevel
        GridView = cxDbGridHistorialPago
      end
    end
  end
  object cdHistorialPago: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 256
  end
  object dsHistorialPago: TDataSource
    DataSet = cdHistorialPago
    Left = 648
    Top = 256
  end
end
