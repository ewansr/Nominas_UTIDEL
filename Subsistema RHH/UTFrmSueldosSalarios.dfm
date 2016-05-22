object FrmSueldosSalarios: TFrmSueldosSalarios
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Reporte de Sueldos y Salarios'
  ClientHeight = 154
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGBSueldosSalarios: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Seleccione el rango de fechas:'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 154
    Width = 324
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 107
      Align = alBottom
      Ctl3D = False
      ParentCtl3D = False
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Height = 37
      Width = 318
      object CxBtnCancela: TcxButton
        Left = 215
        Top = 9
        Width = 100
        Height = 25
        Align = alCustom
        Caption = 'Cancelar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Blueprint'
        ModalResult = 2
        TabOrder = 1
      end
      object CxBtnGenerar: TcxButton
        Left = 109
        Top = 9
        Width = 100
        Height = 25
        Align = alCustom
        Caption = '&Generar Reporte'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Blueprint'
        ModalResult = 1
        TabOrder = 0
        OnClick = CxBtnGenerarClick
      end
    end
    object CxLbl1: TcxLabel
      Left = 6
      Top = 50
      Caption = 'Inicio:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxLbl2: TcxLabel
      Left = 6
      Top = 76
      Caption = 'T'#233'rmino:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxDateEditFechaInicio: TcxDateEdit
      Left = 100
      Top = 49
      TabOrder = 3
      Width = 217
    end
    object cxDateEditFechaTermino: TcxDateEdit
      Left = 100
      Top = 76
      TabOrder = 4
      Width = 217
    end
    object CxCbbTipoNomina: TcxComboBox
      Left = 100
      Top = 22
      TabOrder = 5
      Width = 217
    end
    object CxLbl3: TcxLabel
      Left = 6
      Top = 23
      Caption = 'Tipo N'#243'mina:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object CdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 112
  end
end
